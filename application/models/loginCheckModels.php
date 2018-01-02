<?php

class LoginCheckModels extends CI_Model {
    public function UserLoginCheck($userId,$password) {
        $userId = $this->input->post('userId',TRUE);
        $password = md5($this->input->post('inputPassword',TRUE));
        $this->db->select('*');
        $this->db->where('user_id', $userId);
        $this->db->where('pass', $password);
        $query_result = $this->db->get('0_user');
        $result = $query_result->row();
        return $result;
    }
}
