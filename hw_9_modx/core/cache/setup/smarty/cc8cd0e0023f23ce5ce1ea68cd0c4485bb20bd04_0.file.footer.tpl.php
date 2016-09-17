<?php /* Smarty version 3.1.27, created on 2016-09-14 16:01:21
         compiled from "G:\OpenServer\domains\localhost\setup\templates\footer.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:955857d94a21276a72_79880876%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cc8cd0e0023f23ce5ce1ea68cd0c4485bb20bd04' => 
    array (
      0 => 'G:\\OpenServer\\domains\\localhost\\setup\\templates\\footer.tpl',
      1 => 1469078022,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '955857d94a21276a72_79880876',
  'variables' => 
  array (
    '_lang' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_57d94a21291ff6_34650676',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_57d94a21291ff6_34650676')) {
function content_57d94a21291ff6_34650676 ($_smarty_tpl) {
if (!is_callable('smarty_modifier_replace')) require_once 'G:/OpenServer/domains/localhost/core/model/smarty/plugins\\modifier.replace.php';

$_smarty_tpl->properties['nocache_hash'] = '955857d94a21276a72_79880876';
?>
        </div>
        <!-- end content -->
        <div class="clear">&nbsp;</div>
    </div>
</div>

<!-- start footer -->
<div id="footer">
    <div id="footer-inner">
    <div class="container_12">
        <p><?php ob_start();
echo date('Y');
$_tmp1=ob_get_clean();
echo smarty_modifier_replace($_smarty_tpl->tpl_vars['_lang']->value['modx_footer1'],'[[+current_year]]',$_tmp1);?>
</p>
        <p><?php echo $_smarty_tpl->tpl_vars['_lang']->value['modx_footer2'];?>
</p>
    </div>
    </div>
</div>

<div class="post_body">

</div>
<!-- end footer -->
</body>
</html><?php }
}
?>