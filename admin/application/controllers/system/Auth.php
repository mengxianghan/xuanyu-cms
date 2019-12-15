<?php


class Auth extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 获取菜单列表
     */
    public function get_menu_list()
    {
        try {
            $id = $this->input->get('id'); // 角色|用户 id
            $type = $this->input->get('type'); // 类型：1=角色，2=用户
            if ($id == '' || $type == '') {
                throw new Exception('缺少参数', '1');
            }
            // 是否超级管理员
            $is_super = $this->_is_super($id, $type);
            $select = 'sm.*';
            $select .= ',group_concat(sab.name order by sab.sort asc,sab.create_time asc) auth_name';
            $select .= ',group_concat(sab.id order by sab.sort asc,sab.create_time asc) auth_id';
            $select .= ',group_concat(sab.key order by sab.sort asc,sab.create_time asc) auth_key';
            $where = [];
            if ($is_super) { // 超级管理员
                // 所有权限按钮
                $sys_auth_button = $this->common->get_data(array(
                    'select' => 'group_concat(id) auth_button_id',
                    'table' => 'sys_auth_button'
                ));
                $table = 'sys_menu sm';
                /*$join = array('sys_auth_button sab', "1=1 and find_in_set(sab.id,'{$sys_auth_button['auth_button_id']}')", 'left');*/
                $join = array('sys_auth_button sab', '1=1 and find_in_set(sab.id,sm.auth_button_id)', 'left');
                $where['sm.status'] = '1';
                $group_by = 'sm.id';
            } else { // 普通管理员
                $table = 'sys_auth sa';
                $join = array(
                    array('sys_menu sm', 'sm.id=sa.menu_id', 'left'),
                    array('sys_auth_button sab', '1=1 and find_in_set(sab.id,sa.auth_button_id)', 'left')
                );
                if ($type === '1') { // 角色
                    $where['sa.id'] = $id;
                } else { // 用户
                    // 获取用户信息
                    $user_info = $this->_get_user_info($id);
                    if (!$user_info) {
                        throw new Exception('用户不存在', '1');
                    }
                    if ($user_info && $user_info['id']) {
                        $role_id_arr = $user_info['role_id'] ? explode(',', $user_info['role_id']) : [];
                        array_push($role_id_arr, $id);
                        $where['sa.id'] = $role_id_arr;
                    }
                }
                $group_by = 'sa.menu_id';
            }
            $result = $this->common->get_list(array(
                'select' => $select,
                'table' => $table,
                'join' => $join,
                'where' => $where,
                'order_by' => 'sm.sort asc,sm.create_time asc',
                'group_by' => $group_by,
                'has_pagination' => '0'
            ));
            $result['list'] = list_to_tree($result['list']);
            $this->ajax_output->output('0', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    /**
     * 获取已有权限列表
     */
    public function get_already_auth_list()
    {
        try {
            $id = $this->input->get('id');
            $type = $this->input->get('type');
            if ($id == '' || $type == '') {
                throw new Exception('缺少参数', '1');
            }
            $result = $this->common->get_list(array(
                'table' => 'sys_auth',
                'where' => array(
                    'id' => $id,
                    'type' => $type
                ),
                'has_pagination' => '0'
            ));
            $this->ajax_output->output('0', null, $result);
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
            $type = $this->input->post('type');
            $values = $this->input->post('values');
            if ($id == '' || $type == '') {
                throw new Exception('缺少参数', '1');
            }
            // 删除当前用户权限
            $this->common->delete('sys_auth', array('id' => $id, 'type' => $type));
            // 提交数据
            if (count($values)) {
                $this->db->insert_batch('sys_auth', $values);
            }
            $this->ajax_output->output('0', '保存成功');
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    /**
     * 是否超级管理员
     *
     * @param $id   角色|用户 id
     * @param $type 类型：1=角色，2=用户
     * @return bool
     */
    private function _is_super($id, $type)
    {
        $table = $type === '1' ? 'sys_role' : 'sys_user';
        $data = $this->common->get_data(array(
            'table' => $table,
            'where' => array('id' => $id)
        ));
        return $data['type'] === '1' ? true : false;
    }

    /**
     * 获取用户信息
     *
     * @param $id
     * @return mixed
     */
    private function _get_user_info($id)
    {
        $data = $this->common->get_data(array(
            'table' => 'sys_user',
            'where' => array('id' => $id)
        ));
        return $data;
    }

}