<?php
class Generator extends CMS_Controller{
    private $project_id;
    private $project_name;
    private $project_db_server;
    private $project_db_schema;
    private $project_db_port;
    private $project_db_password;
    private $project_db_user;
    private $project_db_table_prefix;
    private $project_options;
    private $project_path;
    private $tables;
    private $save_project_name;
    private $config_table_prefix;
    private $config_module_prefix;

	public function __construct(){
		parent::__construct();
        $this->load->helper('inflector');
		$this->load->library('nordrassil/NordrassilLib');
		$this->nds = new NordrassilLib();
	}

    private function array_to_quoted_string($array, $key=NULL){
        return $this->array_to_string($array, $key, $element_prefix = '\'', $element_suffix = '\'');
    }

    private function array_to_string($array, $key=NULL, $element_prefix = '', $element_suffix = ''){
        if(isset($key)){
            $new_array = array();
            foreach($array as $element){
                $new_array[] = $element_prefix.$element[$key].$element_suffix;
            }
            $array = $new_array;
        }
        return implode(', ', $new_array);
    }

    private function php_class_file_name($class_name, $without_extension = FALSE){
        $file_name = underscore(humanize($class_name));
        if(!$without_extension){
            $file_name .= '.php';
        }
        return $file_name;
    }

    private function front_navigation_name($stripped_table_name){
        return 'browse_'.underscore($stripped_table_name);
    }

    private function back_navigation_name($stripped_table_name){
        return 'manage_'.underscore($stripped_table_name);
    }

    private function front_controller_class_name($stripped_table_name){
        $controller_name = 'Browse_'.str_replace(' ', '_', humanize($stripped_table_name));
        return $controller_name;
    }
    private function back_controller_class_name($stripped_table_name){
        $controller_name = 'Manage_'.str_replace(' ', '_', humanize($stripped_table_name));
        return $controller_name;
    }
    private function front_model_class_name($stripped_table_name){
        $controller_name = str_replace(' ', '_', humanize($stripped_table_name)).'_Model';
        return $controller_name;
    }
    private function back_model_class_name($stripped_table_name){
        $controller_name = str_replace(' ', '_', 'GroceryCrud_'.humanize($stripped_table_name)).'_Model';
        return $controller_name;
    }

    private function front_controller_file_name($stripped_table_name, $without_extension = FALSE){
        return $this->php_class_file_name($this->front_controller_class_name($stripped_table_name), $without_extension);
    }
    private function back_controller_file_name($stripped_table_name, $without_extension = FALSE){
        return $this->php_class_file_name($this->back_controller_class_name($stripped_table_name), $without_extension);
    }
    private function front_model_file_name($stripped_table_name, $without_extension = FALSE){
        return $this->php_class_file_name($this->front_model_class_name($stripped_table_name), $without_extension);
    }
    private function back_model_file_name($stripped_table_name, $without_extension = FALSE){
        return $this->php_class_file_name($this->back_model_class_name($stripped_table_name), $without_extension);
    }
    private function front_view_file_name($stripped_table_name, $without_extension = FALSE){
        return $this->php_class_file_name($this->front_controller_class_name($stripped_table_name).'_view', $without_extension);
    }
    private function front_view_partial_file_name($stripped_table_name, $without_extension = FALSE){
        return $this->php_class_file_name($this->front_controller_class_name($stripped_table_name).'_partial_view', $without_extension);
    }
    private function back_view_file_name($stripped_table_name, $without_extension = FALSE){
        return $this->php_class_file_name($this->back_controller_class_name($stripped_table_name).'_view', $without_extension);
    }

