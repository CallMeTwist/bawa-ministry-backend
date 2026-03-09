<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class DailyVerseResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id'               => $this->id,
            'verse_text'       => $this->verse_text,
            'reference'        => $this->reference,
            'translation'      => $this->translation ?? 'NIV',
            'date'             => $this->date?->format('Y-m-d'),
            'theme_color'      => $this->theme_color,
            'background_image' => $this->background_image
                ? asset('storage/' . $this->background_image)
                : null,
        ];
    }
}
