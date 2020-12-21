<?php
class LoginController extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_crud');
    }

    public function indexVoter()
    {
        $this->load->view('login/login_voter');
    }

    public function storeVoter()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        $where    = array(
            'email'  => $email,
            'is_active' => 1,
        );

        $query = $this->M_crud->edit_data($where, 'voter');
        if ($query->num_rows() > 0) {
            $hash = $query->row('password');
            if (password_verify($password, $hash)) {
                $data_session = array(
                    'voter_id' => $query->row('voter_id'),
                    'email' => $query->row('email'),
                    'name' => $query->row('name'),
                );
                $this->session->set_userdata($data_session);
                redirect('election');
            } else {
                $this->session->set_flashdata('password', 'Dilogin');
                redirect('login');
            }
        } else {
            $this->session->set_flashdata('email', 'Dilogin');
            redirect('login');
        }
    }

    public function indexAdmin()
    {
        $this->load->view('login/login_admin');
    }

    public function storeAdmin()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $where    = array(
            'username'  => $username,
            'is_active' => 1,
        );

        $query = $this->M_crud->edit_data($where, 'admin');
        if ($query->num_rows() > 0) {
            $hash = $query->row('password');
            if (password_verify($password, $hash)) {
                $data_session = array(
                    'admin_id' => $query->row('admin_id'),
                    'username' => $query->row('username'),
                    'role' => $query->row('role')
                );
                $this->session->set_userdata($data_session);
                if ($query->row('role') == "Admin") {
                    redirect('voting');
                } else {
                    redirect('selection');
                }
            } else {
                $this->session->set_flashdata('password', 'Dilogin');
                redirect('login_admin');
            }
        } else {
            $this->session->set_flashdata('username', 'Dilogin');
            redirect('login_admin');
        }
    }

    public function logoutVoter()
    {
        $this->session->sess_destroy();
        redirect('login');
    }

    public function logoutAdmin()
    {
        $this->session->sess_destroy();
        redirect('login_admin');
    }
}
