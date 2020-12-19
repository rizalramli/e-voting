<?php
defined('BASEPATH') or exit('No direct script access allowed');

class CandidateController extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_crud');
    }

    public function create($id)
    {
        $data['voting_id'] = $id;
        $this->template->load('layouts/app', 'master/candidate/create', $data);
    }

    public function store()
    {
        $voting_id = $this->input->post('voting_id');
        $name = $this->input->post('name');
        $number = $this->input->post('number');

        $this->form_validation->set_rules('name', 'Nama', 'required');
        $this->form_validation->set_rules('number', 'Number', 'required');

        if (empty($_FILES['photo']['name'])) {
            $this->form_validation->set_rules('photo', 'Photo', 'required');
        }

        if ($this->form_validation->run() != false) {
            $photo_id = uniqid();
            $data = array(
                'voting_id' => $voting_id,
                'name' => $name,
                'photo' => $this->_uploadImage($photo_id),
                'number' => $number,
                'is_active' => 1
            );
            $this->M_crud->input_data($data, 'candidate');
            redirect('voting/' . $voting_id . '/show');
        } else {
            $data['voting_id'] = $voting_id;
            $this->template->load('layouts/app', 'master/candidate/create', $data);
        }
    }

    private function _uploadImage($photo_id)
    {
        $config['upload_path']          = './assets/photo/kandidat/';
        $config['allowed_types']        = 'jpeg|jpg|png';
        $config['file_name']             = $photo_id;
        $config['overwrite']             = true;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('photo')) {
            return $this->upload->data('file_name');
        }
    }
}
