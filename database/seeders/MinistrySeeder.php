<?php

namespace Database\Seeders;

use App\Models\Ministry;
use Illuminate\Database\Seeder;

class MinistrySeeder extends Seeder
{
    public function run(): void
    {
        $ministries = [
            [
                'name'         => 'Youth Ministry',
                'slug'         => 'youth',
                'description'  => 'Empowering young people aged 13–25 to discover their identity in Christ and live boldly for God in their generation.',
                'leader'       => 'Bro. Samuel Eze',
                'email'        => 'youth@gracechapel.org',
                'meeting_time' => 'Saturdays at 4:00 PM',
                'icon'         => 'heroicon-o-user-group',
                'sort_order'   => 1,
                'is_published' => true,
            ],
            [
                'name'         => 'Prayer Ministry',
                'slug'         => 'prayer',
                'description'  => 'Committed to covering the church, its members, and the nation in consistent, fervent prayer. Intercession is our calling.',
                'leader'       => 'Sis. Blessing Adamu',
                'email'        => 'prayer@gracechapel.org',
                'meeting_time' => 'Tuesdays & Fridays at 6:00 AM',
                'icon'         => 'heroicon-o-hand-raised',
                'sort_order'   => 2,
                'is_published' => true,
            ],
            [
                'name'         => 'Outreach Ministry',
                'slug'         => 'outreach',
                'description'  => 'Taking the love of Christ beyond the church walls — through evangelism, community service, and practical support for the vulnerable.',
                'leader'       => 'Deacon Philip Musa',
                'email'        => 'outreach@gracechapel.org',
                'meeting_time' => 'Last Saturday of every month',
                'icon'         => 'heroicon-o-globe-alt',
                'sort_order'   => 3,
                'is_published' => true,
            ],
            [
                'name'         => 'Bible Study Groups',
                'slug'         => 'bible-study',
                'description'  => 'Small groups that meet across the city for in-depth Bible study, fellowship, and mutual accountability in the faith.',
                'leader'       => 'Pastor James Okafor',
                'email'        => 'biblestudy@gracechapel.org',
                'meeting_time' => 'Wednesdays at 6:00 PM',
                'icon'         => 'heroicon-o-book-open',
                'sort_order'   => 4,
                'is_published' => true,
            ],
        ];

        foreach ($ministries as $data) {
            Ministry::create($data);
        }
    }
}
