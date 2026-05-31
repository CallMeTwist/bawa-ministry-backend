<?php

namespace App\Http\Resources\Api;

use App\Models\Event;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class EventResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        $isDetail = $request->route()?->getActionMethod() === 'show';

        $data = [
            'id'               => $this->id,
            'title'            => $this->title,
            'slug'             => $this->slug,
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

        if ($isDetail) {
            $data['photos'] = $this->photos->map(fn ($photo) => [
                'url'        => $photo->url,
                'sort_order' => $photo->sort_order,
            ])->values();

            $videos = collect($this->video_urls ?? [])
                ->filter()
                ->take(3)
                ->map(function (string $url) {
                    $id = Event::extractYouTubeId($url);
                    return [
                        'url'        => $url,
                        'youtube_id' => $id,
                        'embed_url'  => $id ? "https://www.youtube-nocookie.com/embed/{$id}" : null,
                    ];
                })
                ->filter(fn ($v) => $v['youtube_id'] !== null)
                ->values();

            $data['videos'] = $videos;
        }

        return $data;
    }
}
