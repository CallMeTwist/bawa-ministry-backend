<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\Api\TeamMemberResource;
use App\Models\TeamMember;

class TeamMemberController extends Controller
{
    public function index()
    {
        return TeamMemberResource::collection(
            TeamMember::published()->get()
        );
    }
}
