<?php

class ZoneModel extends CI_Model {
    
    //Checking for duplicate zone
    public function checkDuplicateData($post_zone) 
    {
         $this->db->where('zone_name', $post_zone);
         $query = $this->db->get('0_zone');
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

    //To add a new zone to the database
    public function newZone($data) {
        $this->db->insert('0_zone',$data);        
    }
    
}
