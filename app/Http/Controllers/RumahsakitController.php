<?php

namespace App\Http\Controllers;

use App\Http\Resources\RumahsakitResource;
use App\Models\Rumahsakit;
use App\Models\StatusKoneksi;
use App\Models\TransaksiSatuSehat;
use Carbon\Carbon;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;

use function PHPUnit\Framework\isNull;

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
    public function index(Request $request)
    {
        try {
            $current_page   = !empty($_GET['page']) ? $_GET['page']:'1';
            $filter_kelas   = !empty($_GET['kelas']) ? $_GET['kelas']:'';            
            $filter_kota    = !empty($_GET['kota']) ? $_GET['kota']:'';
            $cache_key      = "rumahsakit_{$current_page}_kelas_{$filter_kelas}_kota_{$filter_kota}";
            $data_rs = Cache::remember($cache_key,10,function() use ($request){
                $query = DB::table('rumahsakit')
                ->join('status_koneksi','status_koneksi.organisasi_id','=','rumahsakit.organisasi_id')
                ->join('transaksi_satu_sehat','transaksi_satu_sehat.organisasi_id','=','rumahsakit.organisasi_id')
                ->select('rumahsakit.nama_rs','rumahsakit.organisasi_id','rumahsakit.kelas_rs','status_koneksi.status_koneksi','transaksi_satu_sehat.jumlah_pengiriman_data','status_koneksi.alamat','rumahsakit.kota_kab','rumahsakit.email');
                if(!is_null($request->get('kelas'))) {
                    $query->where('rumahsakit.kelas_rs','=',$request->get('kelas'));
                }
                if(!is_null($request->get('kota'))) {
                    $query->where('rumahsakit.kota_kab','=',$request->get('kota'));
                }
                return $query->paginate(10);
            });
            return new RumahsakitResource($data_rs);
        } catch (\Throwable $th) {
            return response()->json(['success'=>false,'messaage'=>'failed to access server '.$th->getMessage(),'data'=>null],500);
        }          
    }


    public function sync(){
        $data = $this->getAllRumahSakit();
        $data = $this->getAllStatusKoneksi();
        $data = $this->getAllTransaksiSatuSehat();
        return response()->json(['success'=>true,'messaage'=>'sinkronisasi berhasil..!'],200);
    }

    
    private function getAllRumahSakit(){
        try {
            $APIclient = new Client();

            $response = $APIclient->request('GET','https://dinkes.jakarta.go.id/apps/jp-2024/all-rsud.json');
            if($response->getStatusCode() == 200 ){
                $data_rs = json_decode($response->getBody(), true);
                    $total = 0;
                    foreach ($data_rs as $key => $rs) {
                        Rumahsakit::updateOrCreate(['organisasi_id'=>$rs['organisasi_id']],['kode_rs'=>$rs['kode_rs'],'nama_rs'=>$rs['nama'],'email'=>$rs['email'],'kelas_rs'=>$rs['kelas_rs'],'kota_kab'=>$rs['kota_kab']]);
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
