<?php
require_once('../../conf.php');
	foreach($pdo->query('SELECT * FROM `catalogues`, `products` WHERE `products`.`catalogues_id_ref`=`catalogues`.`catalogues_id`') as $row){
	$products[]=$row;
}
echo json_encode($products);
?>