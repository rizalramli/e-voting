<?php

class ElectionController extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        // if (!$this->session->userdata('id_user')) {
        //     redirect('login');
        // }
        date_default_timezone_set('Asia/Jakarta');
        $this->load->model('M_crud');
    }

    public function index()
    {
        // $table = 'voting';
        $date = date('Y-m-d H:i:s');
        $data['items'] = $this->M_crud->get_data_voting($date)->result();

        $voter_id = $this->session->userdata('voter_id');
        $where = array('voter_id' => $voter_id);
        $data['election_item'] = $this->M_crud->edit_data($where, 'view_election')->result();
        $this->template->load('layouts/app_voter', 'transaction/election/index', $data);
    }

    public function show($id)
    {
        if ($id == 1) {
            $where = array(
                'is_active' => 1,
                'voting_id' => $id
            );
            $data['party_item'] = $this->M_crud->edit_data($where, 'view_member')->result();
            $data['items'] = $this->M_crud->get_data_group_by('view_member', $where, 'candidate_id', 'number')->result();

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

        $data = array(
            'candidate_id' => $candidate_id,
            'voter_id' => $voter_id
        );

        $this->M_crud->input_data($data, 'election');
        echo json_encode(array(
            "status" => true,
            "candidate_name" => $candidate_name
        ));
    }
}
