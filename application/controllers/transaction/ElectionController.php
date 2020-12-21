<?php

class ElectionController extends CI_Controller
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
        $table = 'voting';
        $data['items'] = $this->db->order_by('name', 'ASC')->get($table)->result();

        $voter_id = $this->session->userdata('voter_id');
        $where = array('voter_id' => $voter_id);
        $data['election_item'] = $this->M_crud->edit_data($where, 'view_election')->result();
        $this->template->load('layouts/app_voter', 'transaction/election/index', $data);
    }

    public function show($id)
    {
        if ($id == 1) {
            $where = array('voting_id' => $id);
            $data['items'] = $this->M_crud->edit_data($where, 'candidate')->result();
            $this->template->load('layouts/app_voter', 'transaction/election/show', $data);
        } else {
            $where = array(
                'is_active' => 1,
                'voting_id' => $id
            );
            $data['party_item'] = $this->M_crud->get_data_group_by('view_member', $where, 'party_id', 'party_name')->result();
            $data['member_item'] = $this->M_crud->edit_data($where, 'view_member')->result();
            $this->template->load('layouts/app_voter', 'transaction/election/show2', $data);
        }
    }

    public function storeAjax()
    {
        $candidate_id = $this->input->post('candidate_id');
        $voter_id = $this->session->userdata('voter_id');

        $data = array(
            'candidate_id' => $candidate_id,
            'voter_id' => $voter_id
        );

        $this->M_crud->input_data($data, 'election');
        echo json_encode(array("status" => true));
    }
}
