<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\Api\DevotionalResource;
use App\Models\Devotional;
use Illuminate\Http\Request;

class DevotionalController extends Controller
{
    /**
     * GET /api/devotionals
     * Returns paginated list of published devotionals (newest first).
     */
    public function index(Request $request)
    {
        $devotionals = Devotional::published()
            ->orderByDesc('date')
            ->paginate($request->integer('per_page', 12));

        return DevotionalResource::collection($devotionals);
    }

    /**
     * GET /api/devotionals/today
     * Returns today's devotional if one exists.
     */
    public function today()
    {
        $devotional = Devotional::published()->today()->first();

        if (!$devotional) {
            return response()->json(['message' => 'No devotional for today.'], 404);
        }

        return new DevotionalResource($devotional);
    }

    /**
     * GET /api/devotionals/{slug}
     * Returns a single devotional by slug.
     */
    public function show(string $slug)
    {
        $devotional = Devotional::published()->where('slug', $slug)->firstOrFail();

        return new DevotionalResource($devotional);
    }
}
