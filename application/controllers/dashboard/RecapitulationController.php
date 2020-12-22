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

        $where_sah   = array(
            'voting_id'  => $id,
            'election_status' => 1
        );

        $where_tidak_sah   = array(
            'voting_id'  => $id,
            'election_status' => 0
        );


        $data['election_grand_total'] = $this->M_crud->edit_data($where, 'view_election')->num_rows();
        $data['election_sah'] = $this->M_crud->edit_data($where_sah, 'view_election')->num_rows();
        $data['election_tidak_sah'] = $this->M_crud->edit_data($where_tidak_sah, 'view_election')->num_rows();

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
        $data['election_num_rows'] = $this->M_crud->edit_data($where, 'view_election')->num_rows();
        $this->template->load('layouts/app', 'dashboard/selection/show', $data);
    }
}
