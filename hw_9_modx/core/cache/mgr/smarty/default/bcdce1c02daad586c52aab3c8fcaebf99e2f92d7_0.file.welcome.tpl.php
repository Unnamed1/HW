<?php /* Smarty version 3.1.27, created on 2016-09-14 16:02:36
         compiled from "G:\OpenServer\domains\localhost\manager\templates\default\welcome.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1601257d94a6c936720_36937980%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bcdce1c02daad586c52aab3c8fcaebf99e2f92d7' => 
    array (
      0 => 'G:\\OpenServer\\domains\\localhost\\manager\\templates\\default\\welcome.tpl',
      1 => 1469078022,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1601257d94a6c936720_36937980',
  'variables' => 
  array (
    'dashboard' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_57d94a6c93a5a8_06301223',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_57d94a6c93a5a8_06301223')) {
function content_57d94a6c93a5a8_06301223 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1601257d94a6c936720_36937980';
?>
<div id="modx-panel-welcome-div"></div>

<div id="modx-dashboard" class="dashboard">
<?php echo $_smarty_tpl->tpl_vars['dashboard']->value;?>

</div><?php }
}
?>