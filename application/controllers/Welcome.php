<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller
{
    public function index()
    {
        echo 'welcome';
        // $name = 'welcome';
        // $this->smarty->assign('name', $name);
        // $this->smarty->display('welcome_message.php');
    }
}
