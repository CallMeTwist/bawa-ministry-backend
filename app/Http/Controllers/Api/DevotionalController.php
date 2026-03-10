<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\Api\DevotionalResource;
use App\Models\Devotional;
use App\Models\DevotionalView;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class DevotionalController extends Controller
{
    public function index()
    {
        return DevotionalResource::collection(
            Devotional::published()
                ->orderByDesc('date')
                ->paginate(6)
        );
    }

    public function today()
    {
        $devotional = Devotional::published()->today()->first()
            ?? Devotional::published()->orderByDesc('date')->first();

        if (!$devotional) {
            return response()->json(['message' => 'No devotional found'], 404);
        }

        return new DevotionalResource($devotional);
    }

    public function show(Request $request, string $slug)
    {
        $devotional = Devotional::published()
            ->where('slug', $slug)
            ->firstOrFail();

        // ── Track the view ─────────────────────────────────────────
        $ip      = $request->ip();
        $since   = Carbon::now()->subHours(24);

        $alreadyViewed = DevotionalView::where('devotional_id', $devotional->id)
            ->where('ip_address', $ip)
            ->where('viewed_at', '>=', $since)
            ->exists();

        if (!$alreadyViewed) {
            DevotionalView::create([
                'devotional_id' => $devotional->id,
                'ip_address'    => $ip,
                'viewed_at'     => Carbon::now(),
            ]);

            $devotional->increment('views');
        }
        // ───────────────────────────────────────────────────────────

        return new DevotionalResource($devotional);
    }
}
