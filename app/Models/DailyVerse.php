<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DailyVerse extends Model
{
    use HasFactory;

    protected $fillable = [
        'verse_text',
        'reference',
        'translation',
        'date',
        'background_image',
        'theme_color',
        'is_active',
    ];

    protected $casts = [
        'date' => 'date',
        'is_active' => 'boolean',
    ];

    public static function forToday(): ?self
    {
        // First try an explicitly scheduled verse for today
        $verse = static::where('date', today())->where('is_active', true)->first();

        // Fallback: pick a random active verse
        if (!$verse) {
            $verse = static::where('is_active', true)->inRandomOrder()->first();
        }

        return $verse;
    }
}
