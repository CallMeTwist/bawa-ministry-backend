-- MySQL dump 10.13  Distrib 9.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: bawa_ministries
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('tina-bawa-ministries-cache-livewire-rate-limiter:0e55c593d83a68f00dd24d8290cd6b2cb5b60532:timer','i:1775141992;',1775141992),('tina-bawa-ministries-cache-livewire-rate-limiter:0e55c593d83a68f00dd24d8290cd6b2cb5b60532','i:1;',1775141992),('tina-bawa-ministries-cache-livewire-rate-limiter:86f175ad4258cc03151931dde4b9e4458fc8d339:timer','i:1775458515;',1775458515),('tina-bawa-ministries-cache-livewire-rate-limiter:86f175ad4258cc03151931dde4b9e4458fc8d339','i:1;',1775458515);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_verses`
--

DROP TABLE IF EXISTS `daily_verses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_verses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `verse_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NIV',
  `date` date DEFAULT NULL,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_verses_date_index` (`date`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_verses`
--

LOCK TABLES `daily_verses` WRITE;
/*!40000 ALTER TABLE `daily_verses` DISABLE KEYS */;
INSERT INTO `daily_verses` VALUES (1,'I can do all this through him who gives me strength.','Philippians 4:13','NIV','2026-03-09',NULL,'#1B2A4A',1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(2,'For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.','John 3:16','NIV',NULL,NULL,'#1B2A4A',1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(3,'The Lord is my shepherd, I lack nothing.','Psalm 23:1','NIV',NULL,NULL,'#2C4A2E',1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(4,'Trust in the Lord with all your heart and lean not on your own understanding; in all your ways submit to him, and he will make your paths straight.','Proverbs 3:5-6','NIV',NULL,NULL,'#4A2C1A',1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(5,'Be strong and courageous. Do not be afraid; do not be discouraged, for the Lord your God will be with you wherever you go.','Joshua 1:9','NIV',NULL,NULL,'#1B2A4A',1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(6,'And we know that in all things God works for the good of those who love him, who have been called according to his purpose.','Romans 8:28','NIV',NULL,NULL,'#2C2A4A',1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(7,'Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God.','Philippians 4:6','NIV',NULL,NULL,'#1B2A4A',1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(8,'The Lord your God is with you, the Mighty Warrior who saves. He will take great delight in you; in his love he will no longer rebuke you, but will rejoice over you with singing.','Zephaniah 3:17','NIV',NULL,NULL,'#4A3A1A',1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(9,'Come to me, all you who are weary and burdened, and I will give you rest.','Matthew 11:28','NIV',NULL,NULL,'#1B2A4A',1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(10,'But those who hope in the Lord will renew their strength. They will soar on wings like eagles; they will run and not grow weary, they will walk and not be faint.','Isaiah 40:31','NIV',NULL,NULL,'#1A3A4A',1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(11,'I can do all this through him who gives me strength.','Philippians 4:13','NIV','2026-03-10',NULL,'#1B2A4A',1,'2026-03-11 01:48:57','2026-03-11 01:48:57'),(12,'For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.','John 3:16','NIV',NULL,NULL,'#1B2A4A',1,'2026-03-11 01:48:57','2026-03-11 01:48:57'),(13,'The Lord is my shepherd, I lack nothing.','Psalm 23:1','NIV',NULL,NULL,'#2C4A2E',1,'2026-03-11 01:48:57','2026-03-11 01:48:57'),(14,'Trust in the Lord with all your heart and lean not on your own understanding; in all your ways submit to him, and he will make your paths straight.','Proverbs 3:5-6','NIV',NULL,NULL,'#4A2C1A',1,'2026-03-11 01:48:57','2026-03-11 01:48:57'),(15,'Be strong and courageous. Do not be afraid; do not be discouraged, for the Lord your God will be with you wherever you go.','Joshua 1:9','NIV',NULL,NULL,'#1B2A4A',1,'2026-03-11 01:48:57','2026-03-11 01:48:57'),(16,'And we know that in all things God works for the good of those who love him, who have been called according to his purpose.','Romans 8:28','NIV',NULL,NULL,'#2C2A4A',1,'2026-03-11 01:48:57','2026-03-11 01:48:57'),(17,'Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God.','Philippians 4:6','NIV',NULL,NULL,'#1B2A4A',1,'2026-03-11 01:48:57','2026-03-11 01:48:57'),(18,'The Lord your God is with you, the Mighty Warrior who saves. He will take great delight in you; in his love he will no longer rebuke you, but will rejoice over you with singing.','Zephaniah 3:17','NIV',NULL,NULL,'#4A3A1A',1,'2026-03-11 01:48:57','2026-03-11 01:48:57'),(19,'Come to me, all you who are weary and burdened, and I will give you rest.','Matthew 11:28','NIV',NULL,NULL,'#1B2A4A',1,'2026-03-11 01:48:57','2026-03-11 01:48:57'),(20,'But those who hope in the Lord will renew their strength. They will soar on wings like eagles; they will run and not grow weary, they will walk and not be faint.','Isaiah 40:31','NIV',NULL,NULL,'#1A3A4A',1,'2026-03-11 01:48:57','2026-03-11 01:48:57');
/*!40000 ALTER TABLE `daily_verses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devotional_views`
--

DROP TABLE IF EXISTS `devotional_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devotional_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `devotional_id` bigint unsigned NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `devotional_views_devotional_id_ip_address_viewed_at_index` (`devotional_id`,`ip_address`,`viewed_at`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devotional_views`
--

LOCK TABLES `devotional_views` WRITE;
/*!40000 ALTER TABLE `devotional_views` DISABLE KEYS */;
INSERT INTO `devotional_views` VALUES (1,2,'127.0.0.1','2026-03-11 03:42:37'),(2,1,'127.0.0.1','2026-03-12 15:07:05'),(3,2,'127.0.0.1','2026-03-12 18:15:55'),(4,2,'127.0.0.1','2026-03-16 19:55:36'),(5,3,'127.0.0.1','2026-03-17 19:43:40'),(6,1,'102.91.93.72','2026-03-28 18:17:36'),(7,1,'105.113.106.14','2026-03-28 18:25:51'),(8,1,'197.210.54.125','2026-03-28 19:34:19'),(9,3,'197.210.54.125','2026-03-28 19:34:47');
/*!40000 ALTER TABLE `devotional_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devotionals`
--

DROP TABLE IF EXISTS `devotionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devotionals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `scripture_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verse_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `prayer` text COLLATE utf8mb4_unicode_ci,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `views` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `devotionals_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devotionals`
--

LOCK TABLES `devotionals` WRITE;
/*!40000 ALTER TABLE `devotionals` DISABLE KEYS */;
INSERT INTO `devotionals` VALUES (1,'Walking in the Light','walking-in-the-light','Pastor James Okafor','2026-03-10','[\"John 8:12\"]','When Jesus spoke again to the people, he said, \"I am the light of the world. Whoever follows me will never walk in darkness, but will have the light of life.\"','In a world filled with uncertainty and confusion, Jesus offers us something remarkable — his light. When we choose to follow Him, darkness loses its grip on our lives.','There are moments in life when the path ahead seems unclear. Decisions feel overwhelming, relationships grow complicated, and the future looks uncertain. In those moments, it is easy to feel lost.\n\nBut Jesus makes a bold declaration in John 8:12. He does not say He points to the light, or that He reflects the light. He says He IS the light. This is not a passive offer — it is an active invitation to follow.\n\nWalking in the light means making daily choices to stay close to Christ. It means bringing our fears, our doubts, and our struggles into His presence rather than hiding them in the dark corners of our hearts.\n\nToday, whatever darkness you are facing, know that the light of Christ is more powerful. He has already overcome the darkness of sin and death. As you follow Him, that same power is available to you.','Lord Jesus, thank You for being the light of the world. Today I choose to walk in Your light. Where there is confusion, bring clarity. Where there is fear, bring peace. Help me to keep my eyes on You and to trust that Your light is sufficient for every step of my journey. Amen.',NULL,1,4,'2026-03-11 02:17:46','2026-03-28 19:34:19'),(2,'The Strength of Stillness','the-strength-of-stillness','Minister Grace Adeyemi','2026-03-09','[\"John 3:16\",\"Romans 8:28\"]','\"Be still, and know that I am God; I will be exalted among the nations, I will be exalted in the earth.\"','In our busy, noise-filled world, stillness feels like a luxury we cannot afford. But God calls us to it — and in that stillness, He reveals His strength.','We live in a culture that prizes busyness. To be busy is to be important. To rest is to fall behind. And yet, in the middle of one of the most turbulent psalms in Scripture, God speaks these words: Be still.\n\nThe context matters. Psalm 46 describes nations in uproar, kingdoms falling, mountains crumbling into the sea. These are not small inconveniences — they are world-shaking events. And right in the middle of that chaos, God says: stop. Be still. Know that I am God.\n\nStillness is not inactivity. It is a posture of trust. It is the decision to stop trying to control what only God can handle. It is pausing long enough to remember who is actually in charge.\n\nWhen we are still before God, we discover something remarkable — He was always there. Our noise and hurry had simply drowned Him out. In the quiet, His voice becomes clear, His presence becomes tangible, and our anxious striving begins to fade.','Father, teach me the discipline of stillness. In a world that demands my constant attention, help me to carve out space to simply be with You. Quiet my restless heart. Let me know, deep in my spirit, that You are God — and that is more than enough. Amen.',NULL,1,3,'2026-03-11 02:17:46','2026-03-16 19:55:36'),(3,'Rooted and Unshakeable','rooted-and-unshakeable','Pastor James Okafor','2026-03-08','[\"Colossians 2:6-7\"]','So then, just as you received Christ Jesus as Lord, continue to live your lives in him, rooted and built up in him, strengthened in the faith as you were taught, and overflowing with thankfulness.','A tree that survives a storm does not do so because the wind was gentle — it survives because its roots go deep. Our spiritual life works the same way.','After a storm, you can always tell which trees were well-rooted. The shallow-rooted ones are toppled, their roots exposed to the sky. But the deeply rooted trees stand firm, sometimes bending dramatically in the wind, but never breaking.\n\nPaul\'s instruction in Colossians 2 is a call to deep roots. He uses the image of a tree — rooted, built up, strengthened. These are not passive things. Roots grow through effort, through pushing past resistance, through seeking water in dry places.\n\nHow do we grow deep roots spiritually? Through consistent time in God\'s Word, even when it feels routine. Through prayer, even when God feels distant. Through community with other believers, especially when we feel like withdrawing. Through serving, even when we feel we have nothing to give.\n\nThe storms of life will come. Trials, disappointments, losses — none of us are exempt. But the depth of your roots determines how you weather the storm. Start digging deeper today, so that when the wind comes, you will not merely survive — you will stand.','Lord, I want to be rooted in You — not just surface level, but deep. Help me to invest in my spiritual growth even when I cannot see immediate results. Let my life be a tree that bears fruit and provides shade for others, all because my roots are anchored in You. Amen.',NULL,1,2,'2026-03-11 02:17:46','2026-03-28 19:34:47'),(4,'Grace Greater Than Your Guilt','grace-greater-than-your-guilt','Deaconess Faith Nwosu','2026-03-07','[\"Romans 8:1\"]','Therefore, there is now no condemnation for those who are in Christ Jesus.','Guilt is one of the heaviest burdens a person can carry. But the Gospel announces something that changes everything — in Christ, condemnation has no claim on you.','Many believers carry a quiet, persistent weight of guilt. Not the healthy conviction that leads to repentance — but the crushing, relentless voice that says you are too far gone, too broken, too inconsistent to be truly loved by God.\n\nRomans 8:1 is one of the most liberating verses in all of Scripture. Paul does not say there is now less condemnation, or manageable condemnation. He says NO condemnation. None. Zero. Not because we deserve it, but because Jesus has already absorbed every consequence of our sin on the cross.\n\nThis is not a license to live carelessly. It is an invitation to live freely. When we truly grasp that we are not condemned, we stop relating to God out of fear and begin relating to Him out of love. And love, it turns out, is a far more powerful motivator than guilt ever was.\n\nIf guilt has been your companion today, bring it to the foot of the cross. Leave it there. Walk away lighter. That is not presumption — that is what the Gospel is for.','Father, thank You for the freedom of Romans 8:1. Help me to receive it not just with my mind but with my heart. Where guilt has kept me at a distance from You, let Your grace draw me close. I choose today to live as one who is fully forgiven and deeply loved. Amen.',NULL,1,0,'2026-03-11 02:17:46','2026-03-11 02:17:46'),(5,'When Prayer Feels Hard','when-prayer-feels-hard','Minister Grace Adeyemi','2026-03-06','[\"Romans 8:26\"]','In the same way, the Spirit helps us in our weakness. We do not know what we ought to pray for, but the Spirit himself intercedes for us through wordless groans.','There are seasons when prayer feels impossible — when the words simply will not come. This verse is for exactly those moments.','Not every prayer season feels like a mountaintop experience. Sometimes prayer feels dry, distant, and even pointless. The words feel hollow. You are not sure what to ask for. You open your mouth and nothing comes.\n\nIf you have ever been there, Romans 8:26 was written for you.\n\nPaul acknowledges something we rarely admit in church — we do not always know what we ought to pray. Our vision is limited, our understanding is partial, and sometimes our pain is too deep for words. And in those moments, the Holy Spirit steps in.\n\nHe intercedes for us. That means He takes our inarticulate groans — our confusion, our grief, our exhausted silence — and He presents them before the Father with perfect understanding. Your wordless cry is not lost. It is being translated by the Spirit of God Himself.\n\nSo on the days when prayer is hard, show up anyway. You do not need eloquent words. You do not need a perfectly structured prayer list. You just need to be present, and the Spirit will do the rest.','Holy Spirit, thank You that You intercede for me even when I have no words. On the days when prayer feels impossible, help me to simply show up and trust that You are at work. Carry my heart before the Father today, and let me rest in the knowledge that I am heard. Amen.',NULL,1,0,'2026-03-11 02:17:46','2026-03-11 02:17:46'),(6,'Faithful in the Small Things','faithful-in-the-small-things','Pastor James Okafor','2026-03-05','[\"Luke 16:10\"]','Whoever can be trusted with very little can also be trusted with much, and whoever is dishonest with very little will also be dishonest with much.','We all dream of doing great things for God. But greatness in God\'s kingdom is almost always built on a foundation of small, faithful, unseen obedience.','We live in a world that celebrates the spectacular. We notice the big sermon, the large ministry, the dramatic testimony. What we rarely celebrate — but what God deeply values — is faithfulness in the ordinary.\n\nJesus makes a striking claim in Luke 16:10. The way you handle the small things reveals the kind of person you are in the big things. Faithfulness is not a skill you turn on when the stakes are high. It is a character quality formed in the daily, unglamorous moments.\n\nFaithfulness looks like showing up to serve even when no one notices. It looks like being honest in a small transaction when dishonesty would be easy. It looks like keeping your word in a minor commitment because you said you would.\n\nGod is watching these moments. Not to grade you, but because He knows that the person you are becoming in the small things is the person He can trust with greater things. Do not despise the small assignment. Do it with excellence. Do it with love. Do it as unto the Lord.','Lord, forgive me for the times I have treated small things as unimportant. Help me to see every moment as an opportunity to be faithful. Build in me a character that can be trusted — not for my own glory, but so that I can be useful in Your hands. Amen.',NULL,1,0,'2026-03-11 02:17:46','2026-03-11 02:17:46');
/*!40000 ALTER TABLE `devotionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `events_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Easter Sunday Celebration','easter-sunday-celebration','Join us for a powerful Easter Sunday service as we celebrate the resurrection of our Lord Jesus Christ. Come with family and friends for a morning of worship, praise, and the Gospel message.','2026-03-21',NULL,'8:00 AM & 10:30 AM','Main Sanctuary',NULL,'service',NULL,NULL,1,1,'2026-03-10 00:56:21','2026-03-19 01:12:26'),(2,'Youth Conference 2025','youth-conference-2025','A three-day conference designed to ignite the faith of young people aged 13–25. Featuring worship nights, breakout sessions, and dynamic speakers from across the country.','2026-03-29','2026-03-31','Fri 6:00 PM – Sun 4:00 PM','Church Auditorium & Fellowship Hall',NULL,'youth',NULL,'https://forms.google.com',1,1,'2026-03-10 00:56:21','2026-03-19 01:12:26'),(3,'Community Outreach Day','community-outreach-day','We are heading into the community to show the love of Christ in practical ways. Activities include food distribution, free medical checkups, and children\'s entertainment. All volunteers welcome.','2026-04-08',NULL,'9:00 AM – 2:00 PM','Karu Market Square, Abuja',NULL,'outreach',NULL,NULL,1,0,'2026-03-10 00:56:21','2026-03-19 01:12:26'),(4,'Men\'s Prayer Breakfast','mens-prayer-breakfast','A monthly gathering for the men of the church to share a meal, pray together, and encourage one another. This month\'s theme: Courage in the Workplace.\nA monthly gathering for the men of the church to share a meal, pray together, and encourage one another. This month\'s theme: Courage in the Workplace.\nA monthly gathering for the men of the church to share a meal, pray together, and encourage one another. This month\'s theme: Courage in the Workplace.\nA monthly gathering for the men of the church to share a meal, pray together, and encourage one another. This month\'s theme: Courage in the Workplace.','2026-03-17',NULL,'7:30 AM – 9:30 AM','Fellowship Hall',NULL,'prayer',NULL,NULL,1,0,'2026-03-10 00:56:21','2026-03-19 01:12:26'),(5,'EXTRAORDINARY LIFE CONFERENCE','extraordinary-life-conference','<p>Join us for a powerful and life-transforming gathering at the Extraordinary Life Conference 2026, hosted by Tina Bawa Ministries International.<br><br>This year’s theme, “Stand Firm,” is a call to remain strong in faith, purpose, and resilience in the midst of life’s challenges. The conference will feature inspiring teachings, impactful conversations, and life-changing sessions from distinguished guest speakers.<br><br>Date: Saturday, April 11, 2026<br>Time: 10:00 AM (WAT)<br>Venue: Chida Hotel Conference Center, No. 224 Solomon Lar Road, Utako, Abuja.<br><br>Guest Speakers include:<br>	•	Her Excellency Dame Pauline Tallen (OFR)<br>	•	Bishop Festus Akhimien<br>	•	Dr. Zion A. Ameh – Global Mental Health Systems Strategist<br>	•	Dr. Alice Agada<br><br>Host: Tina Bawa-Shitgurum<br><br>Participants will also benefit from:<br>	•	Mental health counseling<br>	•	Free medical care<br>	•	Eye check-ups and free glasses<br>	•	One-on-one counseling sessions<br>	•	Free transportation buses to and from the venue<br>	•	Refreshments<br><br>Admission is FREE.<br><br>Come prepared to be empowered, refreshed, and strengthened to stand firm and live an extraordinary life.</p>','2026-04-11',NULL,'10:00 AM','Chidi Hotel Conference Center, Utako, Abuja','events/01KKGTKGXY4060HQCXN6YECME3.jpeg','conference','STAND FIRM',NULL,1,1,'2026-03-10 00:56:21','2026-03-19 01:12:26'),(6,'Midweek Bible Study','midweek-bible-study','Our weekly deep-dive into Scripture. This month we are studying the book of Romans. Open to all members and visitors.','2026-03-12',NULL,'6:00 PM – 7:30 PM','Main Hall',NULL,'service','Walking in the Spirit',NULL,1,0,'2026-03-10 00:56:21','2026-03-19 01:12:26');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2026_03_09_132334_create_daily_verses_table',1),(5,'2026_03_09_132337_create_devotionals_table',1),(6,'2026_03_09_132945_create_sermons_table',1),(7,'2026_03_09_132947_create_ministries_table',1),(8,'2026_03_09_132949_create_events_table',1),(9,'2026_03_09_143825_create_personal_access_tokens_table',1),(10,'2026_03_10_075318_create_team_members_table',2),(11,'2026_03_10_144905_add_theme_to_events_table',3),(12,'2026_03_10_180601_change_scripture_reference_on_devotionals_table',4),(13,'2026_03_10_195536_add_views_to_devotionals_table',5),(14,'2026_03_10_200028_create_devotional_views_table',5),(15,'2026_03_17_060617_add_full_details_to_ministries_table',6),(16,'2026_03_17_064326_add_full_info_to_team_members_table',7),(17,'2026_03_17_070624_add_full_info_to_team_members_table',8),(18,'2026_03_17_125633_add_slug_to_events_table',9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ministries`
--

DROP TABLE IF EXISTS `ministries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ministries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `full_details` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ministries_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ministries`
--

LOCK TABLES `ministries` WRITE;
/*!40000 ALTER TABLE `ministries` DISABLE KEYS */;
INSERT INTO `ministries` VALUES (1,'TBMi Free Medical Missions','tbmi-free-medical-missions','Providing compassionate healthcare outreach to underserved communities, meeting physical needs while sharing the love of Christ through service, care, and support.','<p>TBM Free Medical Mission is the public health intervention program of Tina Bawa Ministries International (TBMi). Since 1999, TBM Free Medical Mission has reached out to over 200,000 people in various communities across Africa. The outreach programs leverage on the internal resources, local partnership and the support of international organizations in bringing primary health care support to disadvantage communities in Africa. The medical interventions are primarily targeted at the vulnerable children, women, young people and the aged.</p><p>Our scope includes public health campaign programs with emphasis on nutrition, personal hygiene, sanitation and safe-health practice; diagnostic and first response medical interventions; emergencies and disaster medical aids and response; and provision of assisted capacity support for medical centres and personnel.</p><p>For every mission program, our strategy is to first embark on a health need assessment program. It is based on this assessment that our intervention plan is developed and implemented. Over the years, our outreach programs have been sustained by the efforts of partners, volunteers and mainly by the personal sacrifices of the coordinator of the project, Bishop Tina Bawa.</p><p><strong>Background</strong><br> Over the years, there have been gross decay in the primary health sector due to negligence on the part of Government. As a result, people have continued to suffer and die needlessly from preventable diseases. The impact is felt even more as: the widening divide between the rich and the poor is on an all time high, the rising rate of rural-urban migration, the rapid decline in national productivity and per capital income, the fallen standard of living and the continuous vulnerability of the population to preventable diseases which have been largely controlled or eliminated in other climes.</p><p>&nbsp;Though we are committed to working with government to develop and implement sustainable primary health policies, we understand that the sick and dying cannot wait. This is why we are determined to provide critical interventions necessary to bridge the gap in the primary health sector through targeted free medical outreaches and charities. The intent is to provide access to free medical services and relief for vulnerable citizens living in hard to reach and underserved communities.</p><p><br>&nbsp;Our approach is to leverage on the passion and skills of concerned professionals, volunteers, partners and sponsors who share in our vision to make primary healthcare services accessible to all.</p><p><strong>VISION:</strong><br> Towards a society where no citizen will have to suffer unnecessarily from preventable diseases on the ground of ignorance, exclusion or poor health policy planning.</p><p><strong>MISSION:</strong><br> To express our commitment to the best humanitarian practices aimed at alleviating human suffering and giving fulfilment to our team of volunteers, partners and staff.</p><p><strong>OUR VALUE APPROACH</strong></p><p>·&nbsp;<strong>Equality: </strong>Our services are inspired and informed by our strong commitment to realizing an egalitarian society where every member has access to the basic services necessary to live a healthy and productive life.</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Accountability:</strong> As a charity organization, we understand that we are custodians of public trust and funds hence our commitment to upholding the highest value of accountability, responsibility and transparency in the conduct and outcome of our operations.&nbsp;</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Documentation:</strong> As an organization dedicated to preventive health practices, we prioritize research and documentation in our field activities and processes. This strengthens our engagement with the communities, policy makers and our volunteers.</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Partnership:</strong> Our programs are coordinated and delivered in collaboration with our team of professional volunteers drawn from the respective medical disciplines, our sponsors, partners and the target community.</p><p>TARGET COMMUNITIES</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Internally Displaced Persons (IDP) Camps&nbsp;</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Emergency relief camps for victim of natural/man-made disasters</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Settlements for disadvantaged persons</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Prison community</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Underserved and hard to reach communities</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Vulnerable rural areas</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;City Slums and urban ghettos &nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>OUR PAST MISSIONS</p><ul><li>Betory Home of Incapacitated, Apapa, Lagos State, 1999</li><li>Medical Mission, Modupe Cole, Yaba, Lagos, 2001</li><li>Medical Mission, Otukpa, Benue State, 2002</li><li>Medical Mission, Otukpa, Benue State, 2004</li><li>Medical Mission, Otukpa, Benue State, 2007</li><li>Charity / Medical Mission, Kwande, Quaan-Pan L.G.A, 2010</li><li>Charity /Medical Mission, Gbaokpu, 2010</li><li>Health Awareness (High blood pressure), Lokogoma, 2012</li><li>Charity / Medical Mission, Kwande Quaan-Pan L.G.A, 2012</li><li>Free Medical Mission, Mandela, Abuja 2013</li><li>Free Medical Mission Kwande Quaan-Pan L.G.A, 2014</li><li>Free Medical Mission Bukuru, Plateau State, 2015</li><li>Free Medical Mission to IDP camp Jos Plateau State, 2016</li><li>Free Medical Mission Kwande Quaan-Pan L.G.A, 2017</li><li>Free Medical Mission to IDP camp Jos Plateau State, 2018</li><li>Free Medical Mission Kwande Quaan-Pan L.G.A, 2019</li><li>Free Medical Mission ICC Abuja, 2019</li><li>Free Medical Mission Kwande Plateau State, 2022</li><li>Free Medical Mission Otukpa, Benue State, 2023</li></ul><p>HEALTH ORIENTATION</p><ol><li><strong>Health: </strong>This cover general health education and orientation. Attention is devoted to family planning, hygiene, dietary, behavioural modification, risk behaviours, first aids and personal health management.&nbsp; The public is also oriented on to respond to natural disaster situations and emergencies.</li><li><strong>Family/Business: </strong>We offer pet talks and orientation on small business start-ups and management. This talk is programed as an additional value to enable local communities gain the economic means to live a healthy lifestyle. The focus of this session often centres on responsible and productive youthfulness, supportive family values, petty trading and personal initiatives. &nbsp;</li><li><strong>Disabusing medical myths:</strong> One of the reasons associated with the high mortality rate from preventable diseases in rural areas is due to the prevalence of harmful traditions and myths. A key approach of our orientation program focuses on educating the public on basic health issues and disabusing existing traditional myths surrounding certain medical conditions.&nbsp;</li></ol><p><strong>PATIENT CARE:</strong></p><p>The consultants in collaboration and partnership with local medical personnel provide on-site medical and health care services to vulnerable patients in the following areas.</p><p><strong>Primary Care:&nbsp; </strong>The primary care team is divided into adult care, paediatric care and eye care and this consists of internist, family physicians, cardiologist, paediatricians, optometrists, pharmacists, nurses, public health specialists and volunteers. This team typically sets up a clinic in the primary health centre or any other convenient location in the community. The medical team screen for common chronic diseases, diagnose acute and chronic conditions, prescribe and dispense necessary medications and refer cases where necessary. Patients typically are grouped according to their age and medical condition as follows:</p><ul><li><strong>Paediatric Care</strong></li><li><strong>Adult Care</strong></li><li>·<strong>Elderly (Geriatric) Care</strong></li><li><strong>Cardiac Care</strong></li><li><strong>Eye Care</strong></li><li><strong>GYN Care</strong></li></ul><p><strong>Eye Care: </strong>Our eye team led by an optometrist, screen patients with eye problems, treat diseases related to the eyes, identifies refractive errors and dispenses eye glasses when needed. Cases requiring further evaluation and possible surgery are referred to our consultant Ophthalmologist.</p><p><strong>Pharmacy:</strong> Our Pharmacists in collaboration with the local pharmacists establish and operate the on-site pharmacy unit for dispensing prescribed medications. This serves as an opportunity for information exchange and capacity building for the local pharmacists. It also serves as an avenue for development of collegial relationships</p><p><strong>CAPACITY BUILDING</strong></p><p><strong>Professional Exchange: </strong>We recognize the need to develop the proficiency and capacity of the healthcare delivery system at community level. Part of our intervention program includes the training of personnel through hands-on clinical experience.</p><p><strong>Training health care providers from the L.G.A: </strong>Depending on the capacity need of the community health centre, the content of our intervention programs could include lectures and workshops for health care providers. The focus areas for these lectures include: Obstetric/Gynaecological diseases, HIV/AIDS workshop, common paediatric problems and diseases, health maintenance evaluations including age appropriate cancer and disease screening, identification of chronic hypertension and diabetes etc. The trainings are designed for staff and health workers in primary</p><p><strong>EPIDEMIOLOGICAL</strong></p><p><strong>EPIDEMIOLOGICAL DATA SERVICES: </strong>This involves the studies of the patterns, causes, and effects of health and disease conditions in target communities. The intent is towards informing policy decisions and supporting an evidence-based practice in preventive healthcare by identifying the risk factors responsible for the spread of diseases. Also, we equally evaluate and assess the health and medical infrastructure as well as the skill level of providers in a community as it relates to current treatment and management of diseases. Our findings are documented for informed primary health planning and implementation.</p><p>OUR OPERATIONS</p><p>Our intervention programs are implemented based on the support and items received for each mission. While the supports are most time inadequate, our success in spite lays in the passion of our team members who are often willing to go the extra mile to sacrifice in order to make each outing an impactful experience for our target community.</p><p>The following activities form the general procedure for our intervention.</p><p><strong>ACTIVITIES</strong></p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Pre-intervention visits to communities for medical need assessment</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Stakeholder sensitization and engagement base on need assessment &nbsp;</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Coordination of the specific team including volunteers, partners and sponsors</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Planning and finalization of the mission program based on the input of all stakeholders</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Engagement of the necessary local health department</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Coordination of welfare, security and logistic for the mission</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Acquisition of drugs, medical aids and equipment (Outside those donated by our partners).</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welfare, feeding and accommodation for our team of volunteers for the period of our outreach.</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mobilization and Sensitization of the public through the media</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Implementation of the intervention plan</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Impact assessment and report</p><p><strong>FOLLOW UP</strong></p><p>&nbsp;As part of the follow-up, our medical team continues to make routine visit to benefit communities for a period of 3 months to guarantee and follow up on the impact of our intervention. &nbsp;</p><p><strong>STRATEGIES &nbsp;</strong></p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Where necessary, get the consent and support of the political class for our outreaches</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Engage the service of medical volunteers</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Develop a plan for effective grassroots publicity and build up &nbsp;</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Partnership engagement with local health centres and CMD</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Partnership with relevant rural associations at the grassroots</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Endorsement of community leaders and gatekeepers</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Participation of sponsors and possible partners</p><p>OUR TEAM</p><p>Our team is made up of highly qualified and passionate professionals with a burden for charity and social service. The team is organized into departments with proven leaders, who are responsible for coordinating the respective volunteers in line with the specific mission target.&nbsp;</p><p>The team typically organized to cover key specific areas such as adult medicine, paediatrics, eye care, general surgery, urology, orthopaedics, ophthalmology, surgery, obstetrics, gynaecology, dental care, emergency medicine, podiatry, HIV/AIDS education, public health orientation, Family planning, breast and cervical cancer education and on the spot emergency medical training. For each medical outreach, the team is constituted and departmentalized based on the need assessment, available resources and manpower.</p><p><strong>OUR MEDICAL TEAM &nbsp;</strong></p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Physicians</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Surgeons</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Optometrists</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dentists&nbsp;</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Nurses</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Pharmacists</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Public Health Specialists</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Biomedical technicians</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Volunteers</p><p>SPONSORSHIP</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Medical Sponsorship</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Financial Sponsorship</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Material sponsorship</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Sponsorship of logistics and welfare</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Specific item sponsorship</p><p><strong>Sponsorship Benefits</strong></p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Certificate of sponsorship / corporate social responsibility acknowledgement</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The name of the organization to be mentioned during our press briefing</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Organization to have the opportunity to make presentation at the event based on the need.</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Organization will have the opportunity to erect banner at the event venue as part of our team of partners and sponsors.</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The corporate materials of organization to be made available at venue.</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Others special benefits customized to the need of sponsors</p><p>VOLUNTEERS</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Specialists/consultants &nbsp;</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;General Practitioners</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Nurses / auxiliary services</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Pharmacists / dispensaries</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Lab technologists</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Public health workers</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Others</p><p><strong>Benefits</strong></p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Certificate of participation</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Remuneration</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Networking / field training &nbsp;</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Personal fulfilment &nbsp;</p>',NULL,'Bishop Tina Bawa','youth@gracechapel.org','1999','heroicon-o-user-group',1,1,'2026-03-10 00:56:21','2026-03-18 22:38:48'),(2,'Extraordinary Women Fellowship International(EWFi)','extraordinary-women-fellowship-internationalewfi','Empowering women across nations to embrace their God-given purpose, grow in faith, and become impactful leaders in their homes, churches, and communities.','<p>The Extraordinary Women Fellowship (Gathering of Deborah) is a neighbourhood network of women intercessors from different denominations. The core objective is to provide prayer coverage for the nation by organizing women in their different communities to stand in the gap for their families and their communities. In EWFi, we believe that when women pray, something happens. &nbsp;</p><p>Our vision at the EWFi is to provide an intense prayer support for the country by coordinating and mobilizing Christian women in every community to pray. In the EWFi, women are taught to take responsibility for their families and communities through intercession. The forum provides the opportunity for women to participate in reshaping the spiritual atmosphere of the society.&nbsp;</p><p>The Fellowship began in 1999 as the Gathering of Deborah. It has presence in different parts of the country. The premise of the vision is founded on: Judges 5:6-7 “In the days of Shamgar son of Anath, and in the days of Jael, people avoided the main roads, and travellers stayed on winding pathways. There were few people left in the village of Israel – until Deborah arose as a mother for Israel”. NLT</p><p>The Mission of the EWFi is to Build The Total Woman to birth change in her: Life, Home, Community and the Nation.</p><p><strong>VISION:</strong></p><p>Redefining Womanhood through the Word of GOD.</p><p><strong>GOAL:</strong></p><p>To bring out the Extra-ordinary in the woman</p>',NULL,'Bishop Tina Bawa','prayer@gracechapel.org',NULL,'heroicon-o-hand-raised',2,1,'2026-03-10 00:56:21','2026-03-19 00:17:41'),(3,'TBMI Publishing House','tbmi-publishing-house','Taking the love of Christ beyond the church walls — through evangelism, community service, and practical support for the vulnerable.\n','<p>TBMi Publishing House is one aspect of the vision that is making tremendous impact on women. The vision is to carefully research and publish books and articles that support women to become better individuals, wives and mothers. The focus of our work centres on upholding the biblical concept of the woman in the light of modern realities.</p><p>We seek to create a highly knowledgeable and conscious Christian women community that understands their rights as individuals in the light of their roles and identity as Christian women. So far the organization has published eight books authored by the progenitor of Tina Bawa Ministries Int’l., Bishop Tina Bawa-Shitgurum. Some of the book titles include:</p><ul><li>The Extraordinary Woman</li><li>The Virtuous Woman</li><li>Woman God’s last born</li><li>Contending for your marriage</li><li>Unveiling the African Woman</li><li>Woman The Bridge Of Hope</li><li>The Signature of a Woman</li><li>Woman Dare to Dream</li><li>Now that you are saved</li><li>Woman Extraordinaire (Annual Magazine)</li></ul><p>In TBMi Publishing House, we are creating the culture for the modern Christian woman and the family system.</p>',NULL,'Bishop Tina Bawa','outreach@gracechapel.org','Last Saturday of every month','heroicon-o-globe-alt',3,1,'2026-03-10 00:56:21','2026-03-17 15:18:36'),(4,'TBMI Conference and Seminars','tbmi-conference-and-seminars','Equipping believers through transformative conferences and seminars that inspire spiritual growth, leadership excellence, and a deeper walk with God in everyday life.','<p>Annually and periodically, TBMi organizes conferences and field events that are targeted at different audience. These events are part of the core vehicles through which the Ministry impact on the lives. &nbsp;</p><p><strong>Extraordinary Woman Conference</strong></p><p>The Extraordinary Woman Conference is an annual event designed to inspire women to go the extra length as individuals, wives and mothers. The first conference was held in 2001 in Lagos, Nigeria. Since then, it has become an annual conference, bringing thousands of Christian women from different denominational backgrounds together. In 2004, the conference venue was moved from Lagos to Abuja. For the first time in 2014, the conference was hosted in the United States of America.</p><p>The Extraordinary Woman Conference is borne out of the recognition that the modern Christian woman naturally needs to go the extra length to be fulfilled. The Christian woman has to go this length because of her natural and traditional limitations and the responsibilities expected of her in spite. This therefore demands that the Christian woman is extra creative, sacrificial and virtuous. The Extraordinary Woman Conference is conceptualized to help the woman identify and bring out the extra in her.</p><p>Every year, new themes and focus is designed for the conference. Respectable and renowned Christian Women leaders and resource persons from different denominations are invited to speak on various aspect of the theme. The program is usually attended by a cross profile of Christian women. Some of the renowned women speakers in previous events are: <em>Arch Bishop Margaret Benson Idahosa; Archbishop Winne Owiti; Rev. Dr. (Mrs.) Funke Felix-Adejumo; Minister Desiree Sills; Dame (Mrs.) Pauline K. Tallen; Pastor (Mrs.) Nike Adeyemi; Rev Mrs. Christy Bature Ogbeifun; Pastor (Mrs.) Hope Praise; Dr. (Mrs.) Becky Enenche; Pastor Mrs. Ibukun Odusote;&nbsp; Pastor Funmilola Craig; Rev. (Mrs.) Harriet Olubiyo; Dr. (Mrs.) Margaret Enigwei-Ibru; Enewa Rita Abutu Garuba(Mrs.); Arch (Mrs.) Jumoke Adenowo</em> and a host of others.&nbsp;</p><p>The regular content includes: exposition; impartation; workgroup sessions (sister to sister); business seminar; intercession; and concert depending on the objective of the year, the conference could last between two to three days.</p><p><strong>Extraordinary Life Conference</strong></p><p>The Extraordinary Life Conference is an annual event designed to inspire participants to go the extra length as individuals. The first conference was held in 2017 in Abuja, Nigeria. Since then, it has become an annual conference, bringing thousands of Christian from different denominational backgrounds together.</p><p>The Extraordinary Life Conference is borne out of the recognition that the modern Christian naturally needs to go the extra length to be fulfilled. The Church has to go beyond the walls of their buildings to the marketplace where they can impact more lives for the Kingdom of God.</p><p>The Believer must break the traditional limitations and reach out to he’s or her generation and the ones to come with the same gospel via Contemporary methods. This therefore demands that the Christians of our time will be extra creative, sacrificial and imbibe the right values. The Extraordinary Life Conference is conceptualized to help the participants to identify and bring out the extra in them.</p><p><strong>Movement to Eden Seminar Series:</strong></p><p>Movement to Eden Seminar Series is a quarterly outing of TBMi. The teaching series is designed to enable women find and fulfil their purpose as individuals and joint heirs in creation. The teachings are intended to help women appreciate their original place and role in creation before the fall and the curse.</p><p>According to the scripture, the fall and the curse placed the woman under the man. In Gen 3:16, God cursed the woman saying her desire shall be for the man.&nbsp; It is this curse that striped the woman of her individuality. But in Christ Jesus, we believe that the curse has been broken and the woman restored back to her original place in Eden. This is the concept of the Movement to Eden Series.</p><p>The series of teachings under this program are therefore designed to help the Christian woman appreciate her individuality, purpose and calling besides her role as a wife and mother.</p><p>Part of the approach is to take the teaching to different communities across the country. Since 2004 when the series began, thousands of women have been motivated to find a purpose for their life. The program has helped many women to find a new sense of dignity and esteem. The series which is also targeted at singles has been very useful in helping young women to plan and determine their future before getting into marriage.</p><p><strong>Stand by Your Man Prayer Summit:</strong></p><p>This is a periodic prayer and teaching summit organized by TBMi to enable women stand in the gap for their men. The summit is based on the knowledge that the woman is the spiritual gateway to her home. The program teaches and encourages women to take the responsibility for the success of their home. Women are taught on how to build a formidable partnership with their spouses and initiate a prayer culture in their homes.</p><p>The program is often organized as a one-day marathon prayer event. The testimonies received after each edition of the program are overwhelming. Many women have been able to save, reinvigorate and redirect the course of their marriages after attending the program. The program is marked with prophetic declaration, deliverance and mending of broken hearts and homes. <strong>Stand by Your Man </strong>is targeted at married women and single ladies willing to pray for their husbands to be.</p>',NULL,'Pastor James Okafor','biblestudy@gracechapel.org','2001','heroicon-o-book-open',4,1,'2026-03-10 00:56:21','2026-03-19 00:13:09'),(5,'TBMI Home Finishing Academy (HOFA)','tbmi-home-finishing-academy-hofa','Training individuals with practical skills and knowledge to excel in home finishing and craftsmanship, empowering them for economic growth and purposeful living.','<p>TBMi Home Finishing Academy (HOFA) is one of the newest initiatives of TBMi. It is a home finishing program for young ladies who either just got married or preparing to get married.<br>The Academy is designed to restore back core family values in the light of today’s realities. The rising divorce rates and conflicts in homes are largely linked to the false expectations set by most couples before marriage. At TBMi Home Finishing Academy, we created the syllabus that effectively prepares and orientate the woman for marriage.<br><br>The five weekend theoretical and residential courses are a first of its kind effort to impact every skill that a woman and young lady will need in her multifaceted roles of wife, mother, daughter in- law and a professional. The highly interactive sessions under the tutelage of Rt. Rev. (Mrs.) Tina Bawa-Shitgurum are specially designed to enable each participant make right their expectations and lay a solid foundation for the future.<br><br></p>',NULL,'Bishop Tina Bawa','hofa@gmail.com','Everyday','heroicon-o-star',5,1,'2026-03-17 15:24:57','2026-03-17 19:35:02'),(6,'Women of Compassion','women-of-compassion','Mobilizing women to extend love, kindness, and practical support to the vulnerable, reflecting the heart of Christ through acts of compassion and community impact.','<p>The Women of Compassion is a member based charity initiative coordinated by TBMi. The organization coordinates concerned and compassionate women from all walks of life to do their bit in raising supports for vulnerable children, women, young people and the aged. The approach of the organization is based on the conviction that charity is feminine.<br>&nbsp;<br>&nbsp;The primary focus of the organization centres on guaranteeing the following basic necessities of life: Food, Shelter, Education, Medicals and Empowerment. Our strategy is to conduct a need mapping and assessment within our focus community. Based on the assessment an intervention list is developed and circulated to all subscribing members with an action plan. All the response received in the form of cash, items and supports are documented and openly disbursed as planned.&nbsp;</p><p>As an organization, we work with members to raise support for the needy. We also work with local and international organizations who share our interest for charity. Annually, the documentations and reports of supports received from members and partners are disbursed by the organization, published and circulated to our member and partners.</p><p>The organization’s activities are targeted at hard to reach communities, orphanages, rural areas and urban slums. The activity focus of the organization is planned on annual basis and implemented in line with our action plan.</p>',NULL,'Bishop Tina Bawa','info@bawa.com','sometimes','heroicon-o-star',6,1,'2026-03-17 15:26:54','2026-03-17 19:32:19'),(7,'TBMI Crusades and Outreach','tbmi-crusades-and-outreach','Reaching communities with the message of salvation, healing, and hope through powerful crusades and outreach programs that draw people closer to Christ.','<p>The Crusades and Outreach arm of Tina Bawa Ministries have been carrying out crusades since 2002. Winning souls for the kingdom of God, healing the sick and conducting deliverances in the name of Jesus Christ. At some places shrines were destroyed, and their Chief Priests led to Christ. It has always been an awesome experience for us, as over the years we have been privileged to lead thousands of souls to Christ.</p><p>You can volunteer to take this Crusades to your community, village or city and kindly feel free to partner financially with us as we take the Gospel of Jesus Christ to the nook and crannies of the country and Africa.</p>',NULL,'Bishop Tina Bawa','crusades@bawa.com','2002','heroicon-o-star',0,1,'2026-03-17 15:34:18','2026-03-18 22:43:52'),(8,'Nigeria Women Awake (NIWA)','nigeria-women-awake-niwa','Awakening women across Nigeria to spiritual revival, unity, and national transformation through prayer, empowerment, and a renewed commitment to God’s purpose.','<p>Nigeria Women Awake (NIWA) is an organization initiated to coordinate women at national level to contribute to the development, security and peaceful co-existence of the Nigerian state through strategic intervention in the specific areas of prayers and advocacy.</p><p>The organization is incorporated as a gender based voluntary platform that organizes and coordinates Christian women to stand in the gap for the country in the place of prayers and to lend their collective voices to critical and related issues in the national polity.</p><p>The vision is towards a Nigerian nation that is spiritually, socially, economically and politically whole, peaceful and divinely aligned with the purpose of God for all the nations of the earth. The approach is to challenge and organise Nigerian women to unite in prayers and make their voices heard on critical issues of National development.</p><p>We pursue this end through a broad base intercessory network that builds up participatory commitment at national level. This organization is managed by burdened Christian women who are committed to pure intercession for the nation. &nbsp;</p>',NULL,'Bishop Tina Bawa','niwa@gmail.com','Sometimes everyday','heroicon-o-star ',0,1,'2026-03-17 15:36:13','2026-03-17 19:36:07'),(9,'White Worship Music Festival','white-worship-music-festival','Creating an atmosphere of pure worship where hearts are lifted to God, lives are transformed, and believers encounter His presence through music, praise, and unity.','<p><strong>WHITE Worship </strong>is an intense Worship Experience put together to enable men and women from every denomination, persuasion and walks of life to worship the KING of kings without barriers in an atmosphere of healing and miracles.</p><p><strong>”WHITE”</strong> is an acronym, it stands for: <strong>Worship Him In The Evening</strong></p><p>The essence of living is to worship the Most-high God. No wonder when I got into deep worship at a very crucial time in my life when my husband was very sick and at the point of death, the Lord stepped in, raised him up and healed him of the ailment completely.</p><p>There and then the Lord laid it in my heart to put together a worship program where He will have a deep fellowship with his children and meet them at their very point of need.</p><p>From the inception of white worship, testimonies have rolled in, many lives have been touched and more people look forward to it each year.&nbsp; White Worship is sure an experience to remember and look forward to.</p><p>In Genesis, God came to fellowship with Adam &amp; Eve in the cool of the day and that’s where the name (<strong>WHITE</strong>) Worship Him In The Evening comes from.</p><p>WHITE Worship began in 2016 and have hosted great Worship leaders like Chris Morgan, Sarah Thompson, Samsong, Steve Crown, Madmo, Owie Abutu, Chris Ade, Solomon Lange, Elijah Oyelade, Bidemi Treasure, Soluchy, Revy Sax, Tony Treasure, Marvel Joks, Eunice Morgan, Moses Bliss and many more.</p>',NULL,'Bishop Tina Bawa','tinabawa.ministries@gmail.com','2016','heroicon-o-star',0,1,'2026-03-17 15:46:27','2026-03-18 22:42:21');
/*!40000 ALTER TABLE `ministries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sermons`
--

DROP TABLE IF EXISTS `sermons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sermons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speaker` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scripture_reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `youtube_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_video_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sermons`
--

LOCK TABLES `sermons` WRITE;
/*!40000 ALTER TABLE `sermons` DISABLE KEYS */;
INSERT INTO `sermons` VALUES (1,'The God Who Sees You','Pastor James Okafor','Genesis 16:13','Hagar was alone, abandoned, and afraid — yet God found her. In this powerful message, we explore what it means to be truly seen by God, even in our lowest moments.','https://www.youtube.com/watch?v=dQw4w9WgXcQ',NULL,NULL,'2026-03-02','Names of God',1,1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(2,'More Than Enough','Pastor James Okafor','Philippians 4:19','God does not promise to meet some of our needs. He promises to meet ALL of our needs. This sermon unpacks what that promise really means and how to stand on it.','https://www.youtube.com/watch?v=dQw4w9WgXcQ',NULL,NULL,'2026-02-23','Promises of God',1,1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(3,'When God Delays','Minister Grace Adeyemi','John 11:1-44','Lazarus was dead four days before Jesus arrived. Yet Jesus said this delay was for God\'s glory. What do we do in the waiting seasons of our lives?','https://www.youtube.com/watch?v=dQw4w9WgXcQ',NULL,NULL,'2026-02-16','Trusting God',1,1,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(4,'The Armor of God','Pastor James Okafor','Ephesians 6:10-18','We are in a spiritual battle whether we acknowledge it or not. This practical sermon walks through each piece of the armor of God and how to use it daily.','https://www.youtube.com/watch?v=dQw4w9WgXcQ',NULL,NULL,'2026-02-09','Spiritual Warfare',1,0,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(5,'Forgiveness Is Not Optional','Deaconess Faith Nwosu','Matthew 6:14-15','Unforgiveness is a prison — and you are the one locked inside. This message confronts the hard truth about forgiveness and the freedom that comes when we choose to release others.','https://www.youtube.com/watch?v=dQw4w9WgXcQ',NULL,NULL,'2026-02-02',NULL,1,0,'2026-03-10 00:56:21','2026-03-10 00:56:21'),(6,'Redeeming the Time','Minister Grace Adeyemi','Ephesians 5:15-16','Time is the one resource you cannot get back. This sermon challenges us to be intentional about how we spend our days in light of eternity.','https://www.youtube.com/watch?v=dQw4w9WgXcQ',NULL,NULL,'2026-01-26','Intentional Living',1,0,'2026-03-10 00:56:21','2026-03-10 00:56:21');
/*!40000 ALTER TABLE `sermons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('4vWEBqz9KXC50HUXkKmVvhKaUvaOWSCH9CuxXHYj',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOUt3eEpmRDRpTW5XU2pQZVZ0bFJKYlhWVURZUTJHQUFsUzlnb0N1VyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluIjt9czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7czo1OiJyb3V0ZSI7czozMDoiZmlsYW1lbnQuYWRtaW4ucGFnZXMuZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1775141681),('vTNLvoPoHx00g384tXWZkonaA5dCYs64fHKrqxic',1,'197.210.71.8','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRW4xY0VjYWVWeTdiZU53TEtTMmRzN01PV3lUUWFoOUl1UGZ4bzdaUyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjcxOiJodHRwczovL2JyZWNrZW4tZW5jZXBoYWxpdGljLXVuc3Vsa2lseS5uZ3Jvay1mcmVlLmRldi9hZG1pbi9kZXZvdGlvbmFscyI7czo1OiJyb3V0ZSI7czo0MjoiZmlsYW1lbnQuYWRtaW4ucmVzb3VyY2VzLmRldm90aW9uYWxzLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiMGE1NTFiZWQ3NjQyNzJjZDk3N2ZlMjczNTQxNjNiNzFkMTAzM2ZhYTliNWUxMGZkNDI3NWEyY2M0ZmM5MDkwZSI7fQ==',1775142037),('ednoOtzcdXsMYJVwHhxlZkohiRdHiZBPXyWfnsOz',1,'102.91.103.36','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoidDdCTjIwR2Z3NVIyRlBycnRqVWlUQ1pDb2hLSGt0MjR3TUxYU2JneiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjU5OiJodHRwczovL2JyZWNrZW4tZW5jZXBoYWxpdGljLXVuc3Vsa2lseS5uZ3Jvay1mcmVlLmRldi9hZG1pbiI7czo1OiJyb3V0ZSI7czozMDoiZmlsYW1lbnQuYWRtaW4ucGFnZXMuZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiMGE1NTFiZWQ3NjQyNzJjZDk3N2ZlMjczNTQxNjNiNzFkMTAzM2ZhYTliNWUxMGZkNDI3NWEyY2M0ZmM5MDkwZSI7fQ==',1775458608),('nhFW6XNU3OkhDuQ6KpLMZXicKuRS4fZaACTzxF7W',1,'102.91.104.137','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQnE1RUVmSzRyWDRwdklaUmM2QnB2RnFyRnFaQzJCNFNxWm5lWmlVaCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzE6Imh0dHBzOi8vYnJlY2tlbi1lbmNlcGhhbGl0aWMtdW5zdWxraWx5Lm5ncm9rLWZyZWUuZGV2L2FkbWluL2Rldm90aW9uYWxzIjtzOjU6InJvdXRlIjtzOjQyOiJmaWxhbWVudC5hZG1pbi5yZXNvdXJjZXMuZGV2b3Rpb25hbHMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjY0OiIwYTU1MWJlZDc2NDI3MmNkOTc3ZmUyNzM1NDE2M2I3MWQxMDMzZmFhOWI1ZTEwZmQ0Mjc1YTJjYzRmYzkwOTBlIjt9',1774701663);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_info` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@app.dev',NULL,'$2y$12$X9zv0faNVmyl8sdYmU3U1ex2REWgCzEczXqy6LpqJYNyTDmP1hIlW',NULL,'2026-03-09 22:01:52','2026-03-09 22:01:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-06  6:09:01
