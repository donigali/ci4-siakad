<?php

namespace App\Filters;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Filters\FilterInterface;

class FilterMhs implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null)
    {
        // Do something here
        if (session()->get('level') == '') {
            session()->setFlashdata('pesan', 'Anda Belum Login, Silahkan Login Dulu !!!');
            return redirect()->to(base_url('auth'));
        }
    }

    //--------------------------------------------------------------------

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        // Do something here
        if (session()->get('level') == 2) {
            return redirect()->to(base_url('mhs'));
        }
    }
}
