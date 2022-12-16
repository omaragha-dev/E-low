<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('court_classes', function (Blueprint $table) {
            $table->id();
            $table->foreignId('company_id')->constrained('companies','id')->nullable()->CascadeOnDelete();
            $table->foreignId('country_id')->constrained('conutries','id')->nullable()->CascadeOnDelete();
            $table->string('court_name');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('court_classes');
    }
};
