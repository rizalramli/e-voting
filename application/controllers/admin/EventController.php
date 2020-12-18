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
        $this->load->model('M_crud');
    }

    public function index()
    {
        $table = 'events';
        $data['items'] = $this->M_crud->tampil_data($table)->result();
        $this->template->load('layouts/app', 'admin/event/index', $data);
    }

    public function create()
    {
        $this->template->load('layouts/app', 'admin/event/create');
    }

    public function store()
    {
        $name = $this->input->post('name');
        $description = $this->input->post('description');
        $date = $this->input->post('date');
        $start = $this->input->post('date') . " " . $this->input->post('start');
        $end = $this->input->post('date') . " " . $this->input->post('end');

        $data = array(
            'name' => $name,
            'description' => $description,
            'date' => $date,
            'start' => $start,
            'end' => $end,
            'user_id' => 1
        );
        $this->M_crud->input_data($data, 'events');
        redirect('events');
    }

    public function show($id)
    {
        $where = array('id' => $id);
        $data['items'] = $this->M_crud->edit_data($where, 'events')->result();
        $this->template->load('layouts/app', 'admin/event/show', $data);
    }
}
