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

Route::get('/', function () {
    return view('evento.index');
})->middleware("auth");

Auth::routes();

//restringe las rutas
Route::group(['middleware'=> ['auth']], function(){

//rutas del controlador
Route::get('/evento', [App\Http\Controllers\EventoController::class, 'index']);
Route::post('/evento/mostrar', [App\Http\Controllers\EventoController::class, 'show']);
Route::post('/evento/crear', [App\Http\Controllers\EventoController::class, 'store']);
Route::post('/evento/editar/{id}', [App\Http\Controllers\EventoController::class, 'edit']);
Route::post('/evento/actualizar/{evento}', [App\Http\Controllers\EventoController::class, 'update']);
Route::post('/evento/eliminar/{id}', [App\Http\Controllers\EventoController::class, 'destroy']);
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