	public function index($project_id){
		$projects = $this->nds->get_project($project_id);
        $this->project_id = $project_id;
		$this->project_name = $projects['name'];
        $this->save_project_name = underscore($this->project_name);
		$this->project_db_server = $projects['db_server'];
		$this->project_db_schema = $projects['db_schema'];
		$this->project_db_port = $projects['db_port'];
		$this->project_db_password = $projects['db_password'];
		$this->project_db_user = $projects['db_user'];
        $this->project_db_table_prefix = $projects['db_table_prefix'];
		$this->project_options = $projects['options'];
		$this->tables = $projects['tables'];
        $this->project_path = dirname(BASEPATH).'/modules/'.underscore($this->project_name).'/';
        $table_prefix_length = strlen($this->project_db_table_prefix);
        if($table_prefix_length==0){
            $stripped_table_prefix = '';
        }else{
            $stripped_table_prefix = ($this->project_db_table_prefix[$table_prefix_length-1] == '_') ?
                substr($this->project_db_table_prefix, 0, $table_prefix_length-1) : $this->project_db_table_prefix;
        }
        $this->config_table_prefix = $stripped_table_prefix;
        $this->config_module_prefix = underscore($this->project_name);

		// Check tables information (blame user before user blame us :D)
		$success = TRUE;
		$message = '';
		foreach($this->tables as $table){
			$table_name = $table['name'];
			$options = $table['options'];
			$columns = $table['columns'];
			$dont_make_form = $options['dont_make_form'];
			// check primary key
			$primary_key_exists = FALSE;
			foreach($columns as $column){
				$column_name = $column['name'];

				if($column['role']=='primary' || $column['role']=='lookup' || $column['role'] == ''){
					if($column['data_type'] == ''){
						$success = FALSE;
						$message .= $table_name.'.'.$column_name.' doesn\'t have data type<br />'.PHP_EOL;
					}
					if($column['role']=='primary'){
						$primary_key_exists = TRUE;
						if(!in_array($column['data_type'],$this->nds->auto_increment_data_type)){
							$success = FALSE;
							$message .= $table_name.'.'.$column_name.' should be int, smallint, or longint<br />'.PHP_EOL;
						}
					}else if($column['role'] == 'lookup'){
						if($column['lookup_table_name'] == '' || $column['lookup_column_name'] == ''){
							$success = FALSE;
							$message .= $table_name.'.'.$column_name.' doesn\'t have lookup table name or lookup column name<br />'.PHP_EOL;
						}
					}
				}else if($column['role'] == 'detail many to many'){
					if($column['relation_table_name'] == '' || $column['relation_table_column_name'] == '' || $column['relation_selection_column_name'] == '' ||
						$column['selection_table_name'] == '' || $column['selection_column_name'] == ''
					){
						$success = FALSE;
						$message .= $table_name.'.'.$column_name.' doesn\'t have complete information<br />'.PHP_EOL;
					}
				}else if($column['role'] == 'detail one to many'){
					if($column['relation_table_name'] == '' || $column['relation_table_column_name'] == ''){
						$success = FALSE;
						$message .= $table_name.'.'.$column_name.' doesn\'t have complete information<br />'.PHP_EOL;
					}
				}
			}
			if(!$primary_key_exists){
				$one_to_many_exists = FALSE;
				foreach($this->tables as $other_table){
					if($other_table['name'] == $table_name) continue;
					foreach($other_table['columns'] as $other_column){
						if($other_column['role'] == 'detail one to many' && $other_column['relation_table_name'] == $table_name){
							$one_to_many_exists = TRUE;
							break;
						}
					}
					if($one_to_many_exists) break;
				}
				// one to many exists
				if(!$dont_make_form || $one_to_many_exists){
					$success = FALSE;
					$message .= $table_name.' doesn\'t have primary key<br />'.PHP_EOL;
				}
			}
		}
		if($success){
			$this->load->helper('inflector');
			$project_path = dirname(BASEPATH).'/modules/'.underscore($this->project_name).'/';

			$this->create_directory();
            $this->create_config();
			$this->create_install_db_file();
			$this->create_uninstall_db_file();
			$this->create_installer();
			$this->create_main_controller_and_view();
			$this->create_back_controller_and_view();
			$this->create_front_controller_and_view();
		}

		if($this->input->is_ajax_request()){
			$response = array('success'=>$success, 'message'=>$message);
			$this->cms_show_json($response);
		}else{
			$this->cms_show_variable($projects);
		}
	}

