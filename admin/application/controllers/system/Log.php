<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/6/11
 */

use Ramsey\Uuid\Uuid;

class Log extends MY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $result = $this->common->get_list(array(
                'table' => 'sys_login_log',
                'order_by' => 'create_time asc'
            ));
            $this->ajax_output->output('0', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }


}
