<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
    ];

    protected static function booted(): void
    {
        static::creating(function ($event) {
            if (empty($event->slug)) {
                $event->slug = \Illuminate\Support\Str::slug($event->title) . '-' . uniqid();
            }
        });
    }

    protected $casts = [
        'date' => 'date',
        'end_date' => 'date',
        'is_published' => 'boolean',
        'is_featured' => 'boolean',
    ];

    public function scopePublished($query)
    {
        return $query->where('is_published', true);
    }

    public function scopeUpcoming($query)
    {
        return $query->where('date', '>=', today());
    }


}
