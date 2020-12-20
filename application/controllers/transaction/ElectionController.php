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

        $this->load->view('transaction/election/index', $data);
    }

    public function show($id)
    {
        $where = array('voting_id' => $id);
        if ($id == 1) {
            $data['items'] = $this->M_crud->edit_data($where, 'candidate')->result();
            $this->load->view('transaction/election/show', $data);
        } else {
            // $data['items'] = $this->M_crud->edit_data($where, 'candidate')->result();
            $this->load->view('transaction/election/show2');
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
