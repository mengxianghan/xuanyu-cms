<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/6/11
 */

use Ramsey\Uuid\Uuid;

class User extends MY_Controller
{

    public function get_list()
    {
        try {
            $username = $this->input->get('username');
            $dept_id = $this->input->get('dept_id');
            $where = array();
            $like = array();
            if ($dept_id) {
                $where['su.dept_id'] = explode(',', $dept_id);
            }
            if ($username) {
                $like['su.username'] = $username;
            }
            $result = $this->common->get_list(array(
                'select' => 'su.*,group_concat(sr.name) role_name',
                'table' => 'sys_user su',
                'where' => $where,
                'like' => $like,
                'join' => array(
                    array('sys_role sr', '1=1 and find_in_set(sr.id,su.role_id)', 'left')
                ),
                'group_by' => 'su.id',
                'order_by' => 'su.sort asc,su.create_time asc'
            ));
            $this->ajax_output->output('0', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    public function submit()
    {
        try {
            $id = $this->input->post('id');
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $role_id = $this->input->post('role_id');
            $values = array(
                'username' => $username,
                'role_id' => $role_id && is_array($role_id) ? implode(',', $role_id) : $role_id,
                'post_id' => $this->input->post('post_id'),
                'dept_id' => $this->input->post('dept_id'),
                'full_name' => $this->input->post('full_name'),
                'mobile' => $this->input->post('mobile'),
                'email' => $this->input->post('email'),
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort')
            );
            // 修改密码
            if ($password) {
                $values['password'] = md5($password);
            }
            if ($id) {
                $result = $this->common->update('sys_user', array('id' => $id), $values);
            } else {
                $values['id'] = Uuid::uuid4();
                $result = $this->common->insert('sys_user', $values);
            }
            $this->ajax_output->output('0', '保存成功', $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    public function delete()
    {
        try {
            $id = $this->input->post('id');
            if ($id == '') {
                throw new Exception('缺少参数', '1');
            }
            // 检查是否超级管理员
            $this->_is_super($id);
            $result = $this->common->delete('sys_user', array('id' => $id));
            $this->ajax_output->output('0', '删除成功', $result);
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
            'table' => 'sys_user',
            'where' => array('id' => $id)
        ));
        if ($data['type'] === '1') {
            throw new Exception('系统默认用户，禁止删除');
        }
    }


}
