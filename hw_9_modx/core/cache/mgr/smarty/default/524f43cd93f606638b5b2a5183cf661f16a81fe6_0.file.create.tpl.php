<?php /* Smarty version 3.1.27, created on 2016-09-14 16:52:11
         compiled from "G:\OpenServer\domains\localhost\manager\templates\default\resource\weblink\create.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1300257d9560b5b0ad5_32337072%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '524f43cd93f606638b5b2a5183cf661f16a81fe6' => 
    array (
      0 => 'G:\\OpenServer\\domains\\localhost\\manager\\templates\\default\\resource\\weblink\\create.tpl',
      1 => 1469078022,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1300257d9560b5b0ad5_32337072',
  'variables' => 
  array (
    'tvOutput' => 0,
    'onDocFormPrerender' => 0,
    'resource' => 0,
    '_config' => 0,
    'onRichTextEditorInit' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_57d9560b5fece7_63134040',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_57d9560b5fece7_63134040')) {
function content_57d9560b5fece7_63134040 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1300257d9560b5b0ad5_32337072';
?>
<div id="modx-panel-weblink-div"></div>
<div id="modx-resource-tvs-div" class="modx-resource-tab x-form-label-left x-panel"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['tvOutput']->value)===null||$tmp==='' ? '' : $tmp);?>
</div>

<?php echo $_smarty_tpl->tpl_vars['onDocFormPrerender']->value;?>

<?php if ($_smarty_tpl->tpl_vars['resource']->value->richtext && $_smarty_tpl->tpl_vars['_config']->value['use_editor']) {?>
    <?php echo $_smarty_tpl->tpl_vars['onRichTextEditorInit']->value;?>

<?php }

}
}
?>