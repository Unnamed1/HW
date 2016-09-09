<?php
require_once('../../conf.php');
	$id=$_POST['id'];
	foreach($pdo->query('SELECT * FROM `catalogues`, `products` WHERE `catalogues_id_ref`='.$id.' AND `catalogues_id`='.$id) as $row){
	$catalogues_id[]=$row;
}
echo json_encode($catalogues_id);
?>