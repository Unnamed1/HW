<?php
$db=new mysqli('localhost', 'root', '');
if($db->connect_errno){
    die('Ошибка соединения: '.$db->connect_errno);
}
$db->query('CREATE DATABASE IF NOT EXISTS `loftschool_php_010816_hw_7`');
$db->close();
$capsule=new Illuminate\Database\capsule\Manager;
$capsule->addConnection([
	'driver'=>'mysql',
	'host'=>'localhost',
	'database'=>'loftschool_php_010816_hw_7',
	'username'=>'root',
	'password'=>'',
	'charset'=>'utf8',
	'collation'=>'utf8_unicode_ci',
	'prefix'=>''
]);
$capsule->setAsGlobal();
$capsule->bootEloquent();
?>