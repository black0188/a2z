<?php

class ClientModel extends CI_Model {
    //To add a new plan to the database
    public function newClient($data) {
        $this->db->insert('0_client_info',$data);        
    }
}
