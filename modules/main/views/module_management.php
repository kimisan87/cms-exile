<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<style>
	#message::empty{
        display:none;
    }
    .disabled {
       pointer-events: none;
       cursor: default;
       display: none;
    }
    .module_icon a{
       margin-right:10px;
       margin-top:10px;
    }
</style>
<h3>Module Management</h3>
<?php
    for($i=0; $i<count($modules); $i++){
        $module = $modules[$i];
        $str_status = $module['active']?'module_active':'module_not_active';

        echo '<div class="well span11 row-fluids">';
        echo '<div class="span4 module_icon">';
        echo '<b><i>'.$module['module_path'].'</i></b><br /><br />';
        $image_path = BASEPATH.'../modules/'.$module['module_path'].'/icon.png';
        if(file_exists($image_path)){
            $image_path = base_url('modules/'.$module['module_path'].'/icon.png');
        	echo '<img class="logo" src="'.$image_path.'" />';
        }else{
        	echo '<img class="logo" src="'.base_url('assets/nocms/images/icons/package.png').'" />';
        }
        echo '  <br />';
        echo '  <a id="module_'.$i.'_activate" class="btn btn-mini disabled" href="'.site_url($module['module_path'].'/install/activate').'"><i class="icon-ok"></i>&nbsp;Activate</a>';
        echo '  <a id="module_'.$i.'_upgrade" class="btn btn-mini disabled" href="'.site_url($module['module_path'].'/install/upgrade').'"><i class="icon-arrow-up"></i>&nbsp;Upgrade</a>';
        echo '  <a id="module_'.$i.'_deactivate" class="btn btn-danger btn-mini disabled" href="'.site_url($module['module_path'].'/install/deactivate').'"><i class="icon-remove"></i>&nbsp;Deactivate</a>';
        echo '  <a id="module_'.$i.'_setting" class="btn btn-mini disabled" href="'.site_url($module['module_path'].'/install/setting').'"><i class="icon-wrench"></i>&nbsp;Setting</a>';
        echo '</div>';
        echo '<div class="span8">';
        echo '  <br />';
        echo '  <div id="div_module_'.$i.'_info" class="span12"></div>';
        echo '</div>';
        echo '</div>';
        echo '<script type="text/javascript">';
        echo '$(document).ready(function(){';
        echo '  $.ajax({';
        echo '      url:"'.site_url($module['module_path'].'/install/status').'",';
        echo '      dataType:"json",';
        echo '      success:function(response){';
        echo '          var status = "";';
        echo '          if(response.active){';
        echo '              if(response.old){';
        echo '                  status += "Need upgrade";';
        echo '                  $("#module_'.$i.'_upgrade").removeClass("disabled");';
        echo '              }else{';
        echo '                  status += "Active";';
        echo '                  $("#module_'.$i.'_setting").removeClass("disabled");';
        echo '                  $("#module_'.$i.'_deactivate").removeClass("disabled");';
        echo '              }';
        echo '          }else{';
        echo '              status += "Inactive";';
        echo '              $("#module_'.$i.'_setting").removeClass("disabled");';
        echo '              $("#module_'.$i.'_activate").removeClass("disabled");';
        echo '          }';
        echo '          var html = "";';
        echo '          html += "("+response.name+")<br />";';
        echo '          html += "<p>"+response.description+"</p>";';
        echo '          html += "<strong>Registered Version</strong> : "+response.old_version+" | ";';
        echo '          html += "<strong>Current Version</strong> : "+response.version+" | ";';
        echo '          html += "<strong>Status</strong> : "+status;';
        echo '          ';
        echo '          $("#div_module_'.$i.'_info").html(html);';
        echo '      }';
        echo '  })';
        echo '})';
        echo '</script>';
    }
	echo '<div style="clear:both"></div>';
    if($upload['uploading'] && !$upload['success']){
    	echo '<div id="message" class="alert alert-error">';
    	echo '<b>Error:</b> '.$upload['message'];
    	echo '</div>';
    }
?>
<div style="clear:both; margin: 5px;">
	<form action="<?php echo site_url('main/module_management');?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
		<input type="file" name="userfile" size="20" />
		<br /><br />
		<input name="upload" class="btn btn-primary" type="submit" value="Upload New Module" />
	</form>
</div>

