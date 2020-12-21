<?php

class VotingController extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('username')) {
            redirect('login_admin');
        }
        if ($this->session->userdata('role') != "Admin") {
            redirect('login_admin');
        }
        $this->load->model('M_crud');
    }

    public function index()
    {
        $where = array(
            'is_active' => 1,
        );
        $table = 'voting';

        $data['items'] = $this->M_crud->edit_data($where, $table)->result();
        $this->template->load('layouts/app', 'master/voting/index', $data);
    }

    public function create()
    {
        $this->template->load('layouts/app', 'master/voting/create');
    }

    public function store()
    {
        $name  = $this->input->post('name');
        $date  = $this->input->post('date');
        $start = $this->input->post('date') . " " . $this->input->post('start');
        $end   = $this->input->post('date') . " " . $this->input->post('end');

        $this->form_validation->set_rules('name', 'Nama', 'required');
        $this->form_validation->set_rules('date', 'Tanggal', 'required');
        $this->form_validation->set_rules('start', 'Jam Mulai', 'required');
        $this->form_validation->set_rules('end', 'Jam Selesai', 'required');

        if ($this->form_validation->run() != false) {
            $data = array(
                'name'      => $name,
                'date'      => $date,
                'start'     => $start,
                'end'       => $end,
                'is_active' => 1,
                'admin_id'  => $this->session->userdata('admin_id'),
            );
            $this->M_crud->input_data($data, 'voting');
            redirect('voting');
        } else {
            $this->template->load('layouts/app', 'master/voting/create');
        }
    }

    public function show($id)
    {
        $voting_id    = array('voting_id' => $id);
        $data['item'] = $this->M_crud->edit_data($voting_id, 'voting')->row();

        $where = array(
            'is_active' => 1,
            'voting_id' => $id,
        );
        $data['candidate_item'] = $this->M_crud->edit_data($where, 'candidate')->result();

        $this->template->load('layouts/app', 'master/voting/show', $data);
    }

    public function editAjax($id)
    {
        $where       = array('voting_id' => $id);
        $data        = $this->M_crud->edit_data($where, 'voting')->row();
        $data->start = date('H:i', strtotime($data->start));
        $data->end   = date('H:i', strtotime($data->end));
        echo json_encode($data);
    }

    public function updateAjax()
    {
        $this->_validate();
        $voting_id = $this->input->post('voting_id');
        $name      = $this->input->post('name');
        $date      = $this->input->post('date');
        $start     = $this->input->post('date') . " " . $this->input->post('start');
        $end       = $this->input->post('date') . " " . $this->input->post('end');

        $data = array(
            'name'  => $name,
            'date'  => $date,
            'start' => $start,
            'end'   => $end,
        );

        $where = array(
            'voting_id' => $voting_id,
        );

        $this->M_crud->update_data($where, $data, 'voting');
        echo json_encode(array("status" => true));
    }

    private function _validate()
    {
        $data                 = array();
        $data['error_string'] = array();
        $data['inputerror']   = array();
        $data['status']       = true;

        if ($this->input->post('name') == '') {
            $data['inputerror'][]   = 'name';
            $data['error_string'][] = 'Nama is required';
            $data['status']         = false;
        }

        if ($this->input->post('date') == '') {
            $data['inputerror'][]   = 'date';
            $data['error_string'][] = 'Tanggal is required';
            $data['status']         = false;
        }

        if ($this->input->post('start') == '') {
            $data['inputerror'][]   = 'start';
            $data['error_string'][] = 'Jam Mulai is required';
            $data['status']         = false;
        }

        if ($this->input->post('end') == '') {
            $data['inputerror'][]   = 'end';
            $data['error_string'][] = 'Jam Selesai is required';
            $data['status']         = false;
        }

        if ($data['status'] === false) {
            echo json_encode($data);
            exit();
        }
    }
}
