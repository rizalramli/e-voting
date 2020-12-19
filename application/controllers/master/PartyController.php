<?php

class PartyController extends CI_Controller
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
        $table = 'party';
        $data['items'] = $this->db->order_by('name', 'ASC')->get($table)->result();
        $this->template->load('layouts/app', 'master/party/index', $data);
    }

    public function create()
    {
        $this->template->load('layouts/app', 'master/party/create');
    }

    public function store()
    {
        $name = $this->input->post('name');

        $this->form_validation->set_rules('name', 'Nama', 'required');
        if (empty($_FILES['photo']['name'])) {
            $this->form_validation->set_rules('photo', 'Photo', 'required');
        }

        if ($this->form_validation->run() != false) {
            $photo_id = uniqid();
            $data = array(
                'name' => $name,
                'photo' => $this->_uploadImage($photo_id),
                'is_active' => 1
            );
            $this->M_crud->input_data($data, 'party');
            redirect('party');
        } else {
            $this->template->load('layouts/app', 'master/party/create');
        }
    }

    // public function show($id)
    // {
    //     $where = array('id' => $id);
    //     $data['item'] = $this->M_crud->edit_data($where, 'voting')->row();
    //     $this->template->load('layouts/app', 'master/voting/show', $data);
    // }

    public function edit($id)
    {
        $where = array('id' => $id);
        $data['item'] = $this->M_crud->edit_data($where, 'party')->row();
        $this->template->load('layouts/app', 'master/party/edit', $data);
    }

    public function update()
    {
        $this->form_validation->set_rules('name', 'Nama', 'required');

        $id = $this->input->post('id');
        // ambil data lama
        $where = array('id' => $id);
        $data['item'] = $this->M_crud->edit_data($where, 'party')->row();
        // 

        $old_photo = $this->input->post('old_photo');
        $name = $this->input->post('name');

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
            );
            $where = array(
                'id' => $id
            );

            $this->M_crud->update_data($where, $data, 'party');
            redirect('party');
        } else {
            $this->template->load('layouts/app', 'master/party/edit', $data);
        }
    }

    public function delete($id)
    {
        $where = array('id' => $id);
        $this->_deleteImage($id);
        $this->M_crud->hapus_data($where, 'party');
        redirect('party');
    }

    private function _uploadImage($photo_id)
    {
        $config['upload_path']          = './assets/photo/partai/';
        $config['allowed_types']        = 'jpeg|jpg|png';
        $config['file_name']             = $photo_id;
        $config['overwrite']             = true;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('photo')) {
            return $this->upload->data('file_name');
        }
    }

    private function _deleteImage($id)
    {
        $where = array('id' => $id);
        $data = $this->M_crud->edit_data($where, 'party')->row();
        $filename = explode(".", $data->photo)[0];
        return array_map('unlink', glob(FCPATH . "assets/photo/partai/$filename.*"));
    }
}