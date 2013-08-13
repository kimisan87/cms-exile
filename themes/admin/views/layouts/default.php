<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 2.3.1
Version: 1.1.2
Author: KeenThemes
Website: http://www.keenthemes.com/preview/?theme=metronic
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469
-->
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>{{ site_name }}</title>
	 <?php echo $template['metadata'];?>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<link href="{{ base_url }}themes/admin/assets/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="{{ base_url }}themes/admin/assets/admin/css/metro.css" rel="stylesheet" />
	<link href="{{ base_url }}themes/admin/assets/admin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
	<link href="{{ base_url }}themes/admin/assets/admin/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link href="{{ base_url }}themes/admin/assets/admin/css/style.css" rel="stylesheet" />
	<link href="{{ base_url }}themes/admin/assets/admin/css/style_responsive.css" rel="stylesheet" />
	<link href="{{ base_url }}themes/admin/assets/admin/css/style_default.css" rel="stylesheet" id="style_color" />
	<link rel="stylesheet" type="text/css" href="{{ base_url }}themes/admin/assets/admin/gritter/css/jquery.gritter.css" />
	<link rel="stylesheet" type="text/css" href="{{ base_url }}themes/admin/assets/admin/uniform/css/uniform.default.css" />
	<link rel="stylesheet" type="text/css" href="{{ base_url }}themes/admin/assets/admin/bootstrap-daterangepicker/daterangepicker.css" />
	<link href="{{ base_url }}themes/admin/assets/admin/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
	<!--<link href="{{ base_url }}themes/admin/assets/admin/jqvmap/jqvmap/jqvmap.css" media="screen" rel="stylesheet" type="text/css" />-->
	<!-- Load javascripts at bottom, this will reduce page load time -->
	<script src="{{ base_url }}themes/admin/assets/admin/js/jquery-1.8.3.min.js"></script>	
	<!--[if lt IE 9]>
	<script src="{{ base_url }}themes/admin/assets/admin/js/excanvas.js"></script>
	<script src="{{ base_url }}themes/admin/assets/admin/js/respond.js"></script>	
	<![endif]-->	
	<script src="{{ base_url }}themes/admin/assets/admin/breakpoints/breakpoints.js"></script>		
	<script src="{{ base_url }}themes/admin/assets/admin/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>	
	<script src="{{ base_url }}themes/admin/assets/admin/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="{{ base_url }}themes/admin/assets/admin/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
	<script src="{{ base_url }}themes/admin/assets/admin/bootstrap/js/bootstrap.min.js"></script>
	<script src="{{ base_url }}themes/admin/assets/admin/js/jquery.blockui.js"></script>	
	<script src="{{ base_url }}themes/admin/assets/admin/js/jquery.cookie.js"></script>
	<!--<script src="{{ base_url }}themes/admin/assets/admin/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>	
	<script src="{{ base_url }}themes/admin/assets/admin/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
	<script src="{{ base_url }}themes/admin/assets/admin/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
	<script src="{{ base_url }}themes/admin/assets/admin/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
	<script src="{{ base_url }}themes/admin/assets/admin/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
	<script src="{{ base_url }}themes/admin/assets/admin/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
	<script src="{{ base_url }}themes/admin/assets/admin/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>	-->
	<!--<script src="{{ base_url }}themes/admin/assets/admin/flot/jquery.flot.js"></script>
	<script src="{{ base_url }}themes/admin/assets/admin/flot/jquery.flot.resize.js"></script>-->
	<script type="text/javascript" src="{{ base_url }}themes/admin/assets/admin/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="{{ base_url }}themes/admin/assets/admin/uniform/jquery.uniform.min.js"></script>	
	<script type="text/javascript" src="{{ base_url }}themes/admin/assets/admin/js/jquery.pulsate.min.js"></script>
	<script type="text/javascript" src="{{ base_url }}themes/admin/assets/admin/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="{{ base_url }}themes/admin/assets/admin/bootstrap-daterangepicker/daterangepicker.js"></script>	
	<script src="{{ base_url }}themes/admin/assets/admin/js/app.js"></script>		
	
	<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-top">
	<!-- BEGIN HEADER -->
	<div class="header navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="navbar-inner">
			<div class="container-fluid">
				<!-- BEGIN LOGO -->
				<a class="brand" href="index.html">
				<img src="{{ site_logo }}" alt="logo" style="height: 23px;" />
				</a>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
				<img src="{{ base_url }}themes/admin/assets/admin/img/menu-toggler.png" alt="" />
				</a>          
				<!-- END RESPONSIVE MENU TOGGLER -->				
				<!-- BEGIN TOP NAVIGATION MENU -->					
				<ul class="nav pull-right">
					
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img alt="" src="{{ base_url }}themes/admin/assets/admin/img/avatar1_small.jpg" />
						<span class="username">{{ user_real_name }}</span>
						<i class="icon-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="<?php echo site_url()?>main/change_profile"><i class="icon-user"></i> My Profile</a></li>
							<li><a href="calendar.html"><i class="icon-calendar"></i> My Calendar</a></li>
							<li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>
							<li class="divider"></li>
							<li><a href="<?php echo site_url()?>main/logout"><i class="icon-key"></i> Log Out</a></li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU -->	
			</div>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->        	
			<ul>
				
				{{ widget_name:admin_left_nav }}
				<!--
				<li class="has-sub ">
					<a href="javascript:;">
					<i class="icon-bookmark-empty"></i> 
					<span class="title">UI Features</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub">
						<li ><a href="ui_general.html">General</a></li>
						<li ><a href="ui_buttons.html">Buttons</a></li>
						<li ><a href="ui_tabs_accordions.html">Tabs & Accordions</a></li>
						<li ><a href="ui_sliders.html">Sliders</a></li>
						<li ><a href="ui_tiles.html">Tiles</a></li>
						<li ><a href="ui_typography.html">Typography</a></li>
						<li ><a href="ui_tree.html">Tree View</a></li>
						<li ><a href="ui_nestable.html">Nestable List</a></li>
					</ul>
				</li>
				-->
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div id="portlet-config" class="modal hide">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button"></button>
					<h3>Widget Settings</h3>
				</div>
				<div class="modal-body">
					<p>Here will be a configuration form</p>
				</div>
			</div>
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN STYLE CUSTOMIZER -->
						
						<!-- END BEGIN STYLE CUSTOMIZER -->   	
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->			
						<h3 class="page-title">
						{{ site_name }}			
							<!--<small>statistics and more</small>-->
						</h3>
						<ul class="breadcrumb">
							{{ navigation_path }}
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<div id="dashboard">  <?php echo $template['body'];?>
				</div>
			</div>
			<!-- END PAGE CONTAINER-->		
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="footer">
		{{ site_footer }}
		<div class="span pull-right">
			<span class="go-top"><i class="icon-angle-up"></i></span>
		</div>
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS -->
			
	<?php //$asset->add_themes_js('script.js', 'neutral', 'default');?>
	<script>
		jQuery(document).ready(function() {		
			App.setPage("index");  // set current page
			App.init(); // init the rest of plugins and elements
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
