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
		<input type="submit" name="auth" value="Войти"><br>
		<a href="registration">Не зарегистрированы?</a>
	</form>
</body>
</html>