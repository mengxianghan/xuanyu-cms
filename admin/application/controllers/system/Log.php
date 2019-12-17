<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/6/11
 */

class Log extends MY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $type = $this->input->get('type');
            $where = array();
            if ($type != '') {
                $where['sl.type'] = $type;
            }
            $result = $this->common->get_list(array(
                'select' => "sl.*,(case when su.full_name is null or '' then su.username else su.full_name end) name",
                'table' => 'sys_log sl',
                'join' => array('sys_user su', 'su.id = sl.user_id', 'left'),
                'where' => $where,
                'order_by' => 'sl.create_time desc'
            ));
            $this->ajax_output->output('200', null, $result, false);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage(), '', false);
        }
    }


}
