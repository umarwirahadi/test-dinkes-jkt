<?php

namespace App\Http\Controllers;

use App\Http\Resources\RumahsakitResource;
use App\Models\Rumahsakit;
use App\Models\StatusKoneksi;
use App\Models\TransaksiSatuSehat;
use Carbon\Carbon;
use GuzzleHttp\Client;
use Illuminate\Http\Request;

class RumahsakitController extends Controller
{
    /* public function __construct()
    {
        $this->middleware('auth');
    } */

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        $data_rs = Rumahsakit::latest()->paginate(10);
        return new RumahsakitResource(true,'data rumah sakit',$data_rs);
        
        // return view('home');

    }

    public function sync(){
        $data = $this->getAllRumahSakit();
        $data = $this->getAllStatusKoneksi();
        $data = $this->getAllTransaksiSatuSehat();
        return response()->json($data);
    }

    
    private function getAllRumahSakit(){
        try {
            $APIclient = new Client();

            $response = $APIclient->request('GET','https://dinkes.jakarta.go.id/apps/jp-2024/all-rsud.json');
            if($response->getStatusCode() == 200 ){
                $data_rs = json_decode($response->getBody(), true);
                    $total = 0;
                    foreach ($data_rs as $key => $rs) {
                        Rumahsakit::updateOrCreate(['organisasi_id'=>$rs['organisasi_id']],['kode_rs'=>$rs['kode_rs'],'nama_rs'=>$rs['nama'],'kelas_rs'=>$rs['kelas_rs'],'kota_kab'=>$rs['kota_kab']]);
                        $total = $key;
                    }
                return ['total_success'=>$total];
            } else {
                return false;
            }

        } catch (\Throwable $th) {
            throw $th;
        }
    }
    private function getAllStatusKoneksi(){
        try {
            $APIclient = new Client();

            $response = $APIclient->request('GET','https://dinkes.jakarta.go.id/apps/jp-2024/all-rs-terkoneksi.json');
            if($response->getStatusCode() == 200 ){
                $data_koneksi = json_decode($response->getBody(), true);
                    foreach ($data_koneksi as $key => $rs) {
                        StatusKoneksi::updateOrCreate(['organisasi_id'=>$rs['organisasi_id']],['nama'=>$rs['nama'],'lokasi'=>$rs['lokasi'],'alamat'=>$rs['alamat'],'status_koneksi'=>$rs['status']]);
                    }
                return ['total_success'=>$key];
            } else {
                return false;
            }

        } catch (\Throwable $th) {
            throw $th;
        }
    }
    private function getAllTransaksiSatuSehat(){
        try {
            $APIclient = new Client();

            $response = $APIclient->request('GET','https://dinkes.jakarta.go.id/apps/jp-2024/transaksi-data-satusehat.json');
            if($response->getStatusCode() == 200 ){
                $data_satusehat = json_decode($response->getBody(), true);
                    $total = 0;
                    foreach ($data_satusehat as $key => $rs) {
                        TransaksiSatuSehat::updateOrCreate(['organisasi_id'=>$rs['organisasi_id']],['nama'=>$rs['nama'],'jumlah_pengiriman_data'=>$rs['jumlah_pengiriman_data'],'tanggal_transaksi'=>Carbon::parse($rs['transaction_date'])->format('y-m-d')]);
                        $total = $key;
                    }
                return ['total_success'=>$total];
            } else {
                return false;
            }

        } catch (\Throwable $th) {
            throw $th;
        }
    }
}
