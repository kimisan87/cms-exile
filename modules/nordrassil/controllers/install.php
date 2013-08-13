<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Installation script for
 *
 * @author No-CMS Module Generator
 */
class Install extends CMS_Module_Installer {
    protected $DEPENDENCIES = array();
    protected $NAME         = 'gofrendi.noCMS.nordrassil';
    protected $DESCRIPTION  = 'A very cool and easy module generator. Choose your database schema, press the magical "generate" button, and enjoy your life';

    //this should be what happen when user install this module
    protected function do_activate(){
        $this->remove_all();
        $this->build_all();
    }
    //this should be what happen when user uninstall this module
    protected function do_deactivate(){
        $this->backup_database(array(
            $this->cms_complete_table_name('template'),
            $this->cms_complete_table_name('template_option'),
            $this->cms_complete_table_name('project'),
            $this->cms_complete_table_name('project_option'),
            $this->cms_complete_table_name('table'),
            $this->cms_complete_table_name('table_option'),
            $this->cms_complete_table_name('column'),
            $this->cms_complete_table_name('column_option')
        ));
        $this->remove_all();
    }

    private function remove_all(){
        $module_path = $this->cms_module_path();

        // remove navigations
        $this->remove_navigation($this->cms_complete_navigation_name('project'));
        $this->remove_navigation($this->cms_complete_navigation_name('template'));

        // remove parent of all navigations
        $this->remove_navigation($this->cms_complete_navigation_name('index'));

        // import uninstall.sql
        $this->import_sql(BASEPATH.'../modules/'.$module_path.
            '/assets/db/uninstall.sql');

    }

    private function build_all(){
        $module_path = $this->cms_module_path();

        // parent of all navigations
        $this->add_navigation($this->cms_complete_navigation_name('index'), "Module Generator",
            $module_path."/nordrassil/index", 4, "main_management");

        // add navigations
        $this->add_navigation($this->cms_complete_navigation_name('template'), "Generator Template",
            $module_path."/data/nds/template", 4, "nordrassil_index"
        );
        $this->add_navigation($this->cms_complete_navigation_name('project'), "Project",
            $module_path."/data/nds/project", 4, "nordrassil_index"
        );


        // import install.sql
        $this->import_sql(BASEPATH.'../modules/'.$module_path.
            '/assets/db/install.sql');

		// install template
		$this->load->library($module_path.'/NordrassilLib');
		$template_name = 'No-CMS default Module';
		$generator_path = 'nordrassil/default_generator/generator/index';
		$project_options = array();
		$table_options = array(
			array('name'=>'dont_make_form', 'description'=>'make form for this table'),
			array('name'=>'dont_create_table', 'description'=>'don\'t create/drop table on installation'),
			array('name'=>'make_frontpage', 'description'=>'Make front page for this table'),
			array('name'=>'import_data', 'description'=>'Also create insert statement (e.g: for configuration table)'),
		);
		$column_options = array(
			array('name'=>'hide', 'description'=>'shown'),
		);
		$this->nordrassillib->install_template($template_name, $generator_path,
			$project_options, $table_options, $column_options);

        // import example.sql
        $this->import_sql(BASEPATH.'../modules/'.$module_path.
            '/assets/db/example.sql');
    }

    // IMPORT SQL FILE
    private function import_sql($file_name){
        $this->execute_SQL(file_get_contents($file_name), '/*split*/');
    }

    private function backup_database($table_names, $limit = 100){
        $module_path = $this->cms_module_path();

        $this->load->dbutil();
        $sql = '';

        // create DROP TABLE syntax
        for($i=count($table_names)-1; $i>=0; $i--){
            $table_name = $table_names[$i];
            $sql .= 'DROP TABLE IF EXISTS `'.$table_name.'`; '.PHP_EOL;
        }
        if($sql !='')$sql.= PHP_EOL;

        // create CREATE TABLE and INSERT syntax
        $prefs = array(
                'tables'      => $table_names,
                'ignore'      => array(),
                'format'      => 'txt',
                'filename'    => 'mybackup.sql',
                'add_drop'    => FALSE,
                'add_insert'  => TRUE,
                'newline'     => PHP_EOL
              );
        $sql.= $this->dbutil->backup($prefs);

        //write file
        $file_name = 'backup_'.date('Y-m-d_G:i:s').'.sql';
        file_put_contents(
                BASEPATH.'../modules/'.$module_path.'/assets/db/'.$file_name,
                $sql
            );

    }
}

?>
