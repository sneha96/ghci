<?php

define('EMAIL_FOR_REPORTS', '');
define('RECAPTCHA_PRIVATE_KEY', '@privatekey@');
define('FINISH_URI', 'http://');
define('FINISH_ACTION', 'message');
define('FINISH_MESSAGE', 'New item added to the inventory !');
define('UPLOAD_ALLOWED_FILE_TYPES', 'doc, docx, xls, csv, txt, rtf, html, zip, jpg, jpeg, png, gif');

define('_DIR_', str_replace('\\', '/', dirname(__FILE__)) . '/');
require_once _DIR_ . '/handler.php';

?>

<?php if (frmd_message()): ?>
<link rel="stylesheet" href="<?php echo dirname($form_path); ?>/formoid-solid-blue.css" type="text/css" />
<span class="alert alert-success"><?php echo FINISH_MESSAGE; ?></span>
<?php else: ?>
<!-- Start Formoid form-->
<link rel="stylesheet" href="<?php echo dirname($form_path); ?>/formoid-solid-blue.css" type="text/css" />
<script type="text/javascript" src="<?php echo dirname($form_path); ?>/jquery.min.js"></script>
<form class="formoid-solid-blue" style="background-color:#ffffff;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:480px;min-width:150px" method="post"><div class="title"><h2>New Raw Material</h2></div>
	<div class="element-input<?php frmd_add_class("input"); ?>" title="Name"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" name="input" required="required" placeholder="name"/><span class="icon-place"></span></div></div>
	<div class="element-select<?php frmd_add_class("select"); ?>" title="Unit"><label class="title"><span class="required">*</span></label><div class="item-cont"><div class="large"><span><select name="select" required="required">

		<option value="kilograms">kilograms</option>
		<option value="litres">litres</option>
		<option value="metre">metre</option>
		<option value="per piece">per piece</option>
		<option value="box">box</option>
		<option value="dozen">dozen</option>
		<option value="score">score</option></select><i></i><span class="icon-place"></span></span></div></div></div>
	<div class="element-textarea<?php frmd_add_class("textarea"); ?>" title="description"><label class="title"></label><div class="item-cont"><textarea class="medium" name="textarea" cols="20" rows="5" placeholder="desc"></textarea><span class="icon-place"></span></div></div>
	<div class="element-number<?php frmd_add_class("number"); ?>" title="no of variants"><label class="title"></label><div class="item-cont"><input class="large" type="text" min="0" max="100" name="number" placeholder="var" value=""/><span class="icon-place"></span></div></div>
	<div class="element-input<?php frmd_add_class("input1"); ?>" title="name of variant"><label class="title"></label><div class="item-cont"><input class="large" type="text" name="input1" placeholder="var_name"/><span class="icon-place"></span></div></div>
	<div class="element-number<?php frmd_add_class("number3"); ?>" title="cost per unit"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" min="0" max="1000" name="number3" required="required" placeholder="cost" value=""/><span class="icon-place"></span></div></div>
	<div class="element-number<?php frmd_add_class("number2"); ?>" title="Minimum quantity in stock"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" min="0" max="100" name="number2" required="required" placeholder="min_qty" value=""/><span class="icon-place"></span></div></div>
	<div class="element-number<?php frmd_add_class("number1"); ?>" title="Available quantity"><label class="title"></label><div class="item-cont"><input class="large" type="text" min="0" max="1000" name="number1" placeholder="avail" value=""/><span class="icon-place"></span></div></div>
<div class="submit"><input type="submit" value="Submit"/></div></form><script type="text/javascript" src="<?php echo dirname($form_path); ?>/formoid-solid-blue.js"></script>

<!-- Stop Formoid form-->
<?php endif; ?>

<?php frmd_end_form(); ?>