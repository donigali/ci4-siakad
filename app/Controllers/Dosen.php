<?php

namespace App\Controllers;

use App\Models\ModelDosen;

class Dosen extends BaseController
{

    public function __construct()
    {
        helper('form');
        $this->ModelDosen = new ModelDosen();
    }

    public function index()
    {
        $data = [
            'title' => 'Dosen',
            'dosen' => $this->ModelDosen->allData(),
            'isi'    => 'admin/dosen/v_index'
        ];
        return view('layout/v_wrapper', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Add Dosen',
            'isi'    => 'admin/dosen/v_add'
        ];
        return view('layout/v_wrapper', $data);
    }

    public function insert()
    {
        if ($this->validate([
            'kode_dosen' => [
                'label' => 'Kode Dosen',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!'
                ]
            ],
            'nidn' => [
                'label' => 'NIDN',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!',
                ]
            ],
            'nama_dosen' => [
                'label' => 'Nama Dosen',
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
            'foto_dosen' => [
                'label' => 'Foto Dosen',
                'rules' => 'uploaded[foto_dosen]|max_size[foto_dosen,1024]|mime_in[foto_dosen,image/png,image/jpeg,image/jpg,image/gif,image/ico]',
                'errors' => [
                    'uploaded' => '{field} Wajib Diisi !!!',
                    'max_size' => '{field} Max 1024 KB',
                    'mime_in' => 'Format {field} Wajib PNG, JPG, JPEG, GIF, ICO'
                ]
            ],
        ])) {
            //mengambil file foto dari form input
            $foto = $this->request->getFile('foto_dosen');
            //merename nama file foto
            $nama_file = $foto->getRandomName();
            //jika valid
            $data = array(
                'kode_dosen' => $this->request->getPost('kode_dosen'),
                'nidn' => $this->request->getPost('nidn'),
                'nama_dosen' => $this->request->getPost('nama_dosen'),
                'password' => $this->request->getPost('password'),
                'foto_dosen' => $nama_file,
            );
            //memindahkan file foto dari form input ke folder foto di directory
            $foto->move('fotodosen', $nama_file);
            $this->ModelDosen->add($data);
            session()->setFlashdata('pesan', 'Data Berhasil Di Tambahkan !!');
            return redirect()->to(base_url('dosen'));
        } else {
            //jika tidak valid
            session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('dosen/add'));
        }
    }


    public function edit($id_dosen)
    {
        $data = [
            'title' => 'Edit Dosen',
            'dosen' => $this->ModelDosen->detailData($id_dosen),
            'isi'    => 'admin/dosen/v_edit'
        ];
        return view('layout/v_wrapper', $data);
    }

    public function update($id_dosen)
    {
        if ($this->validate([
            'kode_dosen' => [
                'label' => 'Kode Dosen',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!'
                ]
            ],
            'nidn' => [
                'label' => 'NIDN',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!',
                ]
            ],
            'nama_dosen' => [
                'label' => 'Nama Dosen',
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
            'foto_dosen' => [
                'label' => 'Foto Dosen',
                'rules' => 'max_size[foto_dosen,1024]|mime_in[foto_dosen,image/png,image/jpeg,image/jpg,image/gif,image/ico]',
                'errors' => [
                    'max_size' => '{field} Max 1024 KB',
                    'mime_in' => 'Format {field} Wajib PNG, JPG, JPEG, GIF, ICO'
                ]
            ],
        ])) {
            //mengambil file foto dari form input
            $foto = $this->request->getFile('foto_dosen');

            if ($foto->getError() == 4) {
                //jika foto tidak diganti
                $data = array(
                    'id_dosen' => $id_dosen,
                    'kode_dosen' => $this->request->getPost('kode_dosen'),
                    'nidn' => $this->request->getPost('nidn'),
                    'nama_dosen' => $this->request->getPost('nama_dosen'),
                    'password' => $this->request->getPost('password'),
                );
                $this->ModelDosen->edit($data);
            } else {
                //menghapus foto lama
                $dosen = $this->ModelDosen->detailData($id_dosen);
                if ($dosen['foto_dosen'] != "") {
                    unlink('fotodosen/' . $dosen['foto_dosen']);
                }
                //merename nama file foto
                $nama_file = $foto->getRandomName();
                //jika valid
                $data = array(
                    'id_dosen' => $id_dosen,
                    'kode_dosen' => $this->request->getPost('kode_dosen'),
                    'nidn' => $this->request->getPost('nidn'),
                    'nama_dosen' => $this->request->getPost('nama_dosen'),
                    'password' => $this->request->getPost('password'),
                    'foto_dosen' => $nama_file,
                );
                //memindahkan file foto dari form input ke folder foto di directory
                $foto->move('fotodosen', $nama_file);
                $this->ModelDosen->edit($data);
            }
            session()->setFlashdata('pesan', 'Data Berhasil Di Ganti !!');
            return redirect()->to(base_url('dosen'));
        } else {
            //jika tidak valid
            session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('dosen/edit/' . $id_dosen));
        }
    }


    public function delete($id_dosen)
    {
        //menghapus foto lama
        $dosen = $this->ModelDosen->detailData($id_dosen);
        if ($dosen['foto_dosen'] != "") {
            unlink('fotodosen/' . $dosen['foto_dosen']);
        }
        $data = [
            'id_dosen' => $id_dosen,
        ];
        $this->ModelDosen->delete_data($data);
        session()->setFlashdata('pesan', 'Data Berhasil Di Hapus !!');
        return redirect()->to(base_url('dosen'));
    }
    //--------------------------------------------------------------------

}
