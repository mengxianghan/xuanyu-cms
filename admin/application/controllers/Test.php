<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/8/9
 */


class Test extends CI_Controller
{

    public function get_data()
    {
        $res = $this->common->get_data(array(
            'table' => 'sys_menu',
            'where' => array('id' => $this->input->get('id'))
        ));
        echo json_encode($res);
    }

}