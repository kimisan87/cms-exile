<!DOCTYPE html>
<html lang="{{ language:language_alias }}">
  <head>
    <meta charset="utf-8">
    <title><?php echo $template['title'];?></title>
    <?php echo $template['metadata'];?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="icon" href="{{ site_favicon }}">

    <!-- Le styles -->
    <?php
        $asset = new CMS_Asset();
        $asset->add_themes_css('style.css', 'minimal', 'default');
        $asset->add_cms_css('bootstrap/css/bootstrap.min.css');
        echo $asset->compile_css();

        $asset->add_cms_js("bootstrap/js/bootstrap.min.js");
        $asset->add_themes_js('script.js', 'minimal', 'default');
        echo $asset->compile_js(TRUE);
    ?>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="{{ site_favicon }}">
  </head>
  <body>
    <div class="navbar navbar-fixed-top navbar-inverse">
      <div class="navbar-inner">
        <div class="container-fluid">
            <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">
                <img src ="{{ site_logo }}" style="max-height:20px; max-width:20px;" />
            </a>
            <div class="nav-collapse in collapse" id="main-menu">
                {{ widget_name:top_navigation }}
            </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="layout-content">
    	<?php echo $template['body'];?>
      </div><!--/row-->
      <hr>
      <footer>{{ site_footer }}</footer>
    </div><!--/.fluid-container-->

  </body>
</html>

