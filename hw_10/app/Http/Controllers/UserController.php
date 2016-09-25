<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Validator;
use Auth;
use Hash;
use App\User;

class UserController extends Controller
{
    public function register(Request $request){
        $validator=Validator::make(
            [
                'login'=>$request->login,
                'email'=>$request->email,
                'password'=>$request->password,
                'password_confirmation'=>$request->password_confirmation
            ],
            [
            'login'=>'required|alpha_dash|unique:users,login',
            'email'=>'required|email',
            'password'=>'required',
            'password_confirmation'=>'required|same:password'
            ]
        );
        if($validator->fails()){
            return response()->json(['success'=>false, 'validationErrors'=>$validator->errors()->toArray()]);
        }
        $user=new User;
        $user->login=$request->login;
        $user->email=$request->email;
        $user->password=Hash::make($request->password);
        $user->isadmin=$request->has('isadmin')?1:0;
        $user->save();
        Auth::loginUsingId($user->id);
        return response()->json(['success'=>true]);
    }
    public function login(Request $request){
        $user=User::where('login', '=', $request->login)->first();
        if(!$user || !Hash::check($request->password, $user->password)){
            return response()->json(['success'=>false, 'errors'=>'Неверный логин или пароль.']);
        }
        Auth::loginUsingId($user->id);
        return response()->json(['success'=>true]);
    }
    public function logout(){
        Auth::logout();
        return redirect('/');
    }
    public function adminNotificationsChange(Request $request){
        $validator=Validator::make(
            [
                'email'=>$request->email
            ],
            [
            'email'=>'required|email',
            ]
        );
        if($validator->fails()){
            return response()->json(['success'=>false, 'validationErrors'=>$validator->errors()->toArray()]);
        }
        $user=User::find($request->id);
        $user->email=$request->email;
        $user->save();
        return response()->json(['success'=>true]);
    }
}