	private function create_front_controller_and_view(){
		// filter tables, just the everything without "dont_make_form" option
		$selected_tables = array();
		for($i=0; $i<count($this->tables); $i++){
			$table = $this->tables[$i];
			if($table['options']['make_frontpage']){
				$selected_tables[] = $table;
			}
		}
		$tables = $selected_tables;

		$this->load->helper('inflector');
		// get save_project_name
		$save_project_name = underscore($this->project_name);
		foreach($tables as $table){
			$table_name = $table['name'];
            $stripped_table_name = $table['stripped_name'];
			$table_caption = $table['caption'];
			$controller_name = $this->front_controller_class_name($stripped_table_name);
            $model_name = $this->front_model_class_name($stripped_table_name);
			$navigation_name = $this->front_navigation_name($stripped_table_name);
			$backend_navigation_name = $this->back_navigation_name($stripped_table_name);
			$columns = $table['columns'];

			$pattern = array(
				'project_name',
				'controller_name',
				'model_name',
				'table_name',
				'navigation_name',
				'table_caption',
				'backend_navigation_name',
				'front_view_import_name',
				'front_view_partial_import_name',
				'front_model_import_name',
				'front_controller_import_name',
				'back_controller_import_name',
			);
			$replacement = array(
				$save_project_name,
				$controller_name,
				$model_name,
				$stripped_table_name,
				$navigation_name,
				$table_caption,
				$backend_navigation_name,
				underscore(humanize($this->front_view_file_name($stripped_table_name, TRUE))),
				underscore(humanize($this->front_view_partial_file_name($stripped_table_name, TRUE))),
				underscore(humanize($this->front_model_class_name($stripped_table_name))),
				underscore(humanize($this->front_controller_class_name($stripped_table_name))),
				underscore(humanize($this->back_controller_class_name($stripped_table_name))),
			);
			// prepare data
			$data = array(
				'table_name' => $stripped_table_name,
				'columns' => $columns,
				'table_prefix' => $this->project_db_table_prefix,
			);
			// controller
			$str = $this->nds->read_view('nordrassil/default_generator/front_controller.php',$data,$pattern,$replacement);
			$this->nds->write_file($this->project_path.'controllers/'.$this->front_controller_file_name($stripped_table_name), $str);
			// model
			$str = $this->nds->read_view('nordrassil/default_generator/front_model.php',$data,$pattern,$replacement);
			$this->nds->write_file($this->project_path.'models/'.$this->front_model_file_name($stripped_table_name), $str);
			// main view
			$str = $this->nds->read_view('nordrassil/default_generator/front_view.php',$data,$pattern,$replacement);
			$this->nds->write_file($this->project_path.'views/'.$this->front_view_file_name($stripped_table_name), $str);
			// partial view
			$str = $this->nds->read_view('nordrassil/default_generator/front_view_partial.php',$data,$pattern,$replacement);
			$this->nds->write_file($this->project_path.'views/'.$this->front_view_partial_file_name($stripped_table_name), $str);
		}

	}

