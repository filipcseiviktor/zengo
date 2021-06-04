<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', 'CountyController@index')->name('index');

Route::post('select', 'CityController@select')->name('select');
Route::post('store', 'CityController@store')->name('store');
Route::post('update', 'CityController@update')->name('update');
Route::post('delete', 'CityController@delete')->name('delete');