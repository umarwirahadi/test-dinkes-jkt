<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransaksiSatuSehatsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transaksi_satu_sehat', function (Blueprint $table) {
            $table->id();
            $table->string('organisasi_id');
            $table->string('nama');
            $table->integer('jumlah_pengiriman_data')->default(0);
            $table->date('tanggal_transaksi')->nullable();
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
        Schema::dropIfExists('transaksi_satu_sehat');
    }
}
