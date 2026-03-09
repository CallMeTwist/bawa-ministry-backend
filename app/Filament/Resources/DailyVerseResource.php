<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DailyVerseResource\Pages;
use App\Models\DailyVerse;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class DailyVerseResource extends Resource
{
    protected static ?string $model = DailyVerse::class;
    protected static ?string $navigationIcon = 'heroicon-o-sparkles';
    protected static ?string $navigationGroup = 'Content';
    protected static ?int $navigationSort = 5;
    protected static ?string $label = 'Daily Verse';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\Section::make('Verse Details')
                ->schema([
                    Forms\Components\Textarea::make('verse_text')
                        ->required()
                        ->rows(4)
                        ->columnSpanFull(),

                    Forms\Components\TextInput::make('reference')
                        ->required()
                        ->placeholder('e.g. Philippians 4:13'),

                    Forms\Components\TextInput::make('translation')
                        ->default('NIV')
                        ->placeholder('NIV, ESV, KJV...'),

                    Forms\Components\DatePicker::make('date')
                        ->helperText('Leave blank to use as a random fallback verse.'),

                    Forms\Components\TextInput::make('theme_color')
                        ->placeholder('#1e3a5f')
                        ->helperText('Optional HEX color for verse card background.'),
                ])->columns(2),

            Forms\Components\Section::make('Media & Status')
                ->schema([
                    Forms\Components\FileUpload::make('background_image')
                        ->image()
                        ->directory('verses')
                        ->imageEditor(),

                    Forms\Components\Toggle::make('is_active')
                        ->label('Active')
                        ->default(true),
                ])->columns(2),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('reference')->sortable()->searchable(),
                Tables\Columns\TextColumn::make('verse_text')->limit(60),
                Tables\Columns\TextColumn::make('translation'),
                Tables\Columns\TextColumn::make('date')->date()->sortable(),
                Tables\Columns\IconColumn::make('is_active')->boolean()->label('Active'),
            ])
            ->defaultSort('date', 'desc')
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index'  => Pages\ListDailyVerses::route('/'),
            'create' => Pages\CreateDailyVerse::route('/create'),
            'edit'   => Pages\EditDailyVerse::route('/{record}/edit'),
        ];
    }
}
