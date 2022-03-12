<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbKembalianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_kembalian', function (Blueprint $table) {
            $table->increments('id_kembalian');
            $table->string('kode_transaksi_kembalian', 100);
            $table->string('bayar', 200);
            $table->string('kembalian', 100);
            $table->date('tanggal_transaksi');
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_kembalian');
    }
}
