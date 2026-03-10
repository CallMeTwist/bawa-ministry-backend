<?php

namespace App\Providers\Filament;

use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\AuthenticateSession;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Pages;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\View\PanelsRenderHook;
use Filament\Widgets;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\Support\Facades\Blade;
use Illuminate\View\Middleware\ShareErrorsFromSession;

class AdminPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
            ->id('admin')
            ->path('admin')
            ->login()
            ->brandName('Tina Bawa Ministries')

            ->colors([
                'primary' => Color::hex('#1B2A4A'),
                'warning' => Color::hex('#B8860B'),
                'success' => Color::Emerald,
                'info'    => Color::Blue,
                'danger'  => Color::Rose,
                'gray'    => Color::Slate,
            ])

            ->sidebarCollapsibleOnDesktop()
            ->globalSearch()
            ->globalSearchKeyBindings(['command+k', 'ctrl+k'])

            ->navigationGroups([
                'Content',
                'Settings',
            ])

            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->pages([
                \App\Filament\Pages\Dashboard::class,
            ])
            ->discoverWidgets(in: app_path('Filament/Widgets'), for: 'App\\Filament\\Widgets')
            ->widgets([
                Widgets\AccountWidget::class,
                \App\Filament\Widgets\StatsOverview::class,
            ])

//            ->renderHook(
//                PanelsRenderHook::HEAD_END,
//                fn () => Blade::render('<style>
//                    .fi-sidebar { background-color: #1B2A4A !important; }
//                    .fi-sidebar-header { background-color: #152038 !important; border-bottom: 1px solid rgba(184,134,11,0.25); }
//                    .fi-brand-name { color: #B8860B !important; font-weight: 700; font-size: 1.1rem; }
//                    .fi-sidebar-item-label { color: #e2e8f0 !important; }
//                    .fi-sidebar-item-icon { color: #94a3b8 !important; }
//                    .fi-sidebar-group-label { color: #64748b !important; font-size: 0.65rem; letter-spacing: 0.08em; text-transform: uppercase; }
//                    .fi-sidebar-item-active .fi-sidebar-item-label { color: #B8860B !important; }
//                    .fi-sidebar-item-active .fi-sidebar-item-icon { color: #B8860B !important; }
//                    .fi-sidebar-item-active { background-color: rgba(184,134,11,0.12) !important; border-radius: 0.5rem; }
//                    .fi-topbar { background-color: #ffffff !important; border-bottom: 1px solid #e2e8f0; }
//                    .fi-main { background-color: #f8fafc !important; }
//                    .fi-wi-stats-overview-stat { border-radius: 0.75rem !important; }
//                    .fi-ta-header-cell { background-color: #f8fafc; font-size: 0.7rem; text-transform: uppercase; letter-spacing: 0.05em; color: #64748b; }
//                    .fi-section { border-radius: 0.75rem !important; }
//                    .fi-btn-color-primary { background-color: #1B2A4A !important; }
//                </style>')
//            )

//            ->renderHook(
//                PanelsRenderHook::HEAD_END,
//                fn () => Blade::render('<style>
//        .fi-sidebar { background-color: #1B2A4A; }
//        .fi-sidebar-header { background-color: #152038; border-bottom: 1px solid rgba(184,134,11,0.25); }
//        .fi-brand-name { color: #B8860B; font-weight: 700; font-size: 1.1rem; }
//
//        /* Sidebar text */
//        .fi-sidebar-item-label { color: #e2e8f0; }
//        .fi-sidebar-item-icon { color: #94a3b8; }
//        .fi-sidebar-item-active .fi-sidebar-item-label,
//        .fi-sidebar-item-active .fi-sidebar-item-icon { color: #B8860B; }
//        .fi-sidebar-item-active { background-color: rgba(184,134,11,0.12); border-radius: 0.5rem; }
//
//        /* Section headings (fix color) */
//        .fi-section-header { color: #1B2A4A; font-weight: 600; }
//
//        /* Topbar and main */
//        .fi-topbar { background-color: #ffffff; border-bottom: 1px solid #e2e8f0; }
//        .fi-main { background-color: #f8fafc; }
//
//        /* Cards/widgets */
//        .fi-wi-stats-overview-stat { border-radius: 0.75rem; }
//        .fi-section { border-radius: 0.75rem; }
//        .fi-btn-color-primary { background-color: #1B2A4A; }
//    </style>')
//            )

            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ]);
    }
}
