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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

Route::get('/flims/show', ['as' => 'flims.show', 'uses' => 'FlimController@ShowFlim']);
Route::get('/flims/show/{slug}', ['as' => 'flims.single', 'uses' => 'FlimController@SingleFlim']);
Route::get('/flims/create', ['as' => 'flims.create', 'uses' => 'FlimController@create']);
Route::post('/flims/save', ['as' => 'flims.save', 'uses' => 'FlimController@StoreFlim']);

Route::post('/flims/comment/save/{id}', ['as' => 'comment.save', 'uses' => 'FlimController@Comment']);



