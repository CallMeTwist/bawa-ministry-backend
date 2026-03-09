<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MinistryResource\Pages;
use App\Models\Ministry;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class MinistryResource extends Resource
{
    protected static ?string $model = Ministry::class;
    protected static ?string $navigationIcon = 'heroicon-o-user-group';
    protected static ?string $navigationGroup = 'Content';
    protected static ?int $navigationSort = 4;

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\Section::make('Ministry Details')
                ->schema([
                    Forms\Components\TextInput::make('name')
                        ->required()
                        ->live(onBlur: true)
                        ->afterStateUpdated(fn ($state, callable $set) =>
                        $set('slug', \Illuminate\Support\Str::slug($state))),

                    Forms\Components\TextInput::make('slug')
                        ->required()
                        ->unique(ignoreRecord: true),

                    Forms\Components\TextInput::make('leader')
                        ->label('Ministry Leader'),

                    Forms\Components\TextInput::make('email')
                        ->email(),

                    Forms\Components\TextInput::make('meeting_time')
                        ->placeholder('e.g. Sundays at 4 PM'),

                    Forms\Components\TextInput::make('icon')
                        ->helperText('Heroicon name or emoji, e.g. heroicon-o-star'),

                    Forms\Components\Textarea::make('description')
                        ->rows(5)
                        ->columnSpanFull(),

                    Forms\Components\TextInput::make('sort_order')
                        ->numeric()
                        ->default(0),
                ])->columns(2),

            Forms\Components\Section::make('Media & Publishing')
                ->schema([
                    Forms\Components\FileUpload::make('image')
                        ->image()
                        ->directory('ministries')
                        ->imageEditor(),

                    Forms\Components\Toggle::make('is_published')
                        ->label('Published')
                        ->default(true),
                ])->columns(2),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('leader'),
                Tables\Columns\TextColumn::make('meeting_time'),
                Tables\Columns\TextColumn::make('sort_order')->sortable(),
                Tables\Columns\IconColumn::make('is_published')->boolean()->label('Published'),
            ])
            ->defaultSort('sort_order')
            ->reorderable('sort_order')
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
            'index'  => Pages\ListMinistries::route('/'),
            'create' => Pages\CreateMinistry::route('/create'),
            'edit'   => Pages\EditMinistry::route('/{record}/edit'),
        ];
    }
}
