<?php /* Smarty version 3.1.27, created on 2016-09-14 16:03:43
         compiled from "G:\OpenServer\domains\localhost\manager\templates\default\workspaces\index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:2858457d94aafaaccf4_75827090%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3a4d0c88550ffd063b7b4a8c95da88b26a9b5f1a' => 
    array (
      0 => 'G:\\OpenServer\\domains\\localhost\\manager\\templates\\default\\workspaces\\index.tpl',
      1 => 1469078022,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2858457d94aafaaccf4_75827090',
  'variables' => 
  array (
    'error' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_57d94aafac4408_30613890',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_57d94aafac4408_30613890')) {
function content_57d94aafac4408_30613890 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '2858457d94aafaaccf4_75827090';
echo (($tmp = @$_smarty_tpl->tpl_vars['error']->value)===null||$tmp==='' ? '' : $tmp);?>

<div id="modx-panel-workspace-div"></div>
<?php }
}
?>