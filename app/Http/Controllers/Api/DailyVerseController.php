<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\Api\DailyVerseResource;
use App\Models\DailyVerse;

class DailyVerseController extends Controller
{
    /**
     * GET /api/daily-verse
     * Returns today's verse (scheduled or random fallback).
     */
    public function today()
    {
        $verse = DailyVerse::forToday();

        if (!$verse) {
            return response()->json(['message' => 'No verse available.'], 404);
        }

        return new DailyVerseResource($verse);
    }
}
