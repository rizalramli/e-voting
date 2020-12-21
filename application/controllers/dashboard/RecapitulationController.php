<?php

class RecapitulationController extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('username')) {
            redirect('login_admin');
        }
        $this->load->model('M_crud');
    }

    public function index()
    {
        // Hasil rekapitulasi BEM
        $where_election_bem   = array(
            'voting_id'  => 1,
        );

        $data['election_grand_total_bem'] = $this->M_crud->edit_data($where_election_bem, 'view_election')->num_rows();
        $data['result_data_bem'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_candidate', $where_election_bem, 'election_total')->result();
        // end

        // Hasil rekapitulasi BLM
        $where_election_blm   = array(
            'voting_id'  => 2,
        );
        // panggil semua jumlah pemilih
        $data['election_grand_total_blm'] = $this->M_crud->edit_data($where_election_blm, 'view_election')->num_rows();
        // panggil jumlah pemilih per kandidat
        $data['result_data_blm'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_candidate', $where_election_blm, 'election_total')->result();
        // panggil jumlah pemilih per partai
        $data['result_data_party_blm'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_party', $where_election_blm, 'election_total')->result();
        // end

        // Hasil rekapitulasi DLM
        $where_election_dlm   = array(
            'voting_id'  => 3,
        );

        $data['election_grand_total_dlm'] = $this->M_crud->edit_data($where_election_dlm, 'view_election')->num_rows();
        // panggil jumlah pemilih per kandidat
        $data['result_data_dlm'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_candidate', $where_election_dlm, 'election_total')->result();
        // panggil jumlah pemilih per partai
        $data['result_data_party_dlm'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_party', $where_election_dlm, 'election_total')->result();

        // end
        $this->template->load('layouts/app', 'dashboard/recapitulation/index', $data);
    }
}
