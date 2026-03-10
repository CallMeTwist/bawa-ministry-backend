<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('devotional_views', function (Blueprint $table) {
            $table->id();
            $table->foreignId('devotional_id')->constrained()->cascadeOnDelete();
            $table->string('ip_address', 45);
            $table->timestamp('viewed_at');

            // one record per IP per devotional per day
            $table->index(['devotional_id', 'ip_address', 'viewed_at']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('devotional_views');
    }
};
