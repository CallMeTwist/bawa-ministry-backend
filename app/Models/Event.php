<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
        'date',
        'end_date',
        'time',
        'location',
        'image',
        'is_published',
        'is_featured',
        'registration_url',
        'category',
    ];

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
        return $query->where('date', '>=', today())->orderBy('date');
    }
}
