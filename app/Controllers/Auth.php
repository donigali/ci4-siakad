<?php

namespace App\Controllers;

use App\Models\ModelAuth;

class Auth extends BaseController
{

    public function __construct()
    {
        helper('form');
        $this->ModelAuth = new ModelAuth();
    }

    public function index()
    {
        $data = [
            'title' => 'Login',
            'isi'    => 'v_login',
            'validation' =>  \Config\Services::validation(),
        ];
        return view('layout/v_wrapper', $data);
    }

    public function cek_login()
    {


        if ($this->validate([
            'username' => [
                'label' => 'Username',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!'
                ]
            ],
            'level' => [
                'label' => 'Level',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!'
                ]
            ],
            'password' => [
                'label' => 'Password',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi !!!'
                ]
            ],
        ])) {
            //jika valid
            $level = $this->request->getPost('level');
            $username = $this->request->getPost('username');
            $password = $this->request->getPost('password');
            if ($level == 1) {
                $cek_user = $this->ModelAuth->login_user($username, $password);
                if ($cek_user) {
                    //jika data cocok
                    session()->set('username', $cek_user['username']);
                    session()->set('nama', $cek_user['nama_user']);
                    session()->set('foto', $cek_user['foto']);
                    session()->set('level', $level);
                    //login
                    return redirect()->to(base_url('admin'));
                } else {
                    //jika data tidak cocok
                    session()->setFlashdata('pesan', 'Login Gagal!, Username Atau Password Salah !!');
                    return redirect()->to(base_url('auth/index'));
                }
            } elseif ($level == 2) {
                $cek_mhs = $this->ModelAuth->login_mhs($username, $password);
                if ($cek_mhs) {
                    //jika data cocok
                    session()->set('username', $cek_mhs['nim']);
                    session()->set('nama', $cek_mhs['nama_mhs']);
                    session()->set('foto', $cek_mhs['foto_mhs']);
                    session()->set('level', $level);
                    //login
                    return redirect()->to(base_url('mhs'));
                } else {
                    //jika data tidak cocok
                    session()->setFlashdata('pesan', 'Login Gagal!, Username Atau Password Salah !!');
                    return redirect()->to(base_url('auth/index'));
                }
            } elseif ($level == 3) {
                $cek_dsn = $this->ModelAuth->login_dsn($username, $password);
                if ($cek_dsn) {
                    //jika data cocok
                    session()->set('username', $cek_dsn['nidn']);
                    session()->set('nama', $cek_dsn['nama_dosen']);
                    session()->set('foto', $cek_dsn['foto_dosen']);
                    session()->set('level', $level);
                    //login
                    return redirect()->to(base_url('dsn'));
                } else {
                    //jika data tidak cocok
                    session()->setFlashdata('pesan', 'Login Gagal!, Username Atau Password Salah !!');
                    return redirect()->to(base_url('auth/index'));
                }
            }
        } else {
            $validation =  \Config\Services::validation();
            return redirect()->to(base_url('auth/index'))->withInput()->with('validation', $validation);
        }
    }


    public function logout()
    {
        session()->remove('log');
        session()->remove('username');
        session()->remove('nama');
        session()->remove('foto');
        session()->remove('level');
        session()->setFlashdata('sukses', 'Logout Suksess !!!');
        return redirect()->to(base_url('auth/index'));
    }
    //--------------------------------------------------------------------

}
