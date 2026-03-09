<?php

namespace Database\Seeders;

use App\Models\Event;
use Illuminate\Database\Seeder;

class EventSeeder extends Seeder
{
    public function run(): void
    {
        $events = [
            [
                'title'            => 'Easter Sunday Celebration',
                'description'      => 'Join us for a powerful Easter Sunday service as we celebrate the resurrection of our Lord Jesus Christ. Come with family and friends for a morning of worship, praise, and the Gospel message.',
                'date'             => today()->addDays(12),
                'end_date'         => null,
                'time'             => '8:00 AM & 10:30 AM',
                'location'         => 'Main Sanctuary',
                'category'         => 'service',
                'registration_url' => null,
                'is_published'     => true,
                'is_featured'      => true,
            ],
            [
                'title'            => 'Youth Conference 2025',
                'description'      => 'A three-day conference designed to ignite the faith of young people aged 13–25. Featuring worship nights, breakout sessions, and dynamic speakers from across the country.',
                'date'             => today()->addDays(20),
                'end_date'         => today()->addDays(22),
                'time'             => 'Fri 6:00 PM – Sun 4:00 PM',
                'location'         => 'Church Auditorium & Fellowship Hall',
                'category'         => 'youth',
                'registration_url' => 'https://forms.google.com',
                'is_published'     => true,
                'is_featured'      => true,
            ],
            [
                'title'            => 'Community Outreach Day',
                'description'      => 'We are heading into the community to show the love of Christ in practical ways. Activities include food distribution, free medical checkups, and children\'s entertainment. All volunteers welcome.',
                'date'             => today()->addDays(30),
                'end_date'         => null,
                'time'             => '9:00 AM – 2:00 PM',
                'location'         => 'Karu Market Square, Abuja',
                'category'         => 'outreach',
                'registration_url' => null,
                'is_published'     => true,
                'is_featured'      => false,
            ],
            [
                'title'            => 'Men\'s Prayer Breakfast',
                'description'      => 'A monthly gathering for the men of the church to share a meal, pray together, and encourage one another. This month\'s theme: Courage in the Workplace.',
                'date'             => today()->addDays(8),
                'end_date'         => null,
                'time'             => '7:30 AM – 9:30 AM',
                'location'         => 'Fellowship Hall',
                'category'         => 'prayer',
                'registration_url' => null,
                'is_published'     => true,
                'is_featured'      => false,
            ],
            [
                'title'            => 'Marriage Enrichment Seminar',
                'description'      => 'A one-day seminar for married couples and those preparing for marriage. Topics include communication, conflict resolution, intimacy, and building a Christ-centred home.',
                'date'             => today()->addDays(45),
                'end_date'         => null,
                'time'             => '10:00 AM – 4:00 PM',
                'location'         => 'Conference Room A & B',
                'category'         => 'conference',
                'registration_url' => 'https://forms.google.com',
                'is_published'     => true,
                'is_featured'      => false,
            ],
            [
                'title'            => 'Midweek Bible Study',
                'description'      => 'Our weekly deep-dive into Scripture. This month we are studying the book of Romans. Open to all members and visitors.',
                'date'             => today()->addDays(3),
                'end_date'         => null,
                'time'             => '6:00 PM – 7:30 PM',
                'location'         => 'Main Hall',
                'category'         => 'service',
                'registration_url' => null,
                'is_published'     => true,
                'is_featured'      => false,
            ],
        ];

        foreach ($events as $data) {
            Event::create($data);
        }
    }
}
