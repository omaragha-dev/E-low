<?php

use GuzzleHttp\Middleware;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\RolesController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\PermissionsController;

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

Route::middleware(['auth'])->group(function () { //, 'verified'
    Route::get('/dashboard', [HomeController::class, 'index'])->name('dashboard');
    Route::group(['prefix' => '/dashboard/users'], function () {
        Route::get('/', [UsersController::class, 'index'])->name('users.index');
        Route::get('/create',  [UsersController::class, 'create'])->name('users.create');
        Route::post('/create', [UsersController::class, 'store'])->name('users.store');
        Route::get('/{id}/show', [UsersController::class, 'show'])->name('users.show');
        Route::get('/{user}/edit', [UsersController::class, 'edit'])->name('users.edit');
        Route::patch('/{user}/update', [UsersController::class, 'update'])->name('users.update');
        Route::get('/{user}/delete', [UsersController::class, 'destroy'])->name('users.destroy');
    });
    Route::resource('/dashboard/roles', RolesController::class);
    Route::resource('/dashboard/permissions', PermissionsController::class);
});



require __DIR__ . '/auth.php';