	private function create_back_controller_and_view(){
	    // filter tables, just the everything without "dont_make_form" option
		$all_tables = $this->tables;
		$selected_tables = array();
		for($i=0; $i<count($this->tables); $i++){
			$table = $this->tables[$i];
			if(!$table['options']['dont_make_form']){
				$selected_tables[] = $table;
			}
		}
		$tables = $selected_tables;

		$this->load->helper('inflector');
		// get save_project_name
		$save_project_name = underscore($this->project_name);
		foreach($tables as $table){
			$table_name = $table['name'];
            $stripped_table_name = $table['stripped_name'];
			$table_caption = $table['caption'];
			$table_make_frontpage = $table['options']['make_frontpage'];
			$save_table_name = underscore($table_name);
			$navigation_name = $this->back_navigation_name($stripped_table_name);
			$columns = $table['columns'];
			// get field_list and display_as command
			$field_list_array = array();
			$display_as_array = array();
			$set_relation_array = array();
			$set_relation_n_n_array = array();
			$hide_field_array = array();
			$enum_set_array = array();
			$detail_callback_call_array = array();
			$detail_callback_declaration_array = array();
			$detail_before_delete_array = array();
			$detail_after_insert_or_update_array = array();
			foreach($columns as $column){
				if($column['role']=='primary') continue;
				$column_name = $column['name'];
				$column_caption = $column['caption'];
				// field_list
				$field_list_array[] = '\''.$column['name'].'\'';
				// display_as
				$display_as_array[] = $this->nds->read_view('nordrassil/default_generator/controller_partial/display_as',NULL,
					array('column_name', 'column_caption'),
					array($column_name, $column_caption)
				);
				// set_relation
				if($column['role']=='lookup'){
					$lookup_table_name = $column['lookup_table_name'];
                    $lookup_stripped_table_name = $column['lookup_stripped_table_name'];
					$lookup_column_name = $column['lookup_column_name'];
					$set_relation_array[] = $this->nds->read_view('nordrassil/default_generator/controller_partial/set_relation',NULL,
						array('field_name', 'lookup_table_name', 'lookup_field_name'),
						array($column_name, $lookup_stripped_table_name, $lookup_column_name)
					);
				}
				// set_relation_n_n
				if($column['role']=='detail many to many'){
					$relation_table_name = $column['relation_table_name'];
                    $relation_stripped_table_name = $column['relation_stripped_table_name'];
					$selection_table_name = $column['selection_table_name'];
                    $selection_stripped_table_name = $column['selection_stripped_table_name'];
					$relation_table_column_name = $column['relation_table_column_name'];
					$relation_selection_column_name = $column['relation_selection_column_name'];
					$selection_column_name = $column['selection_column_name'];
					$relation_priority_column_name = $column['relation_priority_column_name'];
					if($relation_priority_column_name==''){
						$relation_priority_column_name = 'NULL';
					}else{
						$relation_priority_column_name = '\''.$relation_priority_column_name.'\'';
					}
					$set_relation_n_n_array[] = $this->nds->read_view('nordrassil/default_generator/controller_partial/set_relation_n_n',NULL,
						array('field_name', 'relation_table_name', 'selection_table_name', 'relation_table_field_name',
							'relation_selection_field_name', 'selection_field_name', 'relation_priority_field_name'
						),
						array($column_name, $relation_stripped_table_name, $selection_stripped_table_name, $relation_table_column_name,
							$relation_selection_column_name, $selection_column_name, $relation_priority_column_name
						)
					);
				}
				// hide_field
				if($column['options']['hide']){
					$hide_field_array[] = $this->nds->read_view('nordrassil/default_generator/controller_partial/hide_field',NULL,
						'field_name',$column_name
					);
				}
				// enum or set
				if($column['value_selection_mode'] != ''){
					$value_selection_mode = $column['value_selection_mode'];
					$value_selection_item = $column['value_selection_item'];
					$enum_set_array[] = $this->nds->read_view('nordrassil/default_generator/controller_partial/enum_set_field',NULL,
						array('field_name', 'value_selection_mode', 'value_selection_item'),
						array($column_name, $value_selection_mode, $value_selection_item)
					);
				}
				// detail (one to many) field
				if($column['role']=='detail one to many'){
					$detail_table_name = $column['relation_table_name'];
                    $detail_stripped_table_name = $column['relation_stripped_table_name'];
					$detail_foreign_key_name = $column['relation_table_column_name'];
					$detail_primary_key_name = '';
					$detail_table = array();
					foreach($all_tables as $detail_table_candidate){
						if($detail_table_candidate['name'] == $column['relation_table_name']){
							$detail_table = $detail_table_candidate;
							$detail_columns = $detail_table['columns'];
							foreach($detail_columns as $detail_column){
								if($detail_column['role']=='primary'){
									$detail_primary_key_name = $detail_column['name'];
									break;
								}
							}
							break;
						}
					}
					$master_primary_key_name = '';
					foreach($columns as $primary_key_candidate){
						if($primary_key_candidate['role']=='primary'){
							$master_primary_key_name = $primary_key_candidate['name'];
							break;
						}
					}
					$data = array(
						'project_name' => $save_project_name,
						'stripped_master_table_name' => $stripped_table_name,
						'master_table_name' => $stripped_table_name,
						'master_column_name' => $column_name,
						'master_primary_key_name' => $master_primary_key_name,
						'detail_table_name' => $detail_stripped_table_name,
						'detail_foreign_key_name' => $detail_foreign_key_name,
						'detail_primary_key_name' => $detail_primary_key_name,
						'detail_table' => $detail_table,
					);
					$detail_callback_call_array[] = $this->nds->read_view('nordrassil/default_generator/controller_partial/detail_callback_call',
						$data,
						'field_name',$column_name
					);
					$detail_callback_declaration_array[] = $this->nds->read_view('nordrassil/default_generator/controller_partial/detail_callback_declaration',
						NULL,
						'field_name',$column_name
					);
					// detail after insert_or_update
					$detail_after_insert_or_update_array[] = $this->nds->read_view('nordrassil/default_generator/controller_partial/detail_after_insert_or_update',
						$data
					);
					// detail before_delete
					$detail_before_delete_array[] = $this->nds->read_view('nordrassil/default_generator/controller_partial/detail_before_delete',
						$data
					);
					// view
					$str = $this->nds->read_view('nordrassil/default_generator/callback_field_view', $data);
					$this->nds->write_file($this->project_path.'views/field_'.underscore($stripped_table_name).'_'.underscore($column_name).'.php', $str);
				}
			}
			$field_list = implode(',',$field_list_array);
			$display_as = implode(PHP_EOL, $display_as_array);
			$set_relation = implode(PHP_EOL, $set_relation_array);
			$set_relation_n_n = implode(PHP_EOL, $set_relation_n_n_array);
			$hide_field = implode(PHP_EOL, $hide_field_array);
			$enum_set_field = implode(PHP_EOL, $enum_set_array);
			$detail_callback_call = implode(PHP_EOL, $detail_callback_call_array);
			$detail_callback_declaration = implode(PHP_EOL, $detail_callback_declaration_array);
			$detail_before_delete = implode(PHP_EOL, $detail_before_delete_array);
			$detail_after_insert_or_update = implode(PHP_EOL, $detail_after_insert_or_update_array);
			// create pattern & replacement
			$pattern = array(
				'navigation_name',
				'table_name',
				'table_caption',
				'controller_name',
				'model_name',
				'model_import_name',
				'view_import_name',
				'field_list',
				'display_as',
				'set_relation',
				'set_relation_n_n',
				'hide_field',
				'enum_set_field',
				'directory',
				'detail_callback_call',
				'detail_callback_declaration',
				'detail_before_delete',
				'detail_after_insert_or_update'
			);
			$replacement = array(
				$this->back_navigation_name($stripped_table_name),
				$stripped_table_name,
				$table_caption,
				$this->back_controller_class_name($stripped_table_name),
				$this->back_model_class_name($stripped_table_name),
				$this->back_model_file_name($stripped_table_name, TRUE),
				$this->back_view_file_name($stripped_table_name, TRUE),
				$field_list,
				$display_as,
				$set_relation,
				$set_relation_n_n,
				$hide_field,
				$enum_set_field,
				$save_project_name,
				$detail_callback_call,
				$detail_callback_declaration,
				$detail_before_delete,
				$detail_after_insert_or_update,
			);
			// controllers
			$str = $this->nds->read_view('nordrassil/default_generator/back_controller.php',NULL,$pattern,$replacement);
			$this->nds->write_file($this->project_path.'controllers/'.$this->back_controller_file_name($stripped_table_name), $str);
			// models
			$str = $this->nds->read_view('nordrassil/default_generator/back_model.php',NULL,$pattern,$replacement);
			$this->nds->write_file($this->project_path.'models/'.$this->back_model_file_name($stripped_table_name), $str);
			// views
			$data = array(
				'make_frontpage'=>$table_make_frontpage,
				'front_controller_import_name' => underscore(humanize($this->front_controller_class_name($table_name))),
			);
			$str = $this->nds->read_view('nordrassil/default_generator/back_view.php',$data,$pattern,$replacement);
			$this->nds->write_file($this->project_path.'views/'.$this->back_view_file_name($stripped_table_name), $str);

		}

	}

