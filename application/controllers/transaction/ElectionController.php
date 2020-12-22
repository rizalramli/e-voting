<?php

class ElectionController extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('email')) {
            redirect('login');
        }
        date_default_timezone_set('Asia/Jakarta');
        $this->load->model('M_crud');
    }

    public function index()
    {
        $date = date('Y-m-d H:i:s');
        $data['items'] = $this->M_crud->get_data_voting($date)->result();

        $voter_id = $this->session->userdata('voter_id');
        $where = array('voter_id' => $voter_id);
        $data['election_item'] = $this->M_crud->edit_data($where, 'view_election')->result();

        $data_voter = $this->M_crud->edit_data($where, 'voter')->row();

        $data['attachment'] = $data_voter->attachment;

        $this->template->load('layouts/app_voter', 'transaction/election/index', $data);
    }

    public function show($id)
    {
        $voter_id = $this->session->userdata('voter_id');

        $where = array('voter_id' => $voter_id);
        $data_voter = $this->M_crud->edit_data($where, 'voter')->row();
        $attachment = $data_voter->attachment;

        if ($attachment != "") {
            $where = array(
                'voter_id' => $voter_id,
                'voting_id' => $id
            );

            $query = $this->M_crud->edit_data($where, 'view_election')->num_rows();

            if ($query == 0) {
                if ($id == 1) {
                    $where = array(
                        'is_active' => 1,
                        'voting_id' => $id
                    );
                    $voting_data = $this->M_crud->edit_data($where, 'voting')->row();
                    $data['title'] = $voting_data->name;
                    $data['party_item'] = $this->M_crud->edit_data($where, 'view_member')->result();
                    $data['items'] = $this->M_crud->get_data_group_by('view_member', $where, 'candidate_id', 'number')->result();

                    $this->template->load('layouts/app_voter', 'transaction/election/show', $data);
                } else {
                    $where = array(
                        'is_active' => 1,
                        'voting_id' => $id
                    );
                    $voting_data = $this->M_crud->edit_data($where, 'voting')->row();
                    $data['title'] = $voting_data->name;
                    $data['party_item'] = $this->M_crud->get_data_group_by('view_member', $where, 'party_id', 'party_name')->result();
                    $data['member_item'] = $this->M_crud->edit_data($where, 'view_member')->result();

                    $this->template->load('layouts/app_voter', 'transaction/election/show2', $data);
                }
            } else {
                echo "<script>
                    alert('Anda Sudah Melakukan Pemilihan !');
                    window.location = '" . base_url("login") . "';
                    </script>";
            }
        } else {
            echo "<script>
            alert('Upload Foto Bukti Pemilihan Terlebih Dahulu !');
            window.location = '" . base_url("login") . "';
            </script>";
        }
    }

    public function storeAjax()
    {
        $candidate_id = $this->input->post('candidate_id');
        $voter_id = $this->session->userdata('voter_id');

        $where = array('voter_id' => $voter_id);
        $data_voter = $this->M_crud->edit_data($where, 'voter')->row();
        $attachment = $data_voter->attachment;

        $date = date('Y-m-d H:i:s');

        $data = array(
            'candidate_id' => $candidate_id,
            'voter_id' => $voter_id,
            'attachment' => $attachment,
            'create_at' => $date
        );

        $this->M_crud->input_data($data, 'election');
        echo json_encode(array("status" => true));
    }

    public function storeOnPartyAjax()
    {
        $party_id = $this->input->post('party_id');
        $voting_id = $this->input->post('voting_id');
        $voter_id = $this->session->userdata('voter_id');

        $candidate_id = "";
        $candidate_name = "";
        $get = $this->M_crud->getFirstCandidateByParty($party_id, $voting_id);
        foreach ($get->result_array() as $row) {
            $candidate_id = $row["candidate_id"];
            $candidate_name = $row["candidate_name"];
        }

        $where = array('voter_id' => $voter_id);
        $data_voter = $this->M_crud->edit_data($where, 'voter')->row();
        $attachment = $data_voter->attachment;

        $date = date('Y-m-d H:i:s');

        $data = array(
            'candidate_id' => $candidate_id,
            'voter_id' => $voter_id,
            'attachment' => $attachment,
            'create_at' => $date
        );

        $this->M_crud->input_data($data, 'election');
        echo json_encode(array(
            "status" => true,
            "candidate_name" => $candidate_name
        ));
    }

    public function sendImage()
    {
        $voter_id = $this->session->userdata('voter_id');
        $attachment = uniqid();

        $where = array(
            'voter_id' => $voter_id
        );

        $data = array(
            'attachment' => $this->_uploadImage($attachment)
        );

        $this->M_crud->update_data($where, $data, 'voter');
        redirect('election');
    }

    private function _uploadImage($attachment)
    {
        $config['upload_path']          = './assets/photo/attachment/';
        $config['allowed_types']        = 'jpeg|jpg|png';
        $config['file_name']             = $attachment;
        $config['overwrite']             = true;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('attachment')) {
            return $this->upload->data('file_name');
        }
    }

    private function _deleteImage($id)
    {
        $where = array('voter_id' => $id);
        $data = $this->M_crud->edit_data($where, 'voter')->row();
        $filename = explode(".", $data->attachment)[0];
        return array_map('unlink', glob(FCPATH . "assets/photo/attachment/$filename.*"));
    }
}
