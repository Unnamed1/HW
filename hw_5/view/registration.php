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
	<h6>Регистрация</h6>
	<form action="#" method="POST">
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
		<input type="submit" name="reg" value="Зарегистрироваться"><br>
		<a href="../">Назад</a>
	</form>
</body>
</html>