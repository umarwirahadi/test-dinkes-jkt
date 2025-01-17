<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StatusKoneksi extends Model
{
    use HasFactory;
    protected $table    = 'status_koneksi';
    protected $fillable = [
        'organisasi_id',
        'nama',
        'lokasi',
        'alamat',
        'status_koneksi',
    ];
}
