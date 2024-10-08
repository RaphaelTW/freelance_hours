<?php

use App\Http\Controllers\WelcomeController;

use Illuminate\Support\Facades\Route;

Route::get('/', WelcomeController::class);

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/easter-eggs', fn () => 'Oi eu sou o Rapha');
