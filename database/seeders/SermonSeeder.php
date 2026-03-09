<?php

namespace Database\Seeders;

use App\Models\Sermon;
use Illuminate\Database\Seeder;

class SermonSeeder extends Seeder
{
    public function run(): void
    {
        $sermons = [
            [
                'title'               => 'The God Who Sees You',
                'speaker'             => 'Pastor James Okafor',
                'scripture_reference' => 'Genesis 16:13',
                'description'         => 'Hagar was alone, abandoned, and afraid — yet God found her. In this powerful message, we explore what it means to be truly seen by God, even in our lowest moments.',
                'youtube_url'         => 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                'date'                => today()->subWeeks(1),
                'series'              => 'Names of God',
                'is_published'        => true,
                'is_featured'         => true,
            ],
            [
                'title'               => 'More Than Enough',
                'speaker'             => 'Pastor James Okafor',
                'scripture_reference' => 'Philippians 4:19',
                'description'         => 'God does not promise to meet some of our needs. He promises to meet ALL of our needs. This sermon unpacks what that promise really means and how to stand on it.',
                'youtube_url'         => 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                'date'                => today()->subWeeks(2),
                'series'              => 'Promises of God',
                'is_published'        => true,
                'is_featured'         => true,
            ],
            [
                'title'               => 'When God Delays',
                'speaker'             => 'Minister Grace Adeyemi',
                'scripture_reference' => 'John 11:1-44',
                'description'         => 'Lazarus was dead four days before Jesus arrived. Yet Jesus said this delay was for God\'s glory. What do we do in the waiting seasons of our lives?',
                'youtube_url'         => 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                'date'                => today()->subWeeks(3),
                'series'              => 'Trusting God',
                'is_published'        => true,
                'is_featured'         => true,
            ],
            [
                'title'               => 'The Armor of God',
                'speaker'             => 'Pastor James Okafor',
                'scripture_reference' => 'Ephesians 6:10-18',
                'description'         => 'We are in a spiritual battle whether we acknowledge it or not. This practical sermon walks through each piece of the armor of God and how to use it daily.',
                'youtube_url'         => 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                'date'                => today()->subWeeks(4),
                'series'              => 'Spiritual Warfare',
                'is_published'        => true,
                'is_featured'         => false,
            ],
            [
                'title'               => 'Forgiveness Is Not Optional',
                'speaker'             => 'Deaconess Faith Nwosu',
                'scripture_reference' => 'Matthew 6:14-15',
                'description'         => 'Unforgiveness is a prison — and you are the one locked inside. This message confronts the hard truth about forgiveness and the freedom that comes when we choose to release others.',
                'youtube_url'         => 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                'date'                => today()->subWeeks(5),
                'series'              => null,
                'is_published'        => true,
                'is_featured'         => false,
            ],
            [
                'title'               => 'Redeeming the Time',
                'speaker'             => 'Minister Grace Adeyemi',
                'scripture_reference' => 'Ephesians 5:15-16',
                'description'         => 'Time is the one resource you cannot get back. This sermon challenges us to be intentional about how we spend our days in light of eternity.',
                'youtube_url'         => 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                'date'                => today()->subWeeks(6),
                'series'              => 'Intentional Living',
                'is_published'        => true,
                'is_featured'         => false,
            ],
        ];

        foreach ($sermons as $data) {
            Sermon::create($data);
        }
    }
}
