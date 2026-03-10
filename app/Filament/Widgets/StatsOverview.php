<?php

namespace App\Filament\Widgets;

use App\Models\Devotional;
use App\Models\Event;
use App\Models\Ministry;
use App\Models\Sermon;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsOverview extends BaseWidget
{
    protected static ?int $sort = 1;

    protected function getStats(): array
    {
        return [
            Stat::make('Devotionals', Devotional::published()->count())
                ->description('Published devotionals')
                ->descriptionIcon('heroicon-o-book-open')
                ->color('primary'),

            Stat::make('Sermons', Sermon::published()->count())
                ->description('Published sermons')
                ->descriptionIcon('heroicon-o-play-circle')
                ->color('warning'),

            Stat::make('Upcoming Events', Event::published()->upcoming()->count())
                ->description('Events scheduled')
                ->descriptionIcon('heroicon-o-calendar-days')
                ->color('success'),

            Stat::make('Ministries', Ministry::published()->count())
                ->description('Active ministries')
                ->descriptionIcon('heroicon-o-user-group')
                ->color('info'),
        ];
    }
}
