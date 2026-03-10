<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TeamMemberResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id'         => $this->id,
            'name'       => $this->name,
            'role'       => $this->role,
            'bio'        => $this->bio,
            'sort_order' => $this->sort_order,
            'image'      => $this->image
                ? asset('storage/' . $this->image)
                : null,
        ];
    }
}