	private function create_main_controller_and_view(){
		$pattern = array(
			'navigation_parent_name',
			'directory',
			'main_controller',
			'project_name',
		);
		$replacement = array(
			'index',
			underscore($this->project_name),
			underscore($this->project_name),
			$this->project_name,
		);
		// main controller
		$str = $this->nds->read_view('nordrassil/default_generator/main_controller', NULL, $pattern, $replacement);
		$this->nds->write_file($this->project_path.'controllers/'.underscore($this->project_name).'.php', $str);
		// main view
		$str = $this->nds->read_view('nordrassil/default_generator/main_view', NULL, $pattern, $replacement);
		$this->nds->write_file($this->project_path.'views/'.underscore($this->project_name).'_index.php', $str);
	}

	private function create_installer(){
		$project_path = $this->project_path;
        $tables = $this->tables;
        $project_name = $this->project_name;

        ////////////////////////////////////////////////////////////////
		// REMOVE NAVIGATIONS
		////////////////////////////////////////////////////////////////
		$remove_back_navigations = '';
		$remove_front_navigations = '';
		foreach(array_reverse($tables) as $table){
			$table_name = $table['name'];
            $stripped_table_name = $table['stripped_name'];
			$pattern =   array(
                    'front_navigation_name',
                    'back_navigation_name',
                );
            $replacement = array(
                    $this->front_navigation_name($stripped_table_name),
                    $this->back_navigation_name($stripped_table_name),
                );
			// back
			if(!$table['options']['dont_make_form']){
				$str = $this->nds->read_view('nordrassil/default_generator/install_partial/remove_back_navigation',NULL,
					$pattern, $replacement
				);
				$remove_back_navigations .= $str.PHP_EOL;
			}
			// front
			if($table['options']['make_frontpage']){
				$str = $this->nds->read_view('nordrassil/default_generator/install_partial/remove_front_navigation',NULL,
					$pattern, $replacement);
				$remove_front_navigations .= $str.PHP_EOL;
			}
		}
		$remove_navigations = $remove_front_navigations.$remove_back_navigations;

		////////////////////////////////////////////////////////////////
        // ADD NAVIGATIONS
        ////////////////////////////////////////////////////////////////
		$add_back_navigations = '';
		$add_front_navigations = '';
		foreach($tables as $table){
			$table_name = $table['name'];
            $stripped_table_name = $table['stripped_name'];
            $table_caption = $table['caption'];
			$pattern = 	array(
					'front_navigation_name',
					'back_navigation_name',
					'front_controller_name',
					'back_controller_name',
					'table_caption',
					'navigation_parent_name',
				);
			$replacement = array(
					$this->front_navigation_name($stripped_table_name),
					$this->back_navigation_name($stripped_table_name),
					underscore(humanize($this->front_controller_class_name($stripped_table_name))),
					underscore(humanize($this->back_controller_class_name($stripped_table_name))),
					$table_caption,
					'index',
				);
			// back
			if(!$table['options']['dont_make_form']){
				$str = $this->nds->read_view('nordrassil/default_generator/install_partial/add_back_navigation',NULL,
					$pattern, $replacement);
				$add_back_navigations .= $str.PHP_EOL;
			}
			// front
			if($table['options']['make_frontpage']){
				$str = $this->nds->read_view('nordrassil/default_generator/install_partial/add_front_navigation',NULL,
					$pattern, $replacement);
				$add_front_navigations .= $str.PHP_EOL;
			}
		}
		$add_navigations = $add_front_navigations.$add_back_navigations;

        ////////////////////////////////////////////////////////////////
        // CREATE INSTALLER
        ////////////////////////////////////////////////////////////////
        $backup_table_list = array();
        foreach($tables as $table){
            $table_name = $table['name'];
            $stripped_table_name = $table['stripped_name'];
            $backup_table_list[] = '$this->cms_complete_table_name(\''.$stripped_table_name.'\')';
        }
        $backup_table = implode(','.PHP_EOL.'            ', $backup_table_list);
		$pattern = array(
			'namespace',
			'table_list',
			'navigation_parent_name',
			'remove_navigations',
			'add_navigations',
			'main_controller',
			'project_name',
			'save_project_name',
			'project_caption',
		);
		$replacement = array(
			underscore($this->cms_user_name()).'.'.underscore($this->project_name),
			$backup_table,
			'index',
			$remove_navigations,
			$add_navigations,
			underscore($this->project_name),
			$this->project_name,
			underscore($this->project_name),
			humanize($this->project_name),
		);
		$str = $this->nds->read_view('default_generator/install', NULL, $pattern, $replacement);
		$this->nds->write_file($project_path.'controllers/install.php', $str);

        $str = $this->nds->read_view('default_generator/install_setting_view', NULL, $pattern, $replacement);
        $this->nds->write_file($project_path.'views/install_setting.php', $str);
	}

