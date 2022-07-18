<?php

namespace App\Controllers;

use App\Models\ModelTa;
use App\Models\ModelKrs;

class Krs extends BaseController
{

    public function __construct()
    {
        $this->ModelTa = new ModelTa();
        $this->ModelKrs = new ModelKrs();
    }

    public function index()
    {
        $mhs =  $this->ModelKrs->DataMhs();
        $ta = $this->ModelTa->ta_aktif();
        $data = [
            'title' => 'Kartu Rencana Studi (KRS)',
            'ta_aktif' => $this->ModelTa->ta_aktif(),
            'mhs'      => $this->ModelKrs->DataMhs(),
            'matkul_ditawarkan' => $this->ModelKrs->MatkulDitawarkan($ta['id_ta'], $mhs['id_prodi']),
            'data_matkul'   => $this->ModelKrs->DataKrs($mhs['id_mhs'], $ta['id_ta']),
            'isi'    => 'mhs/krs/v_krs'
        ];
        return view('layout/v_wrapper', $data);
    }

    public function tambah_matkul($id_jadwal)
    {
        $mhs = $this->ModelKrs->DataMhs();
        $ta = $this->ModelTa->ta_aktif();
        $data = [
            'id_jadwal' => $id_jadwal,
            'id_ta'     =>  $ta['id_ta'],
            'id_mhs'    => $mhs['id_mhs']
        ];
        $this->ModelKrs->TambahMatkul($data);
        session()->setFlashdata('pesan', 'Mata Kuliah Berhasil Di Tambahkan !!');
        return redirect()->to(base_url('krs'));
    }

    public function delete($id_krs)
    {
        $data = [
            'id_krs' => $id_krs,
        ];

        $this->ModelKrs->delete_data($data);
        session()->setFlashdata('pesan', 'Data KRS Berhasil Di Hapus !!');
        return redirect()->to(base_url('krs'));
    }

    public function print()
    {
        $mhs =  $this->ModelKrs->DataMhs();
        $ta = $this->ModelTa->ta_aktif();
        $data = [
            'title' => 'Print KRS',
            'ta_aktif' => $this->ModelTa->ta_aktif(),
            'mhs'      => $this->ModelKrs->DataMhs(),
            'data_matkul'   => $this->ModelKrs->DataKrs($mhs['id_mhs'], $ta['id_ta']),
        ];
        return view('mhs/krs/v_print_krs', $data);
    }


    //--------------------------------------------------------------------

}
