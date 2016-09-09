<?php
class Conf{
	const RDBMS='mysql';
	const HOST='localhost';
	const USER='root';
	const PASS='';
}
try{
	$pdo=new PDO(Conf::RDBMS.':host='.Conf::HOST, Conf::USER, Conf::PASS, [PDO::MYSQL_ATTR_INIT_COMMAND=>'SET NAMES \'UTF8\'']);
}
catch(PDOException $e){
	exit('Подключение не удалось: '.$e->getMessage());
}
$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
$pdo->query('CREATE DATABASE IF NOT EXISTS `loftschool_php_010816_hw_8`');
$pdo->query('USE `loftschool_php_010816_hw_8`');
?>