<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Installation script for new blog
 *
 * @author No-CMS Module Generator
 */
class Install extends CMS_Module_Installer {
    /////////////////////////////////////////////////////////////////////////////
    // Default Variables
    /////////////////////////////////////////////////////////////////////////////

    protected $DEPENDENCIES = array();
    protected $NAME         = 'gofrendi.noCMS.blog';
    protected $DESCRIPTION  = 'Write articles, upload photos, allow visitors to give comments, rule the world...';
    protected $VERSION      = '0.0.0';


    /////////////////////////////////////////////////////////////////////////////
    // Default Functions
    /////////////////////////////////////////////////////////////////////////////

    // ACTIVATION
    protected function do_activate(){
        $this->remove_all();
        $this->build_all();
    }

    // DEACTIVATION
    protected function do_deactivate(){
        $module_path = $this->cms_module_path();

        $this->backup_database(array(
            $this->cms_complete_table_name('article'),
            $this->cms_complete_table_name('category'),
            $this->cms_complete_table_name('category_article'),
            $this->cms_complete_table_name('comment'),
            $this->cms_complete_table_name('photo')
        ));
        $this->remove_all();
    }

    // UPGRADE
    protected function do_upgrade($old_version){
        // Add your migration logic here.
    }

    // OVERRIDE THIS FUNCTION TO PROVIDE "Module Setting" FEATURE
    public function setting(){
        $module_directory = $this->cms_module_path();
        $data = array();
        $data['IS_ACTIVE'] = $this->IS_ACTIVE;
        $data['module_directory'] = $module_directory;
        if(!$this->IS_ACTIVE){
            // get setting
            $module_table_prefix = $this->input->post('module_table_prefix');
            $module_prefix       = $this->input->post('module_prefix');
            // set values
            if(isset($module_table_prefix) && $module_table_prefix !== FALSE){
                cms_module_config($module_directory, 'module_table_prefix', $module_table_prefix);
            }
            if(isset($module_prefix) && $module_prefix !== FALSE){
                cms_module_prefix($module_directory, $module_prefix);
            }
            // get values
            $data['module_table_prefix'] = cms_module_config($module_directory, 'module_table_prefix');
            $data['module_prefix']       = cms_module_prefix($module_directory);
        }
        $this->view($module_directory.'/install_setting', $data, 'main_module_management');
    }

    /////////////////////////////////////////////////////////////////////////////
    // Private Functions
    /////////////////////////////////////////////////////////////////////////////

    // REMOVE ALL NAVIGATIONS, WIDGETS, AND PRIVILEGES
    private function remove_all(){
        $module_path = $this->cms_module_path();

        // remove widgets
        $this->remove_widget($this->cms_complete_navigation_name('newest_article'));
        $this->remove_widget($this->cms_complete_navigation_name('article_category'));

        // remove quicklinks
        $this->remove_quicklink($this->cms_complete_navigation_name('index'));

        // remove navigations
        $this->remove_navigation($this->cms_complete_navigation_name('manage_category'));
        $this->remove_navigation($this->cms_complete_navigation_name('manage_article'));


        // remove parent of all navigations
        $this->remove_navigation($this->cms_complete_navigation_name('index'));

        // import uninstall.sql
        $this->import_sql(BASEPATH.'../modules/'.$module_path.
            '/assets/db/uninstall.sql');

    }

    // CREATE ALL NAVIGATIONS, WIDGETS, AND PRIVILEGES
    private function build_all(){
        $module_path = $this->cms_module_path();

        // parent of all navigations
        $this->add_navigation($this->cms_complete_navigation_name('index'), 'Blog',
            $module_path.'/blog', $this->PRIV_EVERYONE);

        // add navigations
        $this->add_navigation($this->cms_complete_navigation_name('manage_article'), 'Manage Article',
            $module_path.'/manage_article', $this->PRIV_AUTHORIZED, $this->cms_complete_navigation_name('index')
        );
        $this->add_navigation($this->cms_complete_navigation_name('manage_category'), 'Manage Category',
            $module_path.'/manage_category', $this->PRIV_AUTHORIZED, $this->cms_complete_navigation_name('index')
        );

        $this->add_quicklink($this->cms_complete_navigation_name('index'));

        $this->add_widget($this->cms_complete_navigation_name('newest_article'), 'Newest Articles',
            $this->PRIV_EVERYONE, $module_path.'/widget/newest','sidebar');
        $this->add_widget($this->cms_complete_navigation_name('article_category'), 'Categories',
            $this->PRIV_EVERYONE, $module_path.'/widget/category','sidebar');


        // import install.sql
        $this->import_sql(BASEPATH.'../modules/'.$module_path.
            '/assets/db/install.sql');
    }

    // IMPORT SQL FILE
    private function import_sql($file_name){
        $this->execute_SQL(file_get_contents($file_name), '/*split*/');
    }

    // EXPORT DATABASE
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