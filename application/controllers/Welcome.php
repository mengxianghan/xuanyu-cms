<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller
{
    public function index()
    {
        // $path = 'E:\workspace\xuanyu-cms\system\..//uploads/';
        //
        // $path = preg_replace(array('/\\\/','/\/\//'), '/', $path);
        // die($path);

        $get = $this->input->get();

        $post = $this->input->post();

        var_dump($get);
        var_dump($post);

        var_dump(is_null($this->input->get('a')) );
    }
}
