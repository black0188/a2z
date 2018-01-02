<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ClientController extends CI_Controller {
    
    public function __construct(){
        parent::__construct();
        $this->load->model('clientModel');        
    }
    
    public function createNewClient()
    {
            $this->load->view('createNewClient_page');
    }
    
    public function insertClient()
    {
        $data=array();
        $data['name'] = $this->input->post('name',TRUE);
        $data['address'] = $this->input->post('address',TRUE);
        $data['phone'] = $this->input->post('phone',TRUE);
        $data['email'] = $this->input->post('email',TRUE);
        $data['zone_id'] = $this->input->post('zone',TRUE);
               
        $this->clientModel->newClient($data);

        $sdata = array();
        $sdata['save_messages'] = 'Your data is successfully saved';
        $this->session->set_userdata($sdata);

        redirect("clientController/createNewClient");
    }
}
