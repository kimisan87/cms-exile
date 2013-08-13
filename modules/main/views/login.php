<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<style type="text/css">
    #login_message:empty{
        display:none;
    }
</style>
<?php
    echo form_open('main/login');
	?>
	<li><span class="icon-user mid-margin-right" style="padding-left:3px;"></span>
	<input type="text" name="identity" id="login" value="" class="input-unstyled" placeholder="Login" autocomplete="off"></li>
	<li><span class="icon-lock mid-margin-right" style="padding-left:6px;"></span>
	<input type="password" name="password" id="pass" value="" class="input-unstyled" placeholder="Password" autocomplete="off"></li>
					asdasdasdasd		
	<?php
   /* echo form_label('Identity');
    echo form_input('identity', $identity).br();
    echo form_label('Password');
    echo form_password('password').br();
    echo form_submit('login', 'Log In', 'class="btn btn-primary"');
	echo '&nbsp';
	echo anchor(site_url('main/register'),'Register',array('class'=>'btn'));
    echo form_close();*/
	echo '<div style="padding:10px;">';
	if(count($providers)>0){
		echo 'or Login With'.br();
		?>
		
		<?php
		foreach($providers as $provider=>$connected){
			echo anchor(site_url('main/hauth/login/'.$provider), '<img src="'.base_url('modules/main/assets/third_party/'.$provider.'.png').'" />');
		}?>
		</div>
		<?php 
	}	
?>
<div id="login_message"><?php echo isset($message)?$message:''; ?></div>
