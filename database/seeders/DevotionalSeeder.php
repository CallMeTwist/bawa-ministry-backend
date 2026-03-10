<?php

namespace Database\Seeders;

use App\Models\Devotional;
use Illuminate\Database\Seeder;

class DevotionalSeeder extends Seeder
{
    public function run(): void
    {
        Devotional::truncate();
        $devotionals = [
            [
                'title'                => 'Walking in the Light',
                'slug'                 => 'walking-in-the-light',
                'author'               => 'Pastor James Okafor',
                'date'                 => today(),
                'scripture_reference'  => ['John 8:12'],
                'verse_text'           => 'When Jesus spoke again to the people, he said, "I am the light of the world. Whoever follows me will never walk in darkness, but will have the light of life."',
                'excerpt'              => 'In a world filled with uncertainty and confusion, Jesus offers us something remarkable — his light. When we choose to follow Him, darkness loses its grip on our lives.',
                'message'              => "There are moments in life when the path ahead seems unclear. Decisions feel overwhelming, relationships grow complicated, and the future looks uncertain. In those moments, it is easy to feel lost.\n\nBut Jesus makes a bold declaration in John 8:12. He does not say He points to the light, or that He reflects the light. He says He IS the light. This is not a passive offer — it is an active invitation to follow.\n\nWalking in the light means making daily choices to stay close to Christ. It means bringing our fears, our doubts, and our struggles into His presence rather than hiding them in the dark corners of our hearts.\n\nToday, whatever darkness you are facing, know that the light of Christ is more powerful. He has already overcome the darkness of sin and death. As you follow Him, that same power is available to you.",
                'prayer'               => 'Lord Jesus, thank You for being the light of the world. Today I choose to walk in Your light. Where there is confusion, bring clarity. Where there is fear, bring peace. Help me to keep my eyes on You and to trust that Your light is sufficient for every step of my journey. Amen.',
                'featured_image'       => null,
                'is_published'         => true,
            ],
            [
                'title'                => 'The Strength of Stillness',
                'slug'                 => 'the-strength-of-stillness',
                'author'               => 'Minister Grace Adeyemi',
                'date'                 => today()->subDays(1),
                'scripture_reference' => ['John 3:16', 'Romans 8:28'],
                'verse_text'           => '"Be still, and know that I am God; I will be exalted among the nations, I will be exalted in the earth."',
                'excerpt'              => 'In our busy, noise-filled world, stillness feels like a luxury we cannot afford. But God calls us to it — and in that stillness, He reveals His strength.',
                'message'              => "We live in a culture that prizes busyness. To be busy is to be important. To rest is to fall behind. And yet, in the middle of one of the most turbulent psalms in Scripture, God speaks these words: Be still.\n\nThe context matters. Psalm 46 describes nations in uproar, kingdoms falling, mountains crumbling into the sea. These are not small inconveniences — they are world-shaking events. And right in the middle of that chaos, God says: stop. Be still. Know that I am God.\n\nStillness is not inactivity. It is a posture of trust. It is the decision to stop trying to control what only God can handle. It is pausing long enough to remember who is actually in charge.\n\nWhen we are still before God, we discover something remarkable — He was always there. Our noise and hurry had simply drowned Him out. In the quiet, His voice becomes clear, His presence becomes tangible, and our anxious striving begins to fade.",
                'prayer'               => 'Father, teach me the discipline of stillness. In a world that demands my constant attention, help me to carve out space to simply be with You. Quiet my restless heart. Let me know, deep in my spirit, that You are God — and that is more than enough. Amen.',
                'featured_image'       => null,
                'is_published'         => true,
            ],
            [
                'title'                => 'Rooted and Unshakeable',
                'slug'                 => 'rooted-and-unshakeable',
                'author'               => 'Pastor James Okafor',
                'date'                 => today()->subDays(2),
                'scripture_reference'  => ['Colossians 2:6-7'],
                'verse_text'           => 'So then, just as you received Christ Jesus as Lord, continue to live your lives in him, rooted and built up in him, strengthened in the faith as you were taught, and overflowing with thankfulness.',
                'excerpt'              => 'A tree that survives a storm does not do so because the wind was gentle — it survives because its roots go deep. Our spiritual life works the same way.',
                'message'              => "After a storm, you can always tell which trees were well-rooted. The shallow-rooted ones are toppled, their roots exposed to the sky. But the deeply rooted trees stand firm, sometimes bending dramatically in the wind, but never breaking.\n\nPaul's instruction in Colossians 2 is a call to deep roots. He uses the image of a tree — rooted, built up, strengthened. These are not passive things. Roots grow through effort, through pushing past resistance, through seeking water in dry places.\n\nHow do we grow deep roots spiritually? Through consistent time in God's Word, even when it feels routine. Through prayer, even when God feels distant. Through community with other believers, especially when we feel like withdrawing. Through serving, even when we feel we have nothing to give.\n\nThe storms of life will come. Trials, disappointments, losses — none of us are exempt. But the depth of your roots determines how you weather the storm. Start digging deeper today, so that when the wind comes, you will not merely survive — you will stand.",
                'prayer'               => 'Lord, I want to be rooted in You — not just surface level, but deep. Help me to invest in my spiritual growth even when I cannot see immediate results. Let my life be a tree that bears fruit and provides shade for others, all because my roots are anchored in You. Amen.',
                'featured_image'       => null,
                'is_published'         => true,
            ],
            [
                'title'                => 'Grace Greater Than Your Guilt',
                'slug'                 => 'grace-greater-than-your-guilt',
                'author'               => 'Deaconess Faith Nwosu',
                'date'                 => today()->subDays(3),
                'scripture_reference'  => ['Romans 8:1'],
                'verse_text'           => 'Therefore, there is now no condemnation for those who are in Christ Jesus.',
                'excerpt'              => 'Guilt is one of the heaviest burdens a person can carry. But the Gospel announces something that changes everything — in Christ, condemnation has no claim on you.',
                'message'              => "Many believers carry a quiet, persistent weight of guilt. Not the healthy conviction that leads to repentance — but the crushing, relentless voice that says you are too far gone, too broken, too inconsistent to be truly loved by God.\n\nRomans 8:1 is one of the most liberating verses in all of Scripture. Paul does not say there is now less condemnation, or manageable condemnation. He says NO condemnation. None. Zero. Not because we deserve it, but because Jesus has already absorbed every consequence of our sin on the cross.\n\nThis is not a license to live carelessly. It is an invitation to live freely. When we truly grasp that we are not condemned, we stop relating to God out of fear and begin relating to Him out of love. And love, it turns out, is a far more powerful motivator than guilt ever was.\n\nIf guilt has been your companion today, bring it to the foot of the cross. Leave it there. Walk away lighter. That is not presumption — that is what the Gospel is for.",
                'prayer'               => 'Father, thank You for the freedom of Romans 8:1. Help me to receive it not just with my mind but with my heart. Where guilt has kept me at a distance from You, let Your grace draw me close. I choose today to live as one who is fully forgiven and deeply loved. Amen.',
                'featured_image'       => null,
                'is_published'         => true,
            ],
            [
                'title'                => 'When Prayer Feels Hard',
                'slug'                 => 'when-prayer-feels-hard',
                'author'               => 'Minister Grace Adeyemi',
                'date'                 => today()->subDays(4),
                'scripture_reference'  => ['Romans 8:26'],
                'verse_text'           => 'In the same way, the Spirit helps us in our weakness. We do not know what we ought to pray for, but the Spirit himself intercedes for us through wordless groans.',
                'excerpt'              => 'There are seasons when prayer feels impossible — when the words simply will not come. This verse is for exactly those moments.',
                'message'              => "Not every prayer season feels like a mountaintop experience. Sometimes prayer feels dry, distant, and even pointless. The words feel hollow. You are not sure what to ask for. You open your mouth and nothing comes.\n\nIf you have ever been there, Romans 8:26 was written for you.\n\nPaul acknowledges something we rarely admit in church — we do not always know what we ought to pray. Our vision is limited, our understanding is partial, and sometimes our pain is too deep for words. And in those moments, the Holy Spirit steps in.\n\nHe intercedes for us. That means He takes our inarticulate groans — our confusion, our grief, our exhausted silence — and He presents them before the Father with perfect understanding. Your wordless cry is not lost. It is being translated by the Spirit of God Himself.\n\nSo on the days when prayer is hard, show up anyway. You do not need eloquent words. You do not need a perfectly structured prayer list. You just need to be present, and the Spirit will do the rest.",
                'prayer'               => 'Holy Spirit, thank You that You intercede for me even when I have no words. On the days when prayer feels impossible, help me to simply show up and trust that You are at work. Carry my heart before the Father today, and let me rest in the knowledge that I am heard. Amen.',
                'featured_image'       => null,
                'is_published'         => true,
            ],
            [
                'title'                => 'Faithful in the Small Things',
                'slug'                 => 'faithful-in-the-small-things',
                'author'               => 'Pastor James Okafor',
                'date'                 => today()->subDays(5),
                'scripture_reference'  => ['Luke 16:10'],
                'verse_text'           => 'Whoever can be trusted with very little can also be trusted with much, and whoever is dishonest with very little will also be dishonest with much.',
                'excerpt'              => 'We all dream of doing great things for God. But greatness in God\'s kingdom is almost always built on a foundation of small, faithful, unseen obedience.',
                'message'              => "We live in a world that celebrates the spectacular. We notice the big sermon, the large ministry, the dramatic testimony. What we rarely celebrate — but what God deeply values — is faithfulness in the ordinary.\n\nJesus makes a striking claim in Luke 16:10. The way you handle the small things reveals the kind of person you are in the big things. Faithfulness is not a skill you turn on when the stakes are high. It is a character quality formed in the daily, unglamorous moments.\n\nFaithfulness looks like showing up to serve even when no one notices. It looks like being honest in a small transaction when dishonesty would be easy. It looks like keeping your word in a minor commitment because you said you would.\n\nGod is watching these moments. Not to grade you, but because He knows that the person you are becoming in the small things is the person He can trust with greater things. Do not despise the small assignment. Do it with excellence. Do it with love. Do it as unto the Lord.",
                'prayer'               => 'Lord, forgive me for the times I have treated small things as unimportant. Help me to see every moment as an opportunity to be faithful. Build in me a character that can be trusted — not for my own glory, but so that I can be useful in Your hands. Amen.',
                'featured_image'       => null,
                'is_published'         => true,
            ],
        ];

        foreach ($devotionals as $data) {
            Devotional::create($data);
        }
    }
}
