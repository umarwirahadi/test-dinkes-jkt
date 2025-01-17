<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TransaksiSatuSehat extends Model
{
    use HasFactory;
    protected $table    ='transaksi_satu_sehat';
    protected $fillable =[
        'organisasi_id',
        'nama',
        'jumlah_pengiriman_data',
        'tanggal_transaksi'
    ];
}
