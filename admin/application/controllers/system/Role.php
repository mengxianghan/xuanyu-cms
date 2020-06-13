<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/6/12
 */

use Ramsey\Uuid\Uuid;

class Role extends XY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $name = $this->input->get('name');
            $status = $this->input->get('status');
            $type = $this->input->get('type');
            $like = array();
            $where = array();
            if ($status != '') {
                $where['status'] = $status;
            }
            if ($type != '') {
                $where['type'] = $type;
            }
            if ($name != '') {
                $like['name'] = $name;
            }
            $result = $this->common->get_list(array(
                'table' => 'sys_role',
                'where' => $where,
                'order_by' => 'sort asc,create_time asc',
                'like' => $like
            ));
            $this->ajax_output->output('200', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    /**
     * 提交
     */
    public function submit()
    {
        try {
            $id = $this->input->post('id');
            $name = $this->input->post('name');
            if ($name == '') {
                throw new Exception('缺少参数', '1');
            }
            $values = array(
                'name' => $name,
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort'),
            );
            if ($id) {
                $result = $this->common->update('sys_role', array('id' => $id), $values);
            } else {
                $values['id'] = Uuid::uuid4();
                $result = $this->common->insert('sys_role', $values);
            }
            $this->ajax_output->output('200', '保存成功', $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
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
                throw new Exception('缺少参数', '1');
            }
            //是否超级管理员
            $this->_is_super($id);
            $result = $this->common->delete('sys_role', array('id' => $id));
            $this->ajax_output->output('200', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    /**
     * 是否超级管理员
     *
     * @param $id
     * @throws Exception
     */
    private function _is_super($id)
    {
        $data = $this->common->get_data(array(
            'table' => 'sys_role',
            'where' => array('id' => $id)
        ));
        if ($data['type'] === '1') {
            throw new Exception('超级管理员，禁止删除');
        }
    }

}
