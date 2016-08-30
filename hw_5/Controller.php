<?php
Class Controller{
	public function __construct(){
		Model::init();
	}
	public function authorization(){
		if(isset($_POST['auth'])){
			$users_login=strip_tags(htmlspecialchars($_POST['auth_user']));
			$users_pass=strip_tags(htmlspecialchars($_POST['auth_pass']));
			if(!$res=Model::authorize($users_login, $users_pass)){
				$_SESSION['status']=['Ошибка! Неверный логин или пароль.', 'red'];
				header('Location: #');
				exit();
			}
			$_SESSION['users_login']=$res[0];
			$_SESSION['users_pass']=$res[1];
			header('Location: index');
			exit();
		}
		require_once('view/authorization.php');
	}
	public function registration(){
		if(isset($_POST['reg'])){
			$users_login=strip_tags(htmlspecialchars($_POST['reg_user']));
			$users_pass=strip_tags(htmlspecialchars($_POST['reg_pass']));
			if(empty(trim($users_login)) || empty(trim($users_pass))){
				$_SESSION['status']=['Ошибка! Введите валидные регистрационные данные.', 'red'];
				header('Location: #');
				exit();
			}
			if(Model::usernameExists($users_login, $users_pass)){
				$_SESSION['status']=['Ошибка! Пользователь с таким именем уже существует.', 'red'];
				header('Location: #');
				exit();
			}
			if(Model::register($users_login, $users_pass)){
				$_SESSION['status']=['Регистрация прошла успешно!', 'green'];
				header('Location: ../');
				exit();
			}
		}
		require_once('view/registration.php');
	}
	public function index(){
		if(!Model::isAuthorized()){
			$_SESSION['status']=['Ошибка! Авторизуйтесь.', 'red'];
			header('Location: ../');
			exit();
		}
		$res=Model::getUser();
		$files=Model::getUploadedFiles();
		$users=Model::getUsers();
		if(isset($_POST['auth_logout'])){
			unset($_SESSION['users_login']);
			unset($_SESSION['users_pass']);
			header('Location: ../');
			exit();
		}
		if(isset($_POST['auth_save'])){
			if(!empty($_POST['auth_name'])){
				Model::updateName();
			}
			if(!empty($_POST['auth_age']) && $_POST['auth_age']<120 && $_POST['auth_age']>6){
				Model::updateAge();
			}
			if(!empty($_POST['auth_about'])){
				Model::updateAbout();
			}
			$_SESSION['status']=['Изменения успешно сохранены!', 'green'];
			header('Location: #');
			exit();
		}
		if(isset($_POST['auth_upload'])){
			if(!$_FILES['auth_photo']['error'] && exif_imagetype($_FILES['auth_photo']['tmp_name'])){
				if(preg_match('/^[\w\s_\-\.+=,!\(\)\[\]\{\}\']+$/i', $_FILES['auth_photo']['name'])){
					if(Model::uploadImg()){
						$_SESSION['status']=['Изображение успешно загружено!', 'green'];
						header('Location: #');
						exit();
					}
				}
				else{
					$_SESSION['status']=['Название файла может состоять из английских букв, цифр, и символов "_", "-", ".", "+", "=", ",", "!", "(", ")", "[", "]", "{", "}", "\'" и быть длиной как минимум в 1 символ!', 'red'];
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
		if(isset($_POST['auth_uploadFile'])){
			if(!$_FILES['auth_file']['error']){
				if(preg_match('/^[\w\s_\-\.+=,!\(\)\[\]\{\}\']+$/i', $_FILES['auth_file']['name'])){
					if(Model::uploadFile()){
						$_SESSION['status']=['Файл успешно загружен!', 'green'];
						header('Location: #');
						exit();
					}
				}
				else{
					$_SESSION['status']=['Название файла может состоять из английских букв, цифр, и символов "_", "-", ".", "+", "=", ",", "!", "(", ")", "[", "]", "{", "}", "\'" и быть длиной как минимум в 1 символ!', 'red'];
					header('Location: #');
					exit();
				}
			}
			else{
				$_SESSION['status']=['Ошибка при загрузке файла!', 'red'];
				header('Location: #');
				exit();
			}
		}
		require_once('view/index.php');
	}
}
?>