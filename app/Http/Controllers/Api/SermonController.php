<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\Api\SermonResource;
use App\Models\Sermon;
use Illuminate\Http\Request;

class SermonController extends Controller
{
    /**
     * GET /api/sermons
     * Returns paginated list of published sermons (newest first).
     */
    public function index(Request $request)
    {
        $sermons = Sermon::published()
            ->when($request->series, fn ($q) => $q->where('series', $request->series))
            ->when($request->speaker, fn ($q) => $q->where('speaker', $request->speaker))
            ->orderByDesc('date')
            ->paginate($request->integer('per_page', 12));

        return SermonResource::collection($sermons);
    }

    /**
     * GET /api/sermons/featured
     * Returns featured sermons.
     */
    public function featured()
    {
        $sermons = Sermon::published()->featured()->orderByDesc('date')->take(6)->get();

        return SermonResource::collection($sermons);
    }

    /**
     * GET /api/sermons/{id}
     */
    public function show(Sermon $sermon)
    {
        abort_unless($sermon->is_published, 404);

        return new SermonResource($sermon);
    }
}
