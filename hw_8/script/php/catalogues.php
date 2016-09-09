<?php
require_once('../../conf.php');
foreach($pdo->query('SELECT * FROM `catalogues`') as $row){
	$catalogues[]=$row;
}
echo json_encode($catalogues);
?>