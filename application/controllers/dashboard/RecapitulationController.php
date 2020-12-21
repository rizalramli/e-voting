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

    public function indexRecapitulation()
    {
        if ($this->session->userdata('role') != "Admin") {
            redirect('login_admin');
        }
        // // Hasil rekapitulasi BEM
        // $where_election_bem   = array(
        //     'voting_id'  => 1,
        // );

        // $data['election_grand_total_bem'] = $this->M_crud->edit_data($where_election_bem, 'view_election')->num_rows();
        // $data['result_data_bem'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_candidate', $where_election_bem, 'election_total')->result();
        // // end

        // // Hasil rekapitulasi BLM
        // $where_election_blm   = array(
        //     'voting_id'  => 2,
        // );
        // // panggil semua jumlah pemilih
        // $data['election_grand_total_blm'] = $this->M_crud->edit_data($where_election_blm, 'view_election')->num_rows();
        // // panggil jumlah pemilih per kandidat
        // $data['result_data_blm'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_candidate', $where_election_blm, 'election_total')->result();
        // // panggil jumlah pemilih per partai
        // $data['result_data_party_blm'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_party', $where_election_blm, 'election_total')->result();
        // // end

        // // Hasil rekapitulasi DLM
        // $where_election_dlm   = array(
        //     'voting_id'  => 3,
        // );

        // $data['election_grand_total_dlm'] = $this->M_crud->edit_data($where_election_dlm, 'view_election')->num_rows();
        // // panggil jumlah pemilih per kandidat
        // $data['result_data_dlm'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_candidate', $where_election_dlm, 'election_total')->result();
        // // panggil jumlah pemilih per partai
        // $data['result_data_party_dlm'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_party', $where_election_dlm, 'election_total')->result();

        // // end
        $where = array(
            'is_active' => 1,
        );
        $data['items'] = $this->M_crud->edit_data($where, 'voting')->result();
        $this->template->load('layouts/app', 'dashboard/recapitulation/index', $data);
    }

    public function showRecapitulation($id)
    {
        if ($this->session->userdata('role') != "Admin") {
            redirect('login_admin');
        }

        $where = array(
            'is_active' => 1,
            'voting_id' => $id
        );
        $voting_data = $this->M_crud->edit_data($where, 'voting')->row();
        $data['title'] = $voting_data->name;
        $data['voting_id'] = $id;

        $where   = array(
            'voting_id'  => $id,
        );

        $data['election_grand_total'] = $this->M_crud->edit_data($where, 'view_election')->num_rows();
        $data['result_data'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_candidate', $where, 'election_total')->result();

        $data['result_data_party'] = $this->M_crud->get_data_order_by_desc('view_recapitulation_party', $where, 'election_total')->result();
        // end
        $this->template->load('layouts/app', 'dashboard/recapitulation/show', $data);
    }

    public function indexSelection()
    {
        if ($this->session->userdata('role') == "Admin") {
            redirect('login_admin');
        }
        $where = array(
            'is_active' => 1,
        );
        $data['items'] = $this->M_crud->edit_data($where, 'voting')->result();
        $this->template->load('layouts/app', 'dashboard/selection/index', $data);
    }

    public function showSelection($id)
    {
        if ($this->session->userdata('role') == "Admin") {
            redirect('login_admin');
        }
        $where = array(
            'is_active' => 1,
            'voting_id' => $id
        );
        $voting_data = $this->M_crud->edit_data($where, 'voting')->row();
        $data['title'] = $voting_data->name;

        $where = array(
            'voting_id' => $id
        );

        $data['items'] = $this->M_crud->edit_data($where, 'view_election')->result();
        $this->template->load('layouts/app', 'dashboard/selection/show', $data);
    }
}
