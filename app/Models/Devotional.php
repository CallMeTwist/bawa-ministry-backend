<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Devotional extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'slug',
        'author',
        'scripture_reference',
        'verse_text',
        'excerpt',
        'message',
        'prayer',
        'date',
        'is_published',
        'featured_image',
    ];

    protected $casts = [
        'date' => 'date',
        'is_published' => 'boolean',
    ];

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($devotional) {
            if (empty($devotional->slug)) {
                $devotional->slug = Str::slug($devotional->title);
            }
        });
    }

    public function scopePublished($query)
    {
        return $query->where('is_published', true);
    }

    public function scopeToday($query)
    {
        return $query->whereDate('date', today());
    }
}
