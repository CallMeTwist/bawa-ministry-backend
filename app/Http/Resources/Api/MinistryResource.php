<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class MinistryResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id'           => $this->id,
            'name'         => $this->name,
            'slug'         => $this->slug,
            'description'  => $this->description,
            'leader'       => $this->leader,
            'email'        => $this->email,
            'meeting_time' => $this->meeting_time,
            'icon'         => $this->icon,
            'image'        => $this->image
                ? asset('storage/' . $this->image)
                : null,
        ];
    }
}
