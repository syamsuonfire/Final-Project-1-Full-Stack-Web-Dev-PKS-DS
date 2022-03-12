<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbPasokTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_pasok', function (Blueprint $table) {
            $table->increments('id_pasok');
            $table->string('barang_pasok_id', 200);
            $table->string('jumlah_pasok', 200);
            $table->string('nama_pemasok', 200);
            $table->date('tanggal_pasok');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_pasok');
    }
}
