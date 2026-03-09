<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\Api\MinistryResource;
use App\Models\Ministry;

class MinistryController extends Controller
{
    /**
     * GET /api/ministries
     * Returns all published ministries ordered by sort_order.
     */
    public function index()
    {
        $ministries = Ministry::published()->get();

        return MinistryResource::collection($ministries);
    }

    /**
     * GET /api/ministries/{slug}
     */
    public function show(string $slug)
    {
        $ministry = Ministry::published()->where('slug', $slug)->firstOrFail();

        return new MinistryResource($ministry);
    }
}
