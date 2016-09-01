<?php
Class Controller{
	private $view;
	private $status=[];
	public function __construct(){
		Model::init();
		$this->view=new View;
		if(isset($_SESSION['status'])){
			$this->status=['status'=>$_SESSION['status'][0], 'color'=>$_SESSION['status'][1]];
			unset($_SESSION['status']);
		}
	}
	public function authorization(){
		if(isset($_POST['auth'])){
			if(!$res=Model::authorize()){
				$_SESSION['status']=['Ошибка! Неверный логин или пароль.', 'red'];
				header('Location: #');
				exit();
			}
			$_SESSION['users_login']=$res[0];
			$_SESSION['users_pass']=$res[1];
			header('Location: index');
			exit();
		}
		echo $this->view->twig->render('authorization.twig', ['status'=>$this->status]);
	}
	public function registration(){
		if(isset($_POST['reg'])){
			if(Model::usernameExists()){
				$_SESSION['status']=['Ошибка! Пользователь с таким именем уже существует.', 'red'];
				header('Location: #');
				exit();
			}
			if(!Model::captcha()){
				$_SESSION['status']=['Ошибка! reCAPTCHA.', 'red'];
				header('Location: #');
				exit();
			}
			if(!Model::register()){
				$_SESSION['status']=['Ошибка регистрации.', 'red'];
				header('Location: #');
				exit();
			}
			$_SESSION['status']=['Регистрация прошла успешно!', 'green'];
			header('Location: ../');
			exit();
		}
		echo $this->view->twig->render('registration.twig', ['status'=>$this->status]);
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
			if(!empty($_POST['auth_age'])){
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
		echo $this->view->twig->render('index.twig', ['status'=>$this->status, 'users_login'=>$users_login, 'res'=>$res, 'files'=>$files, 'rows'=>$rows, 'users'=>$users]);
	}
}
?>