<?php

class TariffPlanModel extends CI_Model{
    //Checking for duplicate plan
    public function checkDuplicateData($post_plan) 
    {
         $this->db->where('plan_name', $post_plan);
         $query = $this->db->get('0_tariff_plan');
         $count_row = $query->num_rows();
         if ($count_row > 0) 
         {
             return FALSE;
         } 
         else 
         {
             return TRUE;
         }
    }

    //To add a new plan to the database
    public function newPlan($data) {
        $this->db->insert('0_tariff_plan',$data);        
    }
}
