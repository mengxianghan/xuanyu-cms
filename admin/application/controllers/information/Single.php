<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/7/16
 */

class Single extends MY_Controller
{

    /**
     * 获取数据
     */
    public function get_data()
    {
        try {
            $column_id = $this->input->get('column_id');
            if ($column_id == '') {
                throw new Exception('缺少参数');
            }
            $where = array();
            if ($column_id != '') {
                $where['column_id'] = $column_id;
            }
            $result = $this->common->get_data(array(
                'table' => 'info_single is',
                'where' => $where
            ));
            return ajax(EXIT_SUCCESS, null, $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

    /**
     * 提交
     */
    public function submit()
    {
        try {
            $column_id = $this->input->post('column_id');
            if ($column_id == '') {
                throw new Exception('参数不完整');
            }
            $values = array(
                'column_id' => $column_id,
                'title' => $this->input->post('title'),
                'content' => $this->input->post('content')
            );
            $result = $this->common->replace('info_single', $values);
            return ajax(EXIT_SUCCESS, '保存成功', $result);
        } catch (Eecption $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

}
