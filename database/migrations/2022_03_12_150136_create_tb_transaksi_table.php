<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbTransaksiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_transaksi', function (Blueprint $table) {
        
            $table->increments('id_transaksi');
            $table->string('kode_transaksi', 200);
            $table->string('barang_id', 200);
            $table->string('jumlah_beli', 200);
            $table->string('total_harga', 200);
            $table->string('pengguna_id', 200);
            $table->date('tanggal_beli');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_transaksi');
    }
}