    private function create_config(){
        ////////////////////////////////////////////////////////////////
        // create config
        ////////////////////////////////////////////////////////////////
        $pattern = array('table_prefix', 'module_prefix');
        $replacement = array($this->config_table_prefix, $this->config_module_prefix);
        $str = $this->nds->read_view('default_generator/module_config', NULL, $pattern, $replacement);
        $this->nds->write_file($this->project_path.'config/module_config.php', $str);
    }

	private function create_directory(){
		// prepare directory
		$this->nds->make_directory($this->project_path);
		$this->nds->make_directory($this->project_path.'assets/');
		$this->nds->make_directory($this->project_path.'assets/db/');
		$this->nds->make_directory($this->project_path.'assets/languages/');
		$this->nds->make_directory($this->project_path.'assets/navigation_icon/');
		$this->nds->make_directory($this->project_path.'assets/scripts/');
		$this->nds->make_directory($this->project_path.'assets/styles/');
		$this->nds->make_directory($this->project_path.'assets/images/');
		$this->nds->make_directory($this->project_path.'controllers/');
		$this->nds->make_directory($this->project_path.'models/');
		$this->nds->make_directory($this->project_path.'views/');
        $this->nds->make_directory($this->project_path.'helpers/');
        $this->nds->make_directory($this->project_path.'libraries/');
        $this->nds->make_directory($this->project_path.'config/');
		// create htaccess
		$str = $this->nds->read_view('default_generator/htaccess');
		$this->nds->write_file($this->project_path.'assets/db/.htaccess', $str);
		$this->nds->write_file($this->project_path.'assets/languages/.htaccess', $str);
		$this->nds->write_file($this->project_path.'controllers/.htaccess', $str);
		$this->nds->write_file($this->project_path.'models/.htaccess', $str);
        $this->nds->write_file($this->project_path.'views/.htaccess', $str);
        $this->nds->write_file($this->project_path.'helpers/.htaccess', $str);
        $this->nds->write_file($this->project_path.'libraries/.htaccess', $str);
        $this->nds->write_file($this->project_path.'config/.htaccess', $str);
	}

