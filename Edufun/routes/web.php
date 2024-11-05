<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('/edufun')->group(function(){
    Route::get('/home', [HomeController::class,'index'])
    ->name('edufun.home');

    Route::get('/interactive', [HomeController::class,'viewInt'])
    ->name('edufun.interactive');

    Route::get('/software', [HomeController::class,'viewSoft'])
    ->name('edufun.software');

    Route::get('/artikel/{id}', [HomeController::class,'showArtikel'])
    ->name('edufun.artikel');

    Route::get('/writer', function(){
        return view('edufun.writer');
    })->name('edufun.writer');

    Route::get('/adi', [HomeController::class,'showAdi'])
    ->name('edufun.adi');

    Route::get('/acil', [HomeController::class,'showAcil'])
    ->name('edufun.acil');

    Route::get('/aboutus', function(){
        return view('edufun.aboutus');
    })->name('edufun.aboutus');

    Route::get('/popular', [HomeController::class,'popular'])
    ->name('edufun.popular');
});