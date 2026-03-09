<?php

namespace Database\Seeders;

use App\Models\DailyVerse;
use Illuminate\Database\Seeder;

class DailyVerseSeeder extends Seeder
{
    public function run(): void
    {
        $verses = [
            // Today's scheduled verse
            [
                'verse_text'       => 'I can do all this through him who gives me strength.',
                'reference'        => 'Philippians 4:13',
                'translation'      => 'NIV',
                'date'             => today(),
                'theme_color'      => '#1B2A4A',
                'is_active'        => true,
            ],
            // Random pool — no dates
            [
                'verse_text'       => 'For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.',
                'reference'        => 'John 3:16',
                'translation'      => 'NIV',
                'date'             => null,
                'theme_color'      => '#1B2A4A',
                'is_active'        => true,
            ],
            [
                'verse_text'       => 'The Lord is my shepherd, I lack nothing.',
                'reference'        => 'Psalm 23:1',
                'translation'      => 'NIV',
                'date'             => null,
                'theme_color'      => '#2C4A2E',
                'is_active'        => true,
            ],
            [
                'verse_text'       => 'Trust in the Lord with all your heart and lean not on your own understanding; in all your ways submit to him, and he will make your paths straight.',
                'reference'        => 'Proverbs 3:5-6',
                'translation'      => 'NIV',
                'date'             => null,
                'theme_color'      => '#4A2C1A',
                'is_active'        => true,
            ],
            [
                'verse_text'       => 'Be strong and courageous. Do not be afraid; do not be discouraged, for the Lord your God will be with you wherever you go.',
                'reference'        => 'Joshua 1:9',
                'translation'      => 'NIV',
                'date'             => null,
                'theme_color'      => '#1B2A4A',
                'is_active'        => true,
            ],
            [
                'verse_text'       => 'And we know that in all things God works for the good of those who love him, who have been called according to his purpose.',
                'reference'        => 'Romans 8:28',
                'translation'      => 'NIV',
                'date'             => null,
                'theme_color'      => '#2C2A4A',
                'is_active'        => true,
            ],
            [
                'verse_text'       => 'Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God.',
                'reference'        => 'Philippians 4:6',
                'translation'      => 'NIV',
                'date'             => null,
                'theme_color'      => '#1B2A4A',
                'is_active'        => true,
            ],
            [
                'verse_text'       => 'The Lord your God is with you, the Mighty Warrior who saves. He will take great delight in you; in his love he will no longer rebuke you, but will rejoice over you with singing.',
                'reference'        => 'Zephaniah 3:17',
                'translation'      => 'NIV',
                'date'             => null,
                'theme_color'      => '#4A3A1A',
                'is_active'        => true,
            ],
            [
                'verse_text'       => 'Come to me, all you who are weary and burdened, and I will give you rest.',
                'reference'        => 'Matthew 11:28',
                'translation'      => 'NIV',
                'date'             => null,
                'theme_color'      => '#1B2A4A',
                'is_active'        => true,
            ],
            [
                'verse_text'       => 'But those who hope in the Lord will renew their strength. They will soar on wings like eagles; they will run and not grow weary, they will walk and not be faint.',
                'reference'        => 'Isaiah 40:31',
                'translation'      => 'NIV',
                'date'             => null,
                'theme_color'      => '#1A3A4A',
                'is_active'        => true,
            ],
        ];

        foreach ($verses as $data) {
            DailyVerse::create($data);
        }
    }
}
