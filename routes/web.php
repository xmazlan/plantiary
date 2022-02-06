<?php

use App\Http\Livewire\Plant;
use App\Http\Livewire\Region;
use Illuminate\Support\Facades\Route;

// sometimes you must using command php artisan optimize:clear to clear the cache

Route::get('/', function () {
    return view('welcome');
})->name('welcome');

Route::prefix('dashboard')->middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('/', function () {
        return view('dashboard');
    })->name('dashboard');

    Route::get('region', Region::class)->name('region');
    Route::get('plant', Plant::class)->name('plant');
});
