<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDistrictsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('l3_districts', function (Blueprint $table) {
            $table->char('id', 7)->index();
            $table->char('regency_id', 4);
            $table->string('name', 50);
            $table->foreign('regency_id')
                ->references('id')
                ->on('l2_regencies')
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
        Schema::dropIfExists('l3_districts');
    }
}
