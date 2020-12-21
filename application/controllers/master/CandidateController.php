<?php
defined('BASEPATH') or exit('No direct script access allowed');

class CandidateController extends CI_Controller
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

    public function create($id)
    {
        $data['voting_id'] = $id;

        $where = array(
            'is_active' => 1,
        );
        $data['party_item'] = $this->M_crud->edit_data($where, 'party')->result();

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
            $candidate_id = $this->M_crud->get_last_data_after_input($data, 'candidate');

            if (isset($_POST['party_id'])) {
                // tambah detail transaksi
                for ($i = 0; $i < count($this->input->post('party_id')); $i++) {
                    $party_id = $this->input->post('party_id')[$i];
                    $data = array(
                        'candidate_id' => $candidate_id,
                        'party_id' => $party_id
                    );
                    $this->M_crud->input_data($data, 'member');
                }
            }

            redirect('voting/' . $voting_id . '/show');
        } else {
            $data['voting_id'] = $voting_id;
            $this->template->load('layouts/app', 'master/candidate/create', $data);
        }
    }

    public function edit($id)
    {
        $where = array('candidate_id' => $id);
        $data['item'] = $this->M_crud->edit_data($where, 'candidate')->row();

        $where = array(
            'is_active' => 1,
        );
        $data['party_item'] = $this->M_crud->edit_data($where, 'party')->result();

        $where = array(
            'candidate_id' => $id,
        );
        $data['member_item'] = $this->M_crud->edit_data($where, 'member')->result();

        $this->template->load('layouts/app', 'master/candidate/edit', $data);
    }

    public function update()
    {
        $this->form_validation->set_rules('name', 'Nama', 'required');
        $this->form_validation->set_rules('old_photo', 'Foto', 'required');
        $this->form_validation->set_rules('number', 'Number', 'required');

        $candidate_id = $this->input->post('candidate_id');
        $voting_id = $this->input->post('voting_id');
        $name = $this->input->post('name');
        $old_photo = $this->input->post('old_photo');
        $number = $this->input->post('number');

        // ambil data lama
        $where = array(
            'candidate_id' => $candidate_id,
        );
        $data['item'] = $this->M_crud->edit_data($where, 'candidate')->row();
        // 

        $photo_id = explode(".", $old_photo)[0];

        if ($this->form_validation->run() != false) {
            if (!empty($_FILES['photo']['name'])) {
                $photo = $this->_uploadImage($photo_id);
            } else {
                $photo = $old_photo;
            }

            $data = array(
                'name' => $name,
                'photo' => $photo,
                'number' => $number,
            );
            $where = array(
                'candidate_id' => $candidate_id
            );

            $this->M_crud->update_data($where, $data, 'candidate');

            $this->M_crud->hapus_data($where, 'member');
            if (isset($_POST['party_id'])) {
                // tambah detail transaksi
                for ($i = 0; $i < count($this->input->post('party_id')); $i++) {
                    $party_id = $this->input->post('party_id')[$i];
                    $data = array(
                        'candidate_id' => $candidate_id,
                        'party_id' => $party_id
                    );
                    $this->M_crud->input_data($data, 'member');
                }
            }

            redirect('voting/' . $voting_id . '/show');
        } else {
            $this->template->load('layouts/app', 'master/candidate/edit', $data);
        }
    }

    public function delete($id)
    {
        $voting_id = "";
        // ambil data
        $where = array(
            'candidate_id' => $id,
        );
        $query = $this->M_crud->edit_data($where, 'candidate');
        if ($query->num_rows() > 0) {
            $voting_id = $query->row('voting_id');
        }

        $data = array(
            'is_active' => 0
        );

        $this->M_crud->update_data($where, $data, 'candidate');
        redirect('voting/' . $voting_id . '/show');
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
