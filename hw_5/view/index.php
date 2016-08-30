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
	endif; ?>
	<h6>Добро пожаловать, <?=$_SESSION['users_login']?></h6>
	<form action="#" method="POST">
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
	</form>
	<form action="#" method="POST" enctype="multipart/form-data">
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
	<p>Список файлов, загруженных вами:</p>
	<ul>
	<?php if(!$files->num_rows && !isset($res[3])): ?>
		<p>Пока загруженных файлов нет</p>
	<?php elseif(isset($res[3])): ?>
		<li><?=$res[3]?></li>
	<?php endif;
	while($arr=$files->fetch_row()): ?>
		<li><?=$arr[0]?></li>
	<?php endwhile; ?>
	</ul>
	<form action="#" method="POST" enctype="multipart/form-data">
		<p>
			<input name="auth_file" type="file">
			<input name="auth_id" type="hidden" value="<?=$res[4]?>">
		</p>
		<input type="submit" name="auth_uploadFile" value="Загрузить файл!">
	</form>
	<p>Список пользователей, зарегистрированных на сайте:</p>
	<ul>
	<?php while($arr=$users->fetch_row()): ?>
		<li><?=$arr[0]?> --- <?php if($arr[1]>=18) echo 'Совершеннолетний'; else echo 'Несовершеннолетний'?></li>
	<?php endwhile; ?>
	</ul>
	<form action="#" method="POST">
		<input type="submit" name="auth_logout" value="Выйти">
	</form>
</body>
</html>