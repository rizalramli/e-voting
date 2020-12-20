<?php

class RecapitulationController extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        // if (!$this->session->userdata('id_user')) {
        //     redirect('login');
        // }
        $this->load->model('M_crud');
    }

    public function index()
    {
        $this->template->load('layouts/app', 'dashboard/recapitulation/index');
    }
}
