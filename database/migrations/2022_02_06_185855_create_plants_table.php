<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plants', function (Blueprint $table) {
            $table->id();
            $table->char('list_of_street_name_id', 14);
            $table->string('plant_code')->unique();
            $table->foreignId('plant_name_id')
                ->constrained('plant_names');
            $table->foreign('list_of_street_name_id')
                ->references('id')
                ->on('l5_list_of_street_names')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->decimal('latitudes', 8, 6);
            $table->decimal('longitudes', 9, 6);
            $table->text('description')->nullable();
            $table->string('image_url')->nullable();
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
        Schema::dropIfExists('plants');
    }
}
