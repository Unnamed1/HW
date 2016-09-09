<?php
require_once('../../conf.php');
	$query=$_POST['query'];
	foreach($pdo->query('SELECT * FROM `catalogues`, `products` WHERE `catalogues_id`=`catalogues_id_ref` AND `products_name` LIKE \'%'.$query.'%\'') as $row){
	$search[]=$row;
}
echo json_encode($search);
?>