	private function create_install_db_file(){
	    $project_id = $this->project_id;
        $project_path = $this->project_path;
        $tables = $this->tables;
		// create table syntax
		$selected_tables = array();
		for($i=0; $i<count($tables); $i++){
			$table = $tables[$i];
			if(!$table['options']['dont_create_table']){
				$selected_tables[] = $table;
			}
		}
		$create_table = $this->nds->get_create_table_syntax($selected_tables);
		// insert table syntax
		$selected_tables = array();
		for($i=0; $i<count($tables); $i++){
			$table = $tables[$i];
			if($table['options']['import_data']){
				$selected_tables[] = $table;
			}
		}
		$insert_table = $this->nds->get_insert_table_syntax($project_id, $selected_tables);

		$db_arr = array();
		foreach(explode('/*split*/',$create_table) as $item){
			if(trim($item)=='') continue;
			$db_arr[] = $item;
		}
		foreach(explode('/*split*/',$insert_table) as $item){
			if(trim($item)=='') continue;
			$db_arr[] = $item;
		}
		if(count($db_arr)>0){
			$str = implode(PHP_EOL.'/*split*/'.PHP_EOL, $db_arr);
		}else{
			$str = '';
		}
        // define pattern
        if($this->config_table_prefix == ''){
            $pattern = array(
                '/CREATE TABLE `([^`]*)`/si',
                '/INSERT INTO `([^`]*)`/si'
            );
        }else{
            $pattern = array(
                '/CREATE TABLE `'.$this->config_table_prefix.'_([^`]*)`/si',
                '/INSERT INTO `'.$this->config_table_prefix.'_([^`]*)`/si'
            );
        }
        $replacement = array(
            'CREATE TABLE `{{ complete_table_name:${1} }}`',
            'INSERT INTO `{{ complete_table_name:${1} }}`',
        );
        $str = preg_replace($pattern, $replacement, $str);
		$this->nds->write_file($project_path.'assets/db/install.sql', $str);
	}

	private function create_uninstall_db_file(){
	    $project_path = $this->project_path;
        $tables = $this->tables;
		$selected_tables = array();
		for($i=0; $i<count($tables); $i++){
			$table = $tables[$i];
			if(!$table['options']['dont_create_table']){
				$selected_tables[] = $table;
			}
		}
		$str = $this->nds->get_drop_table_syntax($selected_tables);
        // define pattern
        if($this->config_table_prefix == ''){
            $pattern = array(
                '/DROP TABLE IF EXISTS `([^`]*)`/si',
            );
        }else{
            $pattern = array(
                '/DROP TABLE IF EXISTS `'.$this->config_table_prefix.'_([^`]*)`/si',
            );
        }
        $replacement = array(
            'DROP TABLE IF EXISTS `{{ complete_table_name:${1} }}`',
        );
        $str = preg_replace($pattern, $replacement, $str);
		$this->nds->write_file($project_path.'assets/db/uninstall.sql', $str);
	}

}
?>