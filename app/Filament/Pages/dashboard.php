<?php


namespace App\Filament\Pages;

use Filament\Pages\Dashboard as BaseDashboard;

class Dashboard extends BaseDashboard
{
    protected static ?string $navigationIcon = 'heroicon-o-home';
    protected static ?string $navigationLabel = 'Dashboard';
    protected static ?int $navigationSort = 0;
    protected static ?string $title = 'Tina Bawa Ministries — Dashboard';

    public function getColumns(): int|string|array
    {
        return 2;
    }

    public function getWidgets(): array
    {
        return [
            \App\Filament\Widgets\StatsOverview::class,
        ];
    }
}
