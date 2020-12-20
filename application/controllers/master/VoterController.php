<?php

class VoterController extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        // if (!$this->session->userdata('id_user')) {
        //     redirect('login');
        // }
        $this->load->model('M_crud');
        // $this->load->library('encryption');
    }

    public function index()
    {
        $table = 'voter';
        $data['items'] = $this->db->get($table)->result();
        $this->template->load('layouts/app', 'master/voter/index', $data);
    }

    public function sendEmail()
    {
        $table = 'voter';
        $where = array('is_active' => 0);
        $voter = $this->M_crud->edit_data($where, $table)->result();

        $config = [
            'mailtype'  => 'html',
            'charset'   => 'utf-8',
            'protocol'  => 'smtp',
            'smtp_host' => 'smtp.gmail.com',
            'smtp_user' => 'e41170438@student.polije.ac.id',  // Email gmail
            'smtp_pass'   => 'E41170438',  // Password gmail
            'smtp_crypto' => 'ssl',
            'smtp_port'   => 465,
            'crlf'    => "\r\n",
            'newline' => "\r\n"
        ];

        $this->load->library('email', $config);
        foreach ($voter as $item) {
            $this->email->from('e41170438@student.polije.ac.id', 'E-voting');

            $this->email->to($item->email);
            $this->email->subject('Verify Email');

            $email_enkripsi = $this->encrypt->encode($item->email);

            $data = array(
                'email' => $email_enkripsi
            );

            // Isi email
            $body = $this->load->view('layouts/template_email', $data, TRUE);
            $this->email->message($body);

            $this->email->send();

            $data = array(
                'is_active' => 1,
            );
            $where = array(
                'voter_id' => $item->voter_id
            );
            $this->M_crud->update_data($where, $data, $table);
        }
        redirect('voter');
    }

    public function verify($id)
    {
        $email_decrypt = $this->encrypt->decode($id);

        $data['email'] = $email_decrypt;
        $this->load->view('master/voter/verify', $data);
    }

    public function verifyStore()
    {
        $name  = $this->input->post('name');
        $email  = $this->input->post('email');
        $password  = $this->input->post('password');

        $this->form_validation->set_rules('name', 'Nama', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() != false) {
            $data = array(
                'name' => $name,
                'password' => password_hash($password, PASSWORD_BCRYPT),
            );
            $where = array(
                'email' => $email
            );

            $this->M_crud->update_data($where, $data, 'voter');

            // Login
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
                    echo "Password salah !";
                }
            } else {
                echo "Email salah !";
            }
        } else {
            $data['email'] = $email;
            $this->load->view('master/voter/verify', $data);
        }
    }
}
