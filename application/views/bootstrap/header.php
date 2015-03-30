<?php
// Quick and dirty navigation.
$menu_item_default = 'index';
$menu_items = array(
  'index' => array(
    'label' => 'Home',
    'desc' => 'A list of all my magazines',
  ),
  'add' => array(
    'label' => 'Add',
    'desc' => 'Add a magazine to my collection',
  ),
);

// Determine the current menu item.
$menu_current = $menu_item_default;
// If there is a query for a specific menu item and that menu item exists...
if (@array_key_exists($this->uri->segment(2), $menu_items)) {
  $menu_current = $this->uri->segment(2);
}
?>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Cunami - Rezervacije</title>
        <meta name="description" content="<?php html_escape($menu_items[$menu_current]['desc']); ?>">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="<?php echo base_url("css/bootstrap.min.css"); ?>">
        <style>
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
        </style>
        <link rel="stylesheet" href="<?php echo base_url("css/bootstrap-responsive.min.css"); ?>">
        <link rel="stylesheet" href="<?php echo base_url("css/main.css"); ?>">

        <script type="text/javascript">
            window.base_url = "<?php echo base_url(); ?>";
        </script>
        <script src="<?php echo base_url("/js/vendor/modernizr-2.6.2.min.js"); ?>"></script>
        <!-- loading screen -->
<!--        <script src="--><?php //echo base_url("/js/jquery.blockUI.js"); ?><!--"></script>-->
<!--        <script src="//code.jquery.com/jquery-1.10.2.js"></script>-->
<!--        <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>-->
<!--        <script type="text/javascript" src="--><?php //echo base_url("js/jquery-1.10.2.js"); ?><!--"></script>-->
<!--        <script type="text/javascript" src="--><?php //echo base_url("js/jquery-ui/jquery-ui.js"); ?><!--"></script>-->
    </head>
    <body>
        <!-- This code is taken from http://twitter.github.com/bootstrap/examples/hero.html -->

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
<!--                    <a class="brand" href="--><?php //echo base_url("reservation/show/" . date('Y-m-d')); ?><!--">Početna</a>-->
                    <a class="brand" href="<?php echo base_url(); ?>">Home</a>
                    <a class="brand" href="<?php echo base_url("reservation/show_history"); ?>">History</a>
                    <a class="brand" style="color: #444" href="<?php echo base_url("user/logout"); ?>">Log out</a>
                </div>
            </div>
        </div>

        <div class="container">