<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/6/13
 */

use Ramsey\Uuid\Uuid;

class Dept extends MY_Controller
{
    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            //状态
            $status = $this->input->get('status');
            //查询条件
            $where = array();
            if ($status != '') {
                $where ['status'] = $status;
            }
            $result = $this->common->get_list(array(
                'table' => 'sys_dept',
                'where' => $where,
                'order_by' => 'sort asc,create_time asc',
                'has_pagination' => '0'
            ));
            $result['list'] = list_to_tree($result['list']);
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
            $id = $this->input->post('id');
            $values = array(
                'name' => $this->input->post('name'),
                'parent_id' => $this->input->post('parent_id'),
                'leader' => $this->input->post('leader'),
                'mobile' => $this->input->post('mobile'),
                'email' => $this->input->post('email'),
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort')
            );
            if ($id) {
                $result = $this->common->update('sys_dept', array('id' => $id), $values);
            } else {
                $values['id'] = Uuid::uuid4();
                $result = $this->common->insert('sys_dept', $values);
            }
            return ajax(EXIT_SUCCESS, '保存成功', $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

    /**
     * 删除
     */
    public function delete()
    {
        try {
            $id = $this->input->post('id');
            if ($id == '') {
                throw new Exception('参数不完整');
            }
            // 检查是否含有下级
            $has_next = $this->common->count_all_results('sys_dept', array('parent_id' => $id));
            if ($has_next > 0) {
                throw new Exception('存在下级数据，请勿删除');
            }
            // 检查是否最后一条数据
            $is_last = $this->common->count_all_result('sys_dept');
            // 最后一条数据
            if ($is_last === 1) {
                throw new Exception('至少保留一条数据');
            }
            $result = $this->common->delete('sys_dept', array('id' => $id));
            return ajax(EXIT_SUCCESS, null, $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

}
