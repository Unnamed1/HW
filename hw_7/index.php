<?php
require_once('vendor/autoload.php');
require_once('config.php');
require_once('model/Model.php');
require_once('View.php');
require_once('Controller.php');
require_once('#2/#2.php');
session_start();
if(isset($_GET['route'])){
	$route=explode('/', rtrim($_GET['route'], '/'));
}
$action=(empty($route[0]))?'authorization':strtolower($route[0]);
if(!method_exists('Controller', $action)){
	die('<h1>404</h1>');
}
$controller=new Controller;
$controller->$action();
?>