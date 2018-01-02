<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class zoneController extends CI_Controller {
    
    public function __construct(){
        parent::__construct();
        $this->load->model('zoneModel');        
    }    

    public function create_zone()
    {
            $this->load->view('createNewZone');
    }
    
     public function insertZone()
    {
        $data=array();
        $data['zone_name'] = $this->input->post('zoneName',TRUE);
        $data['description'] = $this->input->post('description',TRUE);
        
        $checkDuplicate = $this->zoneModel->checkDuplicateData($data['zone_name']);
        
        if($checkDuplicate == TRUE) 
        {
             
            $this->zoneModel->newZone($data);

            $sdata = array();
            $sdata['save_messages'] = 'Your data is successfully saved';
            $this->session->set_userdata($sdata);

            redirect("zoneController/create_zone");
        }
        else
        {
            $sdata = array();
            $sdata['warning_messages'] = 'Zone name already exists';
            $this->session->set_userdata($sdata);
            redirect("zoneController/create_zone");
        }
    }
}
