<?php

namespace App\Controllers;

use App\Models\ModelMahasiswa;
use App\Models\ModelProdi;

class Mahasiswa extends BaseController
{

    public function __construct()
    {
        helper('form');
        $this->ModelMahasiswa = new ModelMahasiswa();
        $this->ModelProdi = new ModelProdi();
    }

    public function index()
    {
        $data = [
            'title' => 'Siswa',
            'mhs'   => $this->ModelMahasiswa->allData(),
            'isi'    => 'admin/mahasiswa/v_index'
        ];
        return view('layout/v_wrapper', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Add Siswa',
            'prodi' => $this->ModelProdi->allData(),
            'isi'    => 'admin/mahasiswa/v_add'
        ];
        return view('layout/v_wrapper', $data);
    }

    public function insert()
    {
        if ($this->validate([
            'nim' => [
                'label' => 'nis',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!'
                ]
            ],
            'nama_mhs' => [
                'label' => 'Nama Siswa',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!',
                ]
            ],
            'id_prodi' => [
                'label' => 'Jurusan',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!',
                ]
            ],
            'password' => [
                'label' => 'Password',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!'
                ]
            ],
            'foto_mhs' => [
                'label' => 'Foto Siswa',
                'rules' => 'uploaded[foto_mhs]|max_size[foto_mhs,1024]|mime_in[foto_mhs,image/png,image/jpeg,image/jpg,image/gif,image/ico]',
                'errors' => [
                    'uploaded' => '{field} Wajib Diisi !!!',
                    'max_size' => '{field} Max 1024 KB',
                    'mime_in' => 'Format {field} Wajib PNG, JPG, JPEG, GIF, ICO'
                ]
            ],
        ])) {
            //mengambil file foto dari form input
            $foto = $this->request->getFile('foto_mhs');
            //merename nama file foto
            $nama_file = $foto->getRandomName();
            //jika valid
            $data = array(
                'nim' => $this->request->getPost('nim'),
                'nama_mhs' => $this->request->getPost('nama_mhs'),
                'id_prodi' => $this->request->getPost('id_prodi'),
                'password' => $this->request->getPost('password'),
                'foto_mhs' => $nama_file,
            );
            //memindahkan file foto dari form input ke folder foto di directory
            $foto->move('fotomhs', $nama_file);
            $this->ModelMahasiswa->add($data);
            session()->setFlashdata('pesan', 'Data Berhasil Di Tambahkan !!');
            return redirect()->to(base_url('mahasiswa'));
        } else {
            //jika tidak valid
            session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('mahasiswa/add'));
        }
    }

    public function edit($id_mhs)
    {
        $data = [
            'title' => 'Edit Mahasiswa',
            'prodi' => $this->ModelProdi->allData(),
            'mhs'   => $this->ModelMahasiswa->detailData($id_mhs),
            'isi'    => 'admin/mahasiswa/v_edit'
        ];
        return view('layout/v_wrapper', $data);
    }

    public function update($id_mhs)
    {
        if ($this->validate([
            'nim' => [
                'label' => 'nim',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!'
                ]
            ],
            'nama_mhs' => [
                'label' => 'Nama Mahasiswa',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!',
                ]
            ],
            'id_prodi' => [
                'label' => 'Program Studi',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!',
                ]
            ],
            'password' => [
                'label' => 'Password',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!'
                ]
            ],
            'foto_mhs' => [
                'label' => 'Foto Mahasiswa',
                'rules' => 'max_size[foto_mhs,1024]|mime_in[foto_mhs,image/png,image/jpeg,image/jpg,image/gif,image/ico]',
                'errors' => [
                    'max_size' => '{field} Max 1024 KB',
                    'mime_in' => 'Format {field} Wajib PNG, JPG, JPEG, GIF, ICO'
                ]
            ],
        ])) {
            //mengambil file foto dari form input
            $foto = $this->request->getFile('foto_mhs');
            if ($foto->getError() == 4) {
                $data = array(
                    'id_mhs' => $id_mhs,
                    'nim' => $this->request->getPost('nim'),
                    'nama_mhs' => $this->request->getPost('nama_mhs'),
                    'id_prodi' => $this->request->getPost('id_prodi'),
                    'password' => $this->request->getPost('password'),
                );
                $this->ModelMahasiswa->edit($data);
            } else {

                //menghapus foto lama
                $mhs = $this->ModelMahasiswa->detailData($id_mhs);
                if ($mhs['foto_mhs'] != "") {
                    unlink('fotomhs/' . $mhs['foto_mhs']);
                }

                //merename nama file foto
                $nama_file = $foto->getRandomName();
                //jika valid
                $data = array(
                    'id_mhs' => $id_mhs,
                    'nim' => $this->request->getPost('nim'),
                    'nama_mhs' => $this->request->getPost('nama_mhs'),
                    'id_prodi' => $this->request->getPost('id_prodi'),
                    'password' => $this->request->getPost('password'),
                    'foto_mhs' => $nama_file,
                );
                //memindahkan file foto dari form input ke folder foto di directory
                $foto->move('fotomhs', $nama_file);
                $this->ModelMahasiswa->edit($data);
            }
            session()->setFlashdata('pesan', 'Data Berhasil Di Tambahkan !!');
            return redirect()->to(base_url('mahasiswa'));
        } else {
            //jika tidak valid
            session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('mahasiswa/edit/' . $id_mhs));
        }
    }


    public function delete($id_mhs)
    {
        //menghapus foto lama
        $mhs = $this->ModelMahasiswa->detailData($id_mhs);
        if ($mhs['foto_mhs'] != "") {
            unlink('fotomhs/' . $mhs['foto_mhs']);
        }
        $data = [
            'id_mhs' => $id_mhs,
        ];
        $this->ModelMahasiswa->delete_data($data);
        session()->setFlashdata('pesan', 'Data Berhasil Di Hapus !!');
        return redirect()->to(base_url('mahasiswa'));
    }
    //--------------------------------------------------------------------

}
