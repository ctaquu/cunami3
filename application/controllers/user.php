<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * login user
     */
    public function login()
    {
        $this->load->view('bootstrap/header');
        $this->load->view("login");
        $this->load->view('bootstrap/footer');
    }

    public function logout() {
        $this->session->sess_destroy();
        redirect('/user/login');
    }

    public function do_login()
    {

        // SET VALIDATION RULES
        $this->form_validation->set_rules( 'user_name', 'username', 'required' );
        $this->form_validation->set_rules( 'user_pass', 'password', 'required' );
        $this->form_validation->set_error_delimiters( '<em>','</em>' );

        // has the form been submitted and with valid form info (not empty values)
        if ( $this->input->post( 'login' ) ) {
            if ( $this->form_validation->run() ) {
                $user_name = $this->input->post( 'user_name' );
                $user_pass = $this->input->post( 'user_pass' );


                $this->load->model("User_model");
                $user = new User_model();
                $u = $user->get_by_user_name($user_name);
//                var_dump($u[1]->user_id); die;
                if ($user->get_by_user_name($user_name)) {
                    // continue processing form (validate password)
                    if($user->validate_password($user_name, $user_pass)) {
                        $newdata = array(
                            'user_id'   => $u[1]->user_id,
                            'username'  => $u[1]->username,
                            'email'     => 'no@mail.yet',
                            'logged_in' => TRUE
                        );

                        $this->session->set_userdata($newdata);
                        redirect( 'reservation/' );
                    }
                } else {
                    $this->session->set_flashdata( 'message', 'A user does not exist for the username specified.' );
                    redirect( 'user/login/' );
                }
            }
        }

        $newdata = array(
            'username'  => 'johndoe',
            'email'     => 'johndoe@some-site.com',
            'logged_in' => TRUE
        );

        $this->session->set_userdata($newdata);
    }

    /**
     * to be implemented
     */
    public function register()
    {
        die("to be implemented");
    }
}
/* End of file user.php */
/* Location: ./application/controllers/user.php */