<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Login extends CI_Controller{
    
    public function __construct() {
        parent::__construct();
        $this->load->model('loginCheckModels');
    }
    
    public function index()
    {
            $this->load->view('login_page');
    }
    
    public function login_check()
    {
                       
        $userId = $this->input->post('userId');
        $password = $this->input->post('inputPassword');
        $result = $this->loginCheckModels->UserLoginCheck($userId,$password);
        //redirect("HomeControllers/home");
//        echo '<pre>';
//        print_r($result);
//        exit();
        
        if($result){
            $sdata = array();
            $sdata['user_id']=$result->user_id;
            $sdata['name']=$result->name;
            $this->session->set_userdata($sdata);
            redirect("HomeControllers/home",'refresh');
            
        } else {
            $sdata['login_messages'] = "Please Enter Valid User ID/ Passowrd";
            $this->session->set_userdata($sdata);
            redirect("login/index");
        }
        
    }
    
    public function sign_out()
    {
        $this->session->unset_userdata(user_id);
        redirect("login/index");
    }
}
