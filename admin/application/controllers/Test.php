<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/8/9
 */


class Test extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $arr = array();
        list($a, $b, $c) = $arr;
        var_dump('a:' . $a, 'b:' . $b, 'c:' . $c);
    }

    /*public function get_data()
    {
        $res = $this->common->get_data(array(
            'table' => 'sys_menu',
            'where' => array('id' => $this->input->get('id'))
        ));
        echo json_encode($res);
    }*/

}