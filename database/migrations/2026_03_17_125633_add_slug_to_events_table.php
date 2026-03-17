<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

return new class extends Migration {
    public function up(): void
    {
        Schema::table('events', function (Blueprint $table) {
            $table->string('slug')->nullable()->unique()->after('title');
        });

        // Generate slugs for existing events
        DB::table('events')->get()->each(function ($event) {
            DB::table('events')->where('id', $event->id)->update([
                'slug' => Str::slug($event->title) . '-' . $event->id,
            ]);
        });

        Schema::table('events', function (Blueprint $table) {
            $table->string('slug')->nullable(false)->change();
        });
    }

    public function down(): void
    {
        Schema::table('events', function (Blueprint $table) {
            $table->dropColumn('slug');
        });
    }
};
