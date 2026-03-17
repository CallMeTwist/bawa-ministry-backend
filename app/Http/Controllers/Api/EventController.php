<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\Api\EventResource;
use App\Models\Event;
use Illuminate\Http\Request;

class EventController extends Controller
{
    /**
     * GET /api/events
     * Returns upcoming published events ordered by date.
     */
    public function index(Request $request)
    {
        $events = Event::published()
            ->upcoming()
            ->when($request->category, fn ($q) => $q->where('category', $request->category))
            ->orderByDesc('date')
            ->paginate($request->integer('per_page', 10));

        return EventResource::collection($events);
    }

    /**
     * GET /api/events/{id}
     */
    public function show(Event $event)
    {
        abort_unless($event->is_published, 404);

        return new EventResource($event);
    }

    public function featured()
    {
        return EventResource::collection(
            Event::published()
                ->where('is_featured', true)
                ->upcoming()
                ->orderByDesc('date')
                ->limit(4)
                ->get()
        );
    }
}
