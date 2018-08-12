<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'EmpsController@index');

Route::resource('emp','EmpsController');

Route::get('profile', 'UsersController@profile');

Route::post('profile', 'UsersController@update_avatar'); 
Auth::routes();

Route::get('/dashboard', 'DashboardController@index');
