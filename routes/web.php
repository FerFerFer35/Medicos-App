<?php

use App\Http\Controllers\MedicoController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
})->name('home');

Route::prefix('medicos')
    ->name('medicos.')
    ->group(function () {

        Route::get('/', [MedicoController::class, 'index'])->name('index');

        Route::get('/create', [MedicoController::class, 'create'])->name('create');

        Route::post('/', [MedicoController::class, 'store'])->name('store');

        Route::get('/{medico}/edit', [MedicoController::class, 'edit'])->name('edit');

        Route::put('/{medico}', [MedicoController::class, 'update'])->name('update');

        Route::delete('/{medico}', [MedicoController::class, 'destroy'])->name('destroy');
    });
