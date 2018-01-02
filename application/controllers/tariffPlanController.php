<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class TariffPlanController extends CI_Controller {
    
    public function __construct(){
        parent::__construct();
        $this->load->model('tariffPlanModel');        
    }
    
    public function newTariffPlan()
    {
            $this->load->view('newTariffPlan_page');
    }
    
    public function insertTariffPlan()
    {
        $data=array();
        $data['plan_name'] = $this->input->post('planName',TRUE);
        $data['description'] = $this->input->post('description',TRUE);
        $data['rate'] = $this->input->post('rate',TRUE);
        
        $checkDuplicate = $this->tariffPlanModel->checkDuplicateData($data['plan_name']);
        
        if($checkDuplicate == TRUE) 
        {
             
            $this->tariffPlanModel->newPlan($data);

            $sdata = array();
            $sdata['save_messages'] = 'Your data is successfully saved';
            $this->session->set_userdata($sdata);

            redirect("tariffPlanController/newTariffPlan");
        }
        else
        {
            $sdata = array();
            $sdata['warning_messages'] = 'Tariff Plan name already exists';
            $this->session->set_userdata($sdata);
            redirect("tariffPlanController/newTariffPlan");
        }
    }
}
