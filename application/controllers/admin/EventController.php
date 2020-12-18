<?php

class EventController extends CI_Controller
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
        $table = 'events';
        $data['items'] = $this->db->order_by('date', 'DESC')->get($table)->result();
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

        $this->form_validation->set_rules('name', 'Nama', 'required');
        $this->form_validation->set_rules('description', 'Keterangan', 'required');
        $this->form_validation->set_rules('date', 'Tanggal', 'required');
        $this->form_validation->set_rules('start', 'Jam Mulai', 'required');
        $this->form_validation->set_rules('end', 'Jam Selesai', 'required');

        if ($this->form_validation->run() != false) {
            $data = array(
                'name' => $name,
                'description' => $description,
                'date' => $date,
                'start' => $start,
                'end' => $end,
                'is_active' => 0,
                'user_id' => $this->session->userdata('id_user')
            );
            $this->M_crud->input_data($data, 'events');
            redirect('events');
        } else {
            $this->template->load('layouts/app', 'admin/event/create');
        }
    }

    public function show($id)
    {
        $where = array('id' => $id);
        $data['item'] = $this->M_crud->edit_data($where, 'events')->row();
        $this->template->load('layouts/app', 'admin/event/show', $data);
    }

    public function editAjax($id)
    {
        $where = array('id' => $id);
        $data = $this->M_crud->edit_data($where, 'events')->row();
        $data->start = date('H:i', strtotime($data->start));
        $data->end = date('H:i', strtotime($data->end));
        echo json_encode($data);
    }

    public function updateAjax()
    {
        $this->_validate();
        $id = $this->input->post('id');
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
        );

        $where = array(
            'id' => $id
        );

        $this->M_crud->update_data($where, $data, 'events');
        echo json_encode(array("status" => TRUE));
    }

    private function _validate()
    {
        $data = array();
        $data['error_string'] = array();
        $data['inputerror'] = array();
        $data['status'] = TRUE;

        if ($this->input->post('name') == '') {
            $data['inputerror'][] = 'name';
            $data['error_string'][] = 'Nama is required';
            $data['status'] = FALSE;
        }

        if ($this->input->post('description') == '') {
            $data['inputerror'][] = 'description';
            $data['error_string'][] = 'Keterangan is required';
            $data['status'] = FALSE;
        }

        if ($this->input->post('date') == '') {
            $data['inputerror'][] = 'date';
            $data['error_string'][] = 'Tanggal is required';
            $data['status'] = FALSE;
        }

        if ($this->input->post('start') == '') {
            $data['inputerror'][] = 'start';
            $data['error_string'][] = 'Jam Mulai is required';
            $data['status'] = FALSE;
        }

        if ($this->input->post('end') == '') {
            $data['inputerror'][] = 'end';
            $data['error_string'][] = 'Jam Selesai is required';
            $data['status'] = FALSE;
        }

        if ($data['status'] === FALSE) {
            echo json_encode($data);
            exit();
        }
    }
}
