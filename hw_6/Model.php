<?php
class Model{
	private static $db;
	public static function init(){
		self::$db=new mysqli('localhost', 'root', '');
		if(self::$db->connect_errno){
		    die('Ошибка соединения: '.self::$db->connect_errno);
		}
		self::$db->query('CREATE DATABASE IF NOT EXISTS `loftschool_php_010816_hw_6`');
		self::$db->select_db('loftschool_php_010816_hw_6');
		self::$db->query('CREATE TABLE IF NOT EXISTS `users`
			(`users_id` SERIAL PRIMARY KEY,
			`users_login` VARCHAR(255) NOT NULL UNIQUE,
			`users_email` VARCHAR(255) NOT NULL,
			`users_pass` VARCHAR(255) NOT NULL,
			`users_name` VARCHAR(255),
			`users_age` TINYINT UNSIGNED,
			`users_about` LONGTEXT,
			`users_photo` VARCHAR(255))
			ENGINE=InnoDB
			DEFAULT CHARSET=utf8');
		self::$db->query('CREATE TABLE IF NOT EXISTS `uploadedFiles`
			(`uploadedFiles_id` SERIAL PRIMARY KEY,
			`uploadedFiles_name` VARCHAR(255) NOT NULL,
			`users_id_ref` BIGINT UNSIGNED NOT NULL)
			ENGINE=InnoDB
			DEFAULT CHARSET=utf8');
	}
	public static function authorize($users_login, $users_pass){
		$res=self::$db->query("SELECT `users_login`, `users_pass` FROM `users` WHERE `users_login`='$users_login' AND `users_pass`='$users_pass' LIMIT 0, 1")->fetch_row();
		if(empty($res) || $res[0]!=$users_login || $res[1]!=$users_pass){
			return false;
		}
		return $res;
	}
	public static function usernameExists($users_login){
		if(self::$db->query("SELECT `users_login` FROM `users` WHERE `users_login`='$users_login' LIMIT 0, 1")->num_rows){
			return true;
		}
	}
	public static function register($users_login, $users_email, $users_pass){
		$stmt=self::$db->prepare('INSERT INTO `users`(`users_login`, `users_email`, `users_pass`) VALUES (?, ?, ?)');
		$stmt->bind_param('sss', $users_login, $users_email, $users_pass);
		$stmt->execute();
		return true;
	}
	public static function captcha(){
		$ch=curl_init("https://www.google.com/recaptcha/api/siteverify?secret=6LdsyigTAAAAAPOwlzm9d0Lculi8agqZYaBUzUCL&response={$_POST['g-recaptcha-response']}");
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$out=json_decode(curl_exec($ch), true);
		if($out['success']){
			return true;
		}
	}
	public static function emailUserData($users_login, $users_email, $users_pass){
		try{
			$mail=new PHPMailer(true);
			$mail->CharSet='UTF-8';
			$mail->setLanguage('ru');
			$mail->isSMTP();
			$mail->Host='hostnamehere';
			$mail->Port=587;
			$mail->SMTPSecure='tls';
			$mail->SMTPAuth=true;
			$mail->Username="your@address.here";
			$mail->Password="yourpasswordhere";
			$mail->setFrom('your@address.here');
			$mail->addAddress("$users_email");
			$mail->Subject='Регистрационные данные';
			$mail->msgHTML("<h6>Регистрационные данные:</h6>
						<p>Login: $users_login</p>
						<p>Pass: $users_pass</p>");
			$mail->altBody="Login: $users_login, Pass: $users_pass";
			if(!$mail->send()){
				return false;
			}
			return true;
		}
		catch(phpmailerException $e){
			return false;
		}
		catch(Exception $e){
			return false;
		}
	}
	public static function isAuthorized(){
		if(isset($_SESSION['users_login']) && isset($_SESSION['users_pass'])){
			return true;
		}
	}
	public static function getUser(){
		return self::$db->query("SELECT `users_name`, `users_age`, `users_about`, `users_photo`, `users_id` FROM `users` WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'")->fetch_row();
	}
	public static function getUploadedFiles(){
		return self::$db->query("SELECT `uploadedFiles_name` FROM `uploadedFiles`, `users` WHERE `users_login`='{$_SESSION['users_login']}' AND `users_id`=`users_id_ref`");
	}
	public static function getUsers(){
		return self::$db->query('SELECT `users_login`, `users_age` FROM `users` ORDER BY `users_age`');
	}
	public static function updateName(){
		$users_name=trim(strip_tags(htmlspecialchars($_POST['auth_name'])));
		$stmt=self::$db->prepare("UPDATE `users` SET `users_name`=? WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'");
		$stmt->bind_param('s', $users_name);
		$stmt->execute();
	}
	public static function updateAge(){
		$users_age=trim(strip_tags(htmlspecialchars($_POST['auth_age'])));
		$stmt=self::$db->prepare("UPDATE `users` SET `users_age`=? WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'");
		$stmt->bind_param('i', $users_age);
		$stmt->execute();
	}
	public static function updateAbout(){
		$users_about=trim(strip_tags(htmlspecialchars($_POST['auth_about'])));
		$stmt=self::$db->prepare("UPDATE `users` SET `users_about`=? WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'");
		$stmt->bind_param('s', $users_about);
		$stmt->execute();
	}
	public static function uploadImg(){
		$res=self::$db->query("SELECT `users_photo` FROM `users` WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'")->fetch_row();
		if(isset($res[0])){
			unlink("photos/$res[0]");
		}
		$users_photo=date('dmyHis').trim(strip_tags(htmlspecialchars($_FILES['auth_photo']['name'])));
		if(!file_exists('photos')){
			mkdir('photos');
		}
		move_uploaded_file($_FILES['auth_photo']['tmp_name'], "photos/$users_photo");
		$stmt=self::$db->prepare("UPDATE `users` SET `users_photo`=? WHERE `users_login`='{$_SESSION['users_login']}' AND `users_pass`='{$_SESSION['users_pass']}'");
		$stmt->bind_param('s', $users_photo);
		$stmt->execute();
		return true;
	}
	public static function uploadFile(){
		$users_file=date('dmyHis').trim(strip_tags(htmlspecialchars($_FILES['auth_file']['name'])));
		if(!file_exists('files')){
			mkdir('files');
		}
		move_uploaded_file($_FILES['auth_file']['tmp_name'], "files/$users_file");
		$stmt=self::$db->prepare('INSERT INTO `uploadedFiles` (`uploadedFiles_name`, `users_id_ref`) VALUES (?, ?)');
		$stmt->bind_param('si', $users_file, $_POST['auth_id']);
		$stmt->execute();
		return true;
	}
}
?>