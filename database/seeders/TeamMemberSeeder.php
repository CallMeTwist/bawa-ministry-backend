<?php

namespace Database\Seeders;

use App\Models\TeamMember;
use Illuminate\Database\Seeder;

class TeamMemberSeeder extends Seeder
{
    public function run(): void
    {
        $members = [
            [
                'name'         => 'Pastor James Okafor',
                'role'         => 'Senior Pastor',
                'bio'          => 'Leading Grace Church with a heart for worship and community transformation. And a bit more information',
                'image'        => null,
                'sort_order'   => 1,
                'is_published' => true,
            ],
            [
                'name'         => 'Sister Grace Adeyemi',
                'role'         => 'Associate Pastor',
                'bio'          => 'Passionate about teaching God\'s Word and raising leaders within the church community.',
                'image'        => null,
                'sort_order'   => 2,
                'is_published' => true,
            ],
        ];

        foreach ($members as $data) {
            TeamMember::create($data);
        }
    }
}
