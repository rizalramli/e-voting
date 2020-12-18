<?php

class EventController extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        // if (!$this->session->userdata('id_user')) {
        //     redirect('/');
        // } else if ($this->session->userdata('akses') != 'Pimpinan') {
        //     redirect('login/logout');
        // }
        // $this->load->model('pimpinan/M_home');
    }

    public function index()
    {
        $this->template->load('layouts/app', 'admin/event/index');
    }
}
