<?php
require_once('Model.php');
require_once('Controller.php');
session_start();
$route=explode('/', rtrim($_GET['route'], '/'));
$action=(empty($route[0]))?'authorization':strtolower($route[0]);
if(!method_exists('Controller', $action)){
	die('<h1>404</h1>');
}
$controller=new Controller;
$controller->$action();
?>