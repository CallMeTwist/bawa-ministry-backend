<?php

namespace App\Filament\Resources;

use App\Filament\Resources\EventResource\Pages;
use App\Models\Event;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class EventResource extends Resource
{
    protected static ?string $model = Event::class;
    protected static ?string $navigationIcon = 'heroicon-o-calendar-days';
    protected static ?string $navigationGroup = 'Content';
    protected static ?int $navigationSort = 3;

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\Section::make('Event Details')
                ->schema([
                    Forms\Components\TextInput::make('title')
                        ->required(),
                    Forms\Components\Select::make('category')
                        ->options([
                            'service'    => 'Service',
                            'conference' => 'Conference',
                            'outreach'   => 'Outreach',
                            'youth'      => 'Youth',
                            'prayer'     => 'Prayer',
                            'other'      => 'Other',
                        ]),
                    Forms\Components\TextInput::make('theme')
                        ->placeholder('e.g. Walking in the Spirit')
                        ->helperText('Optional theme or scripture focus for the event.')
                        ->columnSpanFull(),
                    Forms\Components\DatePicker::make('date')
                        ->required(),
                    Forms\Components\DatePicker::make('end_date')
                        ->label('End Date (optional)'),
                    Forms\Components\TextInput::make('time')
                        ->placeholder('e.g. 10:00 AM – 12:00 PM'),
                    Forms\Components\TextInput::make('location')
                        ->required(),
                    Forms\Components\TextInput::make('registration_url')
                        ->label('Registration URL')
                        ->url()
                        ->columnSpanFull(),
                    Forms\Components\RichEditor::make('description')
                        ->required()
                        ->columnSpanFull()
                        ->toolbarButtons([
                            'bold', 'italic', 'underline',
                            'heading', 'bulletList', 'orderedList',
                            'blockquote', 'link', 'undo', 'redo',
                        ]),
                ])->columns(2),

            Forms\Components\Section::make('Media & Publishing')
                ->schema([
                    Forms\Components\FileUpload::make('image')
                        ->image()
                        ->directory('events')
                        ->imageEditor(),

                    Forms\Components\Toggle::make('is_published')
                        ->label('Published')
                        ->default(false),

                    Forms\Components\Toggle::make('is_featured')
                        ->label('Featured')
                        ->default(false),
                ])->columns(2),

            Forms\Components\Section::make('Memories (Post-Event Media)')
                ->description('Optional photos and YouTube videos shown after the event has happened.')
                ->collapsed()
                ->schema([
                    Forms\Components\Repeater::make('photos')
                        ->relationship()
                        ->label('Photos')
                        ->helperText('Up to 10 photos, max 3 MB each. Drag to reorder.')
                        ->defaultItems(0)
                        ->schema([
                            Forms\Components\FileUpload::make('path')
                                ->label('Photo')
                                ->image()
                                ->directory('events/photos')
                                ->maxSize(3072)
                                ->imageEditor()
                                ->required(),
                        ])
                        ->orderColumn('sort_order')
                        ->reorderable()
                        ->maxItems(10)
                        ->addActionLabel('Add photo')
                        ->columnSpanFull(),

                    Forms\Components\Repeater::make('video_urls')
                        ->label('YouTube Video URLs')
                        ->helperText('Up to 3 YouTube links.')
                        ->defaultItems(0)
                        ->simple(
                            Forms\Components\TextInput::make('url')
                                ->url()
                                ->regex('/^https?:\/\/(www\.)?(youtube\.com\/watch\?v=|youtu\.be\/|youtube\.com\/embed\/)[\w\-]{11}.*$/i')
                                ->validationMessages([
                                    'regex' => 'Must be a valid YouTube URL.',
                                ])
                                ->required()
                        )
                        ->maxItems(3)
                        ->addActionLabel('Add video')
                        ->columnSpanFull(),
                ]),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('category')->badge(),
                Tables\Columns\TextColumn::make('date')->date()->sortable(),
                Tables\Columns\TextColumn::make('location'),
                Tables\Columns\IconColumn::make('is_featured')->boolean()->label('Featured'),
                Tables\Columns\IconColumn::make('is_published')->boolean()->label('Published'),
                Tables\Columns\TextColumn::make('theme')->toggleable(isToggledHiddenByDefault: true),
            ])
            ->defaultSort('date', 'asc')
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
            'index'  => Pages\ListEvents::route('/'),
            'create' => Pages\CreateEvent::route('/create'),
            'edit'   => Pages\EditEvent::route('/{record}/edit'),
        ];
    }
}
