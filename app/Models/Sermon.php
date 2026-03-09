<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sermon extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'speaker',
        'scripture_reference',
        'description',
        'youtube_url',
        'youtube_video_id',
        'date',
        'series',
        'thumbnail',
        'is_published',
        'is_featured',
    ];

    protected $casts = [
        'date' => 'date',
        'is_published' => 'boolean',
        'is_featured' => 'boolean',
    ];

    protected static function boot()
    {
        parent::boot();

        static::saving(function ($sermon) {
            if ($sermon->youtube_url) {
                $sermon->youtube_video_id = self::extractYouTubeId($sermon->youtube_url);
                if (!$sermon->thumbnail && $sermon->youtube_video_id) {
                    $sermon->thumbnail = "https://img.youtube.com/vi/{$sermon->youtube_video_id}/hqdefault.jpg";
                }
            }
        });
    }

    public static function extractYouTubeId(string $url): ?string
    {
        preg_match(
            '/(?:youtube\.com\/(?:[^\/]+\/.+\/|(?:v|e(?:mbed)?)\/|.*[?&]v=)|youtu\.be\/)([^"&?\/\s]{11})/',
            $url,
            $matches
        );
        return $matches[1] ?? null;
    }

    public function getEmbedUrlAttribute(): ?string
    {
        return $this->youtube_video_id
            ? "https://www.youtube.com/embed/{$this->youtube_video_id}"
            : null;
    }

    public function scopePublished($query)
    {
        return $query->where('is_published', true);
    }

    public function scopeFeatured($query)
    {
        return $query->where('is_featured', true);
    }
}
