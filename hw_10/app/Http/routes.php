<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::get('/', 'IndexController@product');
Route::get('about', 'IndexController@about');
Route::get('logout', 'UserController@logout');
Route::get('news', 'IndexController@news');
Route::get('category/{slug}', 'CategoryController@show');
Route::get('product/{slug}', 'ProductController@show');
Route::get('news/{slug}', 'NewsController@show');
Route::get('cart', 'ProductController@cart');
Route::post('register', 'UserController@register');
Route::post('login', 'UserController@login');
Route::post('addToCart', 'ProductController@addToCart');
Route::post('checkout', 'ProductController@checkout');
Route::group(['middleware'=>'isAdmin'], function(){
	Route::get('admin', 'IndexController@admin');
	Route::get('admin/category/new', 'CategoryController@create');
	Route::get('admin/news/new', 'NewsController@create');
	Route::get('admin/product/new', 'ProductController@create');
	Route::get('admin/category/{slug}/edit', 'CategoryController@edit');
	Route::get('admin/news/{slug}/edit', 'NewsController@edit');
	Route::get('admin/product/{slug}/edit', 'ProductController@edit');
	Route::get('admin/orders', 'IndexController@orders');
	Route::post('admin/notifications', 'UserController@adminNotificationsChange');
	Route::post('admin/category/new', 'CategoryController@storeCreated');
	Route::post('admin/news/new', 'NewsController@storeCreated');
	Route::post('admin/product/new', 'ProductController@storeCreated');
	Route::post('admin/category/edit', 'CategoryController@storeEdited');
	Route::post('admin/news/edit', 'NewsController@storeEdited');
	Route::post('admin/product/edit', 'ProductController@storeEdited');
	Route::post('admin/category/delete', 'CategoryController@delete');
	Route::post('admin/news/delete', 'NewsController@delete');
	Route::post('admin/product/delete', 'ProductController@delete');
});