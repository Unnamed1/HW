<?php
session_start();
$mysqli=new mysqli('localhost', 'root', '');
if($mysqli->connect_errno){
    die('Ошибка соединения: '.$mysqli->connect_errno);
}
$mysqli->query('CREATE DATABASE IF NOT EXISTS `loftschool_php_010816_hw_4`');
$mysqli->select_db('loftschool_php_010816_hw_4');
$mysqli->query('CREATE TABLE IF NOT EXISTS `users`
	(`users_id` SERIAL PRIMARY KEY,
	`users_login` VARCHAR(255) NOT NULL UNIQUE,
	`users_pass` VARCHAR(255) NOT NULL,
	`users_name` VARCHAR(255),
	`users_age` TINYINT UNSIGNED,
	`users_about` LONGTEXT,
	`users_photo` VARCHAR(255))
	ENGINE=InnoDB
	DEFAULT CHARSET=utf8');
if(isset($_POST['reg'])){
	$users_login=strip_tags(htmlspecialchars($_POST['reg_user']));
	$users_pass=strip_tags(htmlspecialchars($_POST['reg_pass']));
	if(empty(trim($users_login)) || empty(trim($users_pass))){
		$_SESSION['status']=['Ошибка! Введите валидные регистрационные данные.', 'red'];
		header('Location: #');
		exit();
	}
	else{
		if(!$mysqli->query("SELECT `users_login` FROM `users` WHERE `users_login`='$users_login' LIMIT 0, 1")->num_rows){
			$stmt=$mysqli->prepare('INSERT INTO `users`(`users_login`, `users_pass`) VALUES (?, ?)');
			$stmt->bind_param('ss', $users_login, $users_pass);
			$stmt->execute();
			$_SESSION['status']=['Регистрация прошла успешно!', 'green'];
			header('Location: #');
			exit();
		}
		else{
			$_SESSION['status']=['Ошибка! Пользователь с таким именем уже существует.', 'red'];
			header('Location: #');
			exit();
		}
	}
}
if(isset($_POST['auth'])){
	$users_login=strip_tags(htmlspecialchars($_POST['auth_user']));
	$users_pass=strip_tags(htmlspecialchars($_POST['auth_pass']));
	$res=$mysqli->query("SELECT `users_login`, `users_pass` FROM `users` WHERE `users_login`='$users_login' AND `users_pass`='$users_pass' LIMIT 0, 1")->fetch_row();
	if(empty($res) || $res[0]!=$users_login || $res[1]!=$users_pass){
		$_SESSION['status']=['Ошибка! Неверный логин или пароль.', 'red'];
		header('Location: #');
		exit();
	}
	else{
		$_SESSION['users_login']=$res[0];
		$_SESSION['users_pass']=$res[1];
		header('Location: #');
		exit();
	}
}
if(isset($_POST['auth_logout'])){
	unset($_SESSION['users_login']);
	unset($_SESSION['users_pass']);
}
if(isset($_POST['auth_save'])){
	if(!empty($_POST['auth_name'])){
		$stmt=$mysqli->prepare("UPDATE `users` SET `users_name`=? WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'");
		$stmt->bind_param('s', trim(strip_tags(htmlspecialchars($_POST['auth_name']))));
		$stmt->execute();
	}
	if(!empty($_POST['auth_age']) && $_POST['auth_age']<120 && $_POST['auth_age']>6){
		$stmt=$mysqli->prepare("UPDATE `users` SET `users_age`=? WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'");
		$stmt->bind_param('i', trim(strip_tags(htmlspecialchars($_POST['auth_age']))));
		$stmt->execute();
	}
	if(!empty($_POST['auth_about'])){
		$stmt=$mysqli->prepare("UPDATE `users` SET `users_about`=? WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'");
		$stmt->bind_param('s', trim(strip_tags(htmlspecialchars($_POST['auth_about']))));
		$stmt->execute();
	}
	$_SESSION['status']=['Изменения успешно сохранены!', 'green'];
	header('Location: #');
	exit();
}
if(isset($_POST['auth_upload'])){
	if(!$_FILES['auth_photo']['error'] && exif_imagetype($_FILES['auth_photo']['tmp_name'])){
		if(preg_match('/^[\w\s_\-\.+=,!\(\)\[\]\{\}\']+$/i', $_FILES['auth_photo']['name'])){
			$res=$mysqli->query("SELECT `users_photo` FROM `users` WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'")->fetch_row();
			if(isset($res[0])){
				unlink("photos/$res[0]");
			}
			$users_photo=date('dmyHis').trim(strip_tags(htmlspecialchars($_FILES['auth_photo']['name'])));
			if(!file_exists('photos')){
				mkdir('photos');
			}
			move_uploaded_file($_FILES['auth_photo']['tmp_name'], "photos/$users_photo");
			$stmt=$mysqli->prepare("UPDATE `users` SET `users_photo`=? WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'");
			$stmt->bind_param('s', $users_photo);
			$stmt->execute();
			$_SESSION['status']=['Изображение успешно загружено!', 'green'];
			header('Location: #');
			exit();
		}
		else{
			$_SESSION['status']=['Название файла должно состоять из английских букв, цифр, и символов "_", "-", ".", "+", "=", ",", "!", "(", ")", "[", "]", "{", "}", "\'" и быть длиной как минимум в 1 символ!', 'red'];
			header('Location: #');
			exit();
		}
	}
	else{
		$_SESSION['status']=['Ошибка при загрузке изображения!', 'red'];
		header('Location: #');
		exit();
	}
}
if(isset($_POST['edit_update'])){
	$res=$mysqli->query('SELECT `users_photo` FROM `users` WHERE `users_photo` IS NOT NULL');
	while($arr=$res->fetch_row()){
		if($arr[0]==$_POST['edit_photo']){
			$_SESSION['status']=['Изображение с таким именем уже существует!', 'red'];
			header('Location: #');
			exit();
		}
	}
	if(!preg_match('/^[\w\s_\-\.+=,!\(\)\[\]\{\}\']+$/i', $_POST['edit_photo'])){
		$_SESSION['status']=['Введите валидное имя обновляемого изображения!', 'red'];
		header('Location: #');
		exit();
	}
	$res=$mysqli->query("SELECT `users_photo` FROM `users` WHERE `users_id`={$_POST['edit_id']}")->fetch_row();
	rename("photos/$res[0]", "photos/{$_POST['edit_photo']}");
	$stmt=$mysqli->prepare("UPDATE `users` SET `users_photo`=? WHERE `users_id`={$_POST['edit_id']}");
	$stmt->bind_param('s', trim(strip_tags(htmlspecialchars($_POST['edit_photo']))));
	$stmt->execute();
	$_SESSION['status']=['Имя изображения успешно обновлено!', 'green'];
	header('Location: #');
	exit();
}
if(isset($_POST['edit_delete'])){
	unlink("photos/{$_POST['edit_photo']}");
	$mysqli->query("UPDATE `users` SET `users_photo`=NULL WHERE `users_id`='{$_POST['edit_id']}'");
	$_SESSION['status']=['Удаление прошло успешно!', 'green'];
	header('Location: #');
	exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
<?php if(isset($_SESSION['status'])): ?>
	<p style='color: <?=$_SESSION['status'][1]?>'><?=$_SESSION['status'][0]?></p>
	<?php unset($_SESSION['status']);
endif;
if(isset($_SESSION['users_login']) && isset($_SESSION['users_pass'])):
$res=$mysqli->query("SELECT `users_name`, `users_age`, `users_about`, `users_photo` FROM `users` WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'")->fetch_row(); ?>
	<h6>Добро пожаловать, <?=$_SESSION['users_login']?></h6>
	<form action="#" method="POST" enctype="multipart/form-data">
		<p>
			<label for="auth_name">Name: </label>
		</p>
		<p>
			<input id="auth_name" name="auth_name" type="text" value="<?=$res[0]?>">
		</p>
		<p>
			<label for="auth_age">Age: </label>
		</p>
		<p>
			<input id="auth_age" name="auth_age" type="text" value="<?=$res[1]?>">
		</p>
		<p>
			<label for="auth_about">About: </label>
		</p>
		<p>
			<textarea id="auth_about" name="auth_about" type="text"><?=$res[2]?></textarea>
		</p>
		<input type="submit" name="auth_save" value="Сохранить!">
		<p>Ваша фотография: </p>
		<?php if(isset($res[3])): ?>
			<p><img src="<?="photos/$res[3]"?>"></p>
		<?php else: ?>
			<p>У вас пока нет фотографии.</p>
		<?php endif; ?>
		<p>
			<input name="auth_photo" type="file">
		</p>
		<input type="submit" name="auth_upload" value="Загрузить!">
	</form>
	<p>Список изображений в директории "photos":</p>
	<?php $res=$mysqli->query('SELECT `users_id`, `users_photo` FROM `users` WHERE `users_photo` IS NOT NULL');
	while($arr=$res->fetch_row()): ?>
		<form action="#" method="POST">
			<input type="text" name="edit_photo" value="<?=$arr[1]?>">
			<input type="hidden" name="edit_id" value="<?=$arr[0]?>">
			<input type="submit" name="edit_update" value="Переименовать">
			<input type="submit" name="edit_delete" value="Удалить">
		</form>
	<?php endwhile; ?>
	<form action="#" method="POST" enctype="multipart/form-data">
		<input type="submit" name="auth_logout" value="Выйти">
	</form>
<?php else: ?>
	<h6>Авторизация</h6>
	<form action="#" method="POST">
		<p>
			<label for="auth_user">Username: </label>
		</p>
		<p>
			<input id="auth_user" name="auth_user" type="text">
		</p>
		<p>
			<label for="auth_pass">Password: </label>
		</p>
		<p>
			<input id="auth_pass" name="auth_pass" type="password">
		</p>
		<input type="submit" name="auth" value="Войти">
	</form>
	<h6>Регистрация</h6>
	<form action="#" method="POST" enctype="multipart/form-data">
		<p>
			<label for="reg_user">Username: </label>
		</p>
		<p>
			<input id="reg_user" name="reg_user" type="text">
		</p>
		<p>
			<label for="reg_pass">Password: </label>
		</p>
		<p>
			<input id="reg_pass" name="reg_pass" type="password">
		</p>
		<input type="submit" name="reg" value="Зарегистрироваться">
	</form>
	<?php endif; ?>
</body>
</html>