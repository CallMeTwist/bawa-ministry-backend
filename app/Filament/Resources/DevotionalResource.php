<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DevotionalResource\Pages;
use App\Models\Devotional;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class DevotionalResource extends Resource
{
    protected static ?string $model = Devotional::class;
    protected static ?string $navigationIcon = 'heroicon-o-book-open';
    protected static ?string $navigationGroup = 'Content';
    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\Section::make('Devotional Details')
                ->schema([
                    Forms\Components\TextInput::make('title')
                        ->required()
                        ->live(onBlur: true)
                        ->afterStateUpdated(fn ($state, callable $set) =>
                        $set('slug', \Illuminate\Support\Str::slug($state))),

                    Forms\Components\TextInput::make('slug')
                        ->required()
                        ->unique(ignoreRecord: true),

                    Forms\Components\TextInput::make('author')
                        ->required(),

                    Forms\Components\DatePicker::make('date')
                        ->required()
                        ->default(today()),

                    Forms\Components\TagsInput::make('scripture_reference')
                        ->label('Scripture References')
                        ->placeholder('Add a reference e.g. John 3:16')
                        ->helperText('Press Enter or comma after each reference to add it.')
                        ->columnSpanFull(),

                    Forms\Components\Textarea::make('verse_text')
                        ->required()
                        ->rows(3),
                ])->columns(2),

            Forms\Components\Section::make('Content')
                ->schema([
                    Forms\Components\Textarea::make('excerpt')
                        ->required()
                        ->rows(3)
                        ->helperText('Short preview shown in listings (1–2 sentences).'),

                    Forms\Components\RichEditor::make('message')
                        ->required()
                        ->toolbarButtons([
                            'bold', 'italic', 'underline',
                            'heading', 'bulletList', 'orderedList',
                            'blockquote', 'link', 'undo', 'redo',
                        ]),

                    Forms\Components\Textarea::make('prayer')
                        ->rows(4)
                        ->helperText('Closing prayer for the devotional.'),
                ]),

            Forms\Components\Section::make('Media & Publishing')
                ->schema([
                    Forms\Components\FileUpload::make('featured_image')
                        ->image()
                        ->directory('devotionals')
                        ->imageEditor(),

                    Forms\Components\Toggle::make('is_published')
                        ->label('Published')
                        ->default(false),
                ])->columns(2),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('author')->sortable(),
                Tables\Columns\TextColumn::make('scripture_reference'),
                Tables\Columns\TextColumn::make('date')->date()->sortable(),
                Tables\Columns\IconColumn::make('is_published')->boolean()->label('Published'),
                Tables\Columns\TextColumn::make('scripture_reference')
                    ->label('References')
                    ->formatStateUsing(fn ($state) => is_array($state) ? implode(', ', $state) : $state)
                    ->limit(40),
                Tables\Columns\TextColumn::make('views')
                    ->label('Views')
                    ->sortable()
                    ->icon('heroicon-o-eye')
                    ->alignCenter(),
            ])
            ->filters([
                Tables\Filters\TernaryFilter::make('is_published')->label('Published'),
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
            'index'  => Pages\ListDevotionals::route('/'),
            'create' => Pages\CreateDevotional::route('/create'),
            'edit'   => Pages\EditDevotional::route('/{record}/edit'),
        ];
    }
}
