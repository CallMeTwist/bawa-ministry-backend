<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class SermonResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id'                  => $this->id,
            'title'               => $this->title,
            'speaker'             => $this->speaker,
            'scripture_reference' => $this->scripture_reference,
            'description'         => $this->description,
            'youtube_url'         => $this->youtube_url,
            'youtube_video_id'    => $this->youtube_video_id,
            'embed_url'           => $this->embed_url,
            'thumbnail'           => $this->thumbnail,
            'date'                => $this->date?->format('Y-m-d'),
            'series'              => $this->series,
            'is_featured'         => $this->is_featured,
        ];
    }
}
