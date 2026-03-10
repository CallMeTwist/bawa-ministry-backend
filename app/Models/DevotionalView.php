<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DevotionalView extends Model
{
    public $timestamps = false;

    protected $fillable = [
        'devotional_id',
        'ip_address',
        'viewed_at',
    ];

    protected $casts = [
        'viewed_at' => 'datetime',
    ];
}
