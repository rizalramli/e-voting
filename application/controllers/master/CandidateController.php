<?php
defined('BASEPATH') or exit('No direct script access allowed');

class CandidateController extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_crud');
    }

    public function create()
    {
        $this->template->load('layouts/app', 'master/candidate/create');
    }

}
