<?php

use App\Http\Controllers\Api\DailyVerseController;
use App\Http\Controllers\Api\DevotionalController;
use App\Http\Controllers\Api\EventController;
use App\Http\Controllers\Api\MinistryController;
use App\Http\Controllers\Api\SermonController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::prefix('v1')->group(function () {

    // Daily Verse
    Route::get('/daily-verse', [DailyVerseController::class, 'today']);

    // Devotionals
    Route::get('/devotionals',         [DevotionalController::class, 'index']);
    Route::get('/devotionals/today',   [DevotionalController::class, 'today']);
    Route::get('/devotionals/{slug}',  [DevotionalController::class, 'show']);

    // Sermons
    Route::get('/sermons',             [SermonController::class, 'index']);
    Route::get('/sermons/featured',    [SermonController::class, 'featured']);
    Route::get('/sermons/{sermon}',    [SermonController::class, 'show']);

    // Events
    Route::get('/events',              [EventController::class, 'index']);
    Route::get('/events/{event}',      [EventController::class, 'show']);

    // Ministries
    Route::get('/ministries',          [MinistryController::class, 'index']);
    Route::get('/ministries/{slug}',   [MinistryController::class, 'show']);

    //Team Members
    Route::get('/team', [\App\Http\Controllers\Api\TeamMemberController::class, 'index']);

});
