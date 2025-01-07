<?php

use App\Http\Controllers\TailwickController;
use App\Http\Controllers\Web\CandidateController;
use App\Http\Controllers\RouteController;
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

// Route::get('/access-denied', function () {
//     return view('denied.show');
// })->name('access-denied');

Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified',])->group(function () {
    
    // Route::get("/", [CandidateController::class, 'index'])->name('candidate');
    // Route::post("/add", [CandidateController::class, 'store'])->name('candidate.store');

    Route::resource('candidate', CandidateController::class)->only([
        'index', 'show', 'store', 'update',
    ]);

    //Route::get("candidate", [RouteController::class, 'routes'])->name('candidate');
});


