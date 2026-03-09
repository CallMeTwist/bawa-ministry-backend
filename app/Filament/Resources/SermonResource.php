<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SermonResource\Pages;
use App\Models\Sermon;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class SermonResource extends Resource
{
    protected static ?string $model = Sermon::class;
    protected static ?string $navigationIcon = 'heroicon-o-play-circle';
    protected static ?string $navigationGroup = 'Content';
    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\Section::make('Sermon Details')
                ->schema([
                    Forms\Components\TextInput::make('title')
                        ->required(),

                    Forms\Components\TextInput::make('speaker')
                        ->required(),

                    Forms\Components\TextInput::make('scripture_reference')
                        ->placeholder('e.g. Romans 8:28'),

                    Forms\Components\DatePicker::make('date')
                        ->required()
                        ->default(today()),

                    Forms\Components\TextInput::make('series')
                        ->placeholder('e.g. Walking by Faith'),

                    Forms\Components\TextInput::make('youtube_url')
                        ->label('YouTube URL')
                        ->url()
                        ->required()
                        ->placeholder('https://www.youtube.com/watch?v=...')
                        ->helperText('Paste the full YouTube video URL. The embed link and thumbnail are generated automatically.'),

                    Forms\Components\Textarea::make('description')
                        ->rows(4)
                        ->columnSpanFull(),
                ])->columns(2),

            Forms\Components\Section::make('Publishing')
                ->schema([
                    Forms\Components\Toggle::make('is_published')
                        ->label('Published')
                        ->default(false),

                    Forms\Components\Toggle::make('is_featured')
                        ->label('Featured')
                        ->default(false),
                ])->columns(2),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('speaker')->sortable(),
                Tables\Columns\TextColumn::make('series'),
                Tables\Columns\TextColumn::make('scripture_reference'),
                Tables\Columns\TextColumn::make('date')->date()->sortable(),
                Tables\Columns\IconColumn::make('is_featured')->boolean()->label('Featured'),
                Tables\Columns\IconColumn::make('is_published')->boolean()->label('Published'),
            ])
            ->filters([
                Tables\Filters\TernaryFilter::make('is_published')->label('Published'),
                Tables\Filters\TernaryFilter::make('is_featured')->label('Featured'),
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
            'index'  => Pages\ListSermons::route('/'),
            'create' => Pages\CreateSermon::route('/create'),
            'edit'   => Pages\EditSermon::route('/{record}/edit'),
        ];
    }
}
