<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rumahsakit extends Model
{
    use HasFactory;
    protected $table    = 'rumahsakit';
    protected $fillable = [
    'organisasi_id',
    'kode_rs',
    'email',
    'nama_rs',
    'kelas_rs',
    'kota_kab',
    ];
}
