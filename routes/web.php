<?php

use App\Http\Controllers\TailwickController;
use App\Http\Controllers\Web\CandidateController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('index/{locale}', [TailwickController::class, 'lang']);

Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified',])->group(function () {
    Route::resource('portal/candidate', CandidateController::class)->only([
        'index', 'show', 'destroy', 'update'
    ]);
});


