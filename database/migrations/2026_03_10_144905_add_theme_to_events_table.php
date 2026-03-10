<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        // Convert existing string values to JSON arrays before changing column type
        DB::table('devotionals')->get()->each(function ($row) {
            DB::table('devotionals')
                ->where('id', $row->id)
                ->update([
                    'scripture_reference' => json_encode(
                        array_filter(array_map('trim', explode(',', $row->scripture_reference)))
                    ),
                ]);
        });

        Schema::table('devotionals', function (Blueprint $table) {
            $table->json('scripture_reference')->change();
        });
    }

    public function down(): void
    {
        Schema::table('devotionals', function (Blueprint $table) {
            $table->string('scripture_reference')->change();
        });
    }
};
