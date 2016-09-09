<?php
require_once('../../conf.php');
	$id=$_POST['id'];
	foreach($pdo->query('SELECT * FROM `catalogues`, `products` WHERE `products_id`='.$id.' AND `catalogues_id`=`catalogues_id_ref`') as $row){
	$products_id[]=$row;
}
echo json_encode($products_id);
?>