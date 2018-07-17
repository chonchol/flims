<?php

use Illuminate\Http\Request;
Use App\Flim;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('flims', 'FlimController@index');
Route::get('flims/{flim}', 'FlimController@show');
Route::post('flims', 'FlimController@store');
Route::put('flims/{flim}', 'FlimController@update');
Route::delete('flims/{flim}', 'FlimController@delete');

