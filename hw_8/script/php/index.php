<?php
session_start();
$post_id=filter_var($_POST['post_id'], FILTER_SANITIZE_STRING);
$token='yourtoken'; // Permissions: photos, wall
$curl=curl_init('https://api.vk.com/method/photos.getWallUploadServer?access_token='.$token.'&v=5.53');
curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
$result=json_decode(curl_exec($curl), true);
$info['upload_url']=$result['response']['upload_url'];
$info['user_id']=$result['response']['user_id'];
$curl=curl_init($info['upload_url']);
$photo=new CURLFile($_FILES['post_img']['tmp_name'], $_FILES['post_img']['type'], $_FILES['post_img']['name']);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($curl, CURLOPT_POST, TRUE);
curl_setopt($curl, CURLOPT_POSTFIELDS, ['photo'=>$photo]);
$result=json_decode(curl_exec($curl), true);
$info['server']=$result['server'];
$info['photo']=$result['photo'];
$info['hash']=$result['hash'];
$curl=curl_init('https://api.vk.com/method/photos.saveWallPhoto?user_id='.$post_id.'&photo='.$info['photo'].'&server='.$info['server'].'&hash='.$info['hash'].'&access_token='.$token.'&v=5.53');
curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
$result=json_decode(curl_exec($curl), true);
if($result['error']){
	$_SESSION['status']=['msg'=>'Что-то пошло не так...', 'color'=>'red'];
	header('Location: /');
	exit();
}
$curl=curl_init('https://api.vk.com/method/wall.post?owner_id='.$post_id.'&attachments=photo'.$info['user_id'].'_'.$result['response'][0]['id'].'&access_token='.$token.'&v=5.53');
curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
$result=json_decode(curl_exec($curl), true);
if($result['error']['error_code']==214){
	$_SESSION['status']=['msg'=>'Невозможно опубликовать. Доступ к стене закрыт.', 'color'=>'red'];
	header('Location: /');
	exit();
}
$_SESSION['status']=['msg'=>'Успех.', 'color'=>'green'];
header('Location: /');
exit();
?>