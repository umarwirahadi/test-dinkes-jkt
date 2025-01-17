<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStatusKoneksisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('status_koneksi', function (Blueprint $table) {
            $table->id();
            $table->string('organisasi_id');
            $table->string('nama');
            $table->string('lokasi')->nullable();
            $table->text('alamat')->nullable();
            $table->string('status_koneksi')->default('Belum Terkoneksi');
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
        Schema::dropIfExists('status_koneksi');
    }
}
