<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Event extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'slug',
        'description',
        'date',
        'end_date',
        'time',
        'location',
        'theme',
        'image',
        'is_published',
        'is_featured',
        'registration_url',
        'category',
        'video_urls',
    ];

    protected static function booted(): void
    {
        static::creating(function ($event) {
            if (empty($event->slug)) {
                $base = \Illuminate\Support\Str::slug($event->title);
                $slug = $base;
                $count = 1;

                // keep incrementing until the slug is unique
                while (static::where('slug', $slug)->exists()) {
                    $slug = $base . '-' . $count;
                    $count++;
                }

                $event->slug = $slug;
            }
        });
    }

    protected $casts = [
        'date' => 'date',
        'end_date' => 'date',
        'is_published' => 'boolean',
        'is_featured' => 'boolean',
        'video_urls' => 'array',
    ];

    public function photos(): HasMany
    {
        return $this->hasMany(EventPhoto::class)->orderBy('sort_order');
    }

    public static function extractYouTubeId(?string $url): ?string
    {
        if (! $url) {
            return null;
        }
        preg_match(
            '/(?:youtube\.com\/(?:[^\/]+\/.+\/|(?:v|e(?:mbed)?)\/|.*[?&]v=)|youtu\.be\/)([^"&?\/\s]{11})/',
            $url,
            $matches
        );
        return $matches[1] ?? null;
    }

    public function scopePublished($query)
    {
        return $query->where('is_published', true);
    }

    public function scopeUpcoming($query)
    {
        return $query->where('date', '>=', now()->subDays(7));
    }


}
