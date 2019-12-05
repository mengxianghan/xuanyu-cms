<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/7/12
 */

class Tag extends MY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $name = $this->input->get('name');
            $status = $this->input->get('status');
            $where = array();
            if ($status != '') {
                $where['status'] = $status;
            }
            $like = array();
            if ($name != '') {
                $like['name'] = $name;
            }
            $result = $this->common->get_list(array(
                'table' => 'info_tag',
                'where' => $where,
                'like' => $like,
                'order_by' => 'sort asc,create_time asc'
            ));
            return ajax(EXIT_SUCCESS, null, $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

    /**
     * 替换
     * 该方法用于执行一条 REPLACE 语句，REPLACE 语句根据表的**主键**和**唯一索引** 来执行，类似于标准的 DELETE + INSERT
     */
    public function replace()
    {
        try {
            $name = $this->input->post('name');
            if ($name == '') {
                throw new Exception('参数不完整');
            }
            $affected_rows = 0;
            foreach (explode(',', $name) as $value) {
                $values = array(
                    'name' => $value,
                    'status' => '1',
                    'sort' => '100'
                );
                $result = $this->common->replace('info_tag', $values);
                $affected_rows = (int)$result['affected_rows'] + $affected_rows;
            }
            return ajax(EXIT_SUCCESS, null, array('affected_rows' => $affected_rows));
        } catch (Eecption $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

}
