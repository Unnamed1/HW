<?php
require_once('User.php');
require_once('UploadedFiles.php');
use Illuminate\Database\Capsule\Manager as Capsule;
use Intervention\Image\ImageManagerStatic as Image;
class Model{
	public static function init(){
		if(!Capsule::schema()->hasTable('users')){
			Capsule::schema()->create('users', function($table){
				$table->bigIncrements('users_id');
				$table->string('users_login', 255)->unique();
				$table->string('users_email', 255);
				$table->string('users_pass', 255);
				$table->string('users_ip', 255);
				$table->string('users_name', 255);
				$table->integer('users_age')->unsigned();
				$table->text('users_about');
				$table->string('users_photo', 255);
			});
		}
		if(!Capsule::schema()->hasTable('uploadedFiles')){
			Capsule::schema()->create('uploadedFiles', function($table){
				$table->bigIncrements('uploadedFiles_id');
				$table->string('uploadedFiles_name', 255);
				$table->integer('users_id_ref')->unsigned();
			});
		}
	}
	public static function authorize(){
		$toValidate=['user'=>$_POST['auth_user'], 'pass'=>$_POST['auth_pass']];
		$gump=new GUMP;
		$gump->validation_rules([
			'user'=>'required',
			'pass'=>'required',
			]);
		$gump->filter_rules([
			'user'=>'trim|sanitize_string',
			'pass'=>'trim|sanitize_string',
		]);
		if(!$validatedData=$gump->run($toValidate)){
			return false;
		}
		$user=User::where([
			['users_login', '=', $validatedData['user']],
			['users_pass', '=', $validatedData['pass']]
		])->get()->toArray();
		if($validatedData['user']!=$user[0]['users_login'] || $validatedData['pass']!=$user[0]['users_pass']){
			return false;
		}
		return [$user[0]['users_login'], $user[0]['users_pass']];
	}
	public static function usernameExists(){
		$toValidate=['user'=>$_POST['reg_user']];
		$gump=new GUMP;
		$gump->validation_rules([
			'user'=>'required',
			]);
		$gump->filter_rules([
			'user'=>'trim|sanitize_string',
		]);
		if(!$validatedData=$gump->run($toValidate)){
			return false;
		}
		if(!empty(User::where('users_login', '=', $validatedData['user'])->value('users_login'))){
			return true;
		}
	}
	public static function register(){
		$toValidate=['user'=>$_POST['reg_user'], 'pass'=>$_POST['reg_pass'], 'email'=>$_POST['reg_email'], 'name'=>$_POST['reg_name'], 'age'=>$_POST['reg_age'], 'about'=>$_POST['reg_about'], 'ip'=>$_SERVER['REMOTE_ADDR']];
		$gump=new GUMP;
		$gump->validation_rules([
			'user'=>'required',
			'pass'=>'required',
			'email'=>'required|valid_email',
			'name'=>'required|min_len, 5',
			'age'=>'required|numeric|min_numeric, 10|max_numeric, 100',
			'about'=>'required|min_len, 50',
			'ip'=>'valid_ip'
			]);
		$gump->filter_rules([
			'user'=>'trim|sanitize_string',
			'pass'=>'trim|sanitize_string',
			'email'=>'trim|sanitize_string',
			'name'=>'trim|sanitize_string',
			'age'=>'trim|sanitize_string|sanitize_numbers|whole_number',
			'about'=>'trim|sanitize_string',
			'ip'=>'trim|sanitize_string'
		]);
		if(!$validatedData=$gump->run($toValidate)){
			return false;
		}
		if(!self::emailUserData($validatedData['user'], $validatedData['pass'], $validatedData['email'])){
			return false;
		}
		User::create(['users_login'=>$validatedData['user'], 'users_email'=>$validatedData['email'], 'users_pass'=>$validatedData['pass'], 'users_ip'=>$validatedData['ip'], 'users_name'=>$validatedData['name'], 'users_age'=>$validatedData['age'], 'users_about'=>$validatedData['about']]);
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
	private static function emailUserData($user, $pass, $email){
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
			$mail->addAddress($email);
			$mail->Subject='Регистрационные данные';
			$mail->msgHTML("<h6>Регистрационные данные:</h6>
						<p>Login: $user</p>
						<p>Pass: $pass</p>");
			$mail->altBody="Login: $user, Pass: $pass";
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
		$user=new User;
		$user=$user->where('users_login', '=', $_SESSION['users_login'])->get()->ToArray();
		return [$user[0]['users_login'], $user[0]['users_name'], $user[0]['users_age'], $user[0]['users_about'], $user[0]['users_photo'], $user[0]['users_id']];
	}
	public static function getUploadedFiles(){
		$uploadedFiles=new UploadedFiles;
		return $uploadedFiles->join('users', 'users.users_id', '=', 'uploadedFiles.users_id_ref')->where('users.users_login', '=', $_SESSION['users_login'])->pluck('uploadedFiles.uploadedFiles_name')->toArray();
	}
	public static function getUsers(){
		return User::all()->pluck('users_age', 'users_name')->toArray();
	}
	public static function updateName(){
		$toValidate=['name'=>$_POST['auth_name']];
		$gump=new GUMP;
		$gump->validation_rules([
			'name'=>'required|min_len, 5'
		]);
		$gump->filter_rules([
			'name'=>'trim|sanitize_string'
		]);
		if(!$validatedData=$gump->run($toValidate)){
			return false;
		}
		$user=new User;
		$user->where('users_login', '=', $_SESSION['users_login'])->update(['users_name'=>$validatedData['name']]);
		return true;
	}
	public static function updateAge(){
		$toValidate=['age'=>$_POST['auth_age']];
		$gump=new GUMP;
		$gump->validation_rules([
			'age'=>'required|numeric|min_numeric, 10|max_numeric, 100'
		]);
		$gump->filter_rules([
			'age'=>'trim|sanitize_string|sanitize_numbers|whole_number'
		]);
		if(!$validatedData=$gump->run($toValidate)){
			return false;
		}
		$user=new User;
		$user->where('users_login', '=', $_SESSION['users_login'])->update(['users_age'=>$validatedData['age']]);
		return true;
	}
	public static function updateAbout(){
		$toValidate=['about'=>$_POST['auth_about']];
		$gump=new GUMP;
		$gump->validation_rules([
			'about'=>'required|min_len, 50'
		]);
		$gump->filter_rules([
			'about'=>'trim|sanitize_string'
		]);
		if(!$validatedData=$gump->run($toValidate)){
			return false;
		}
		$user=new User;
		$user->where('users_login', '=', $_SESSION['users_login'])->update(['users_about'=>$validatedData['about']]);
		return true;
	}
	public static function uploadImg(){
		$user=new User;
		$res=$user->where('users_login', '=', $_SESSION['users_login'])->value('users_photo');
		if(isset($res)){
			unlink("photos/$res");
		}
		$users_photo=date('dmyHis').trim(strip_tags(htmlspecialchars($_FILES['auth_photo']['name'])));
		if(!file_exists('photos')){
			mkdir('photos');
		}
		move_uploaded_file($_FILES['auth_photo']['tmp_name'], "photos/$users_photo");
		$canvas=Image::canvas(480, 480);
		$img=Image::make("photos/$users_photo");
		$img->resize(480, 480, function($constraint){
			$constraint->aspectRatio();
		});
		$canvas->insert($img, 'center');
		$canvas->save("photos/$users_photo");
		$user->where('users_login', '=', $_SESSION['users_login'])->update(['users_photo'=>$users_photo]);
		return true;
	}
	public static function uploadFile(){
		$users_file=date('dmyHis').trim(strip_tags(htmlspecialchars($_FILES['auth_file']['name'])));
		if(!file_exists('files')){
			mkdir('files');
		}
		move_uploaded_file($_FILES['auth_file']['tmp_name'], "files/$users_file");
		UploadedFiles::create(['uploadedFiles_name'=>$users_file, 'users_id_ref'=>$_POST['auth_id']]);
		return true;
	}
}
?>