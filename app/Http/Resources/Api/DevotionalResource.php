<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class DevotionalResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id'                  => $this->id,
            'title'               => $this->title,
            'slug'                => $this->slug,
            'author'              => $this->author,
            'scripture_reference' => $this->scripture_reference,
            'verse_text'          => $this->verse_text,
            'excerpt'             => $this->excerpt,
            'message'             => $this->message,
            'prayer'              => $this->prayer,
            'date'                => $this->date?->format('Y-m-d'),
            'featured_image'      => $this->featured_image
                ? asset('storage/' . $this->featured_image)
                : null,
            'created_at'          => $this->created_at?->toISOString(),
        ];
    }
}
