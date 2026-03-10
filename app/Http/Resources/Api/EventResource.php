<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class EventResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id'               => $this->id,
            'title'            => $this->title,
            'description'      => $this->description,
            'date'             => $this->date?->format('Y-m-d'),
            'end_date'         => $this->end_date?->format('Y-m-d'),
            'time'             => $this->time,
            'location'         => $this->location,
            'category'         => $this->category,
            'theme'            => $this->theme,
            'registration_url' => $this->registration_url,
            'is_featured'      => $this->is_featured,
            'image'            => $this->image
                ? asset('storage/' . $this->image)
                : null,
        ];
    }
}
