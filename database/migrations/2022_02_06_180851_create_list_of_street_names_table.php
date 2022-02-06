<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateListOfStreetNamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('l5_list_of_street_names', function (Blueprint $table) {
            $table->char('id', 14)->index();
            $table->char('village_id', 10);
            $table->string('name', 255);
            $table->foreign('village_id')
                ->references('id')
                ->on('l4_villages')
                ->onUpdate('cascade')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('list_of_street_names');
    }
}
