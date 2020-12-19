<?php
class LoginController extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_crud');
    }

    public function index()
    {
        $this->load->view('login');
    }

    public function store()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $where = array(
            'username' => $username,
        );

        $query = $this->M_crud->cek_login('admin', $where);
        if ($query->num_rows() > 0) {
            $hash = $query->row('password');
            if (password_verify($password, $hash)) {
                $data_session = array(
                    'admin_id'   => $query->row('id'),
                    'username' => $query->row('username')
                );
                $this->session->set_userdata($data_session);
                redirect('voting');
            } else {
                echo "Password salah !";
            }
        } else {
            echo "Username salah !";
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect('login');
    }
}
