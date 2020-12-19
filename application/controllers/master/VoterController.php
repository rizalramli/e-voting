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

            $this->email->to($item->email); // Ganti dengan email tujuan

            // Lampiran email, isi dengan url/path file
            // $this->email->attach('https://masrud.com/content/images/20181215150137-codeigniter-smtp-gmail.png');

            $this->email->subject('Verify Email');

            // Isi email
            $body = $this->load->view('layouts/template_email', '', TRUE);
            $this->email->message($body);
            // $this->email->message("test.<br><br> Klik <strong><a href='http://localhost/e-voting/login' target='_blank' rel='noopener'>klik</a></strong>");

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
}
