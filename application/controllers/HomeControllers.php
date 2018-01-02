<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class HomeControllers extends CI_Controller {
    public function home()
    {
            $this->load->view('home_page');
    }
}
