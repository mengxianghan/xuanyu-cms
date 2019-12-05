<?php

use Ramsey\Uuid\Uuid;

class Login extends MY_Controller
{

    /**
     * 登录
     */
    public function sign_in()
    {
        try {
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $code = $this->input->post('code');
            if ($username == '' || $password == '') {
                throw new Exception('参数不完整');
            }
            // 验证用户名
            $user_list = $this->_valid_username($username);
            if (count($user_list) == 0) {
                throw new Exception('用户不存在');
            }
            // 验证密码
            $user_info = $this->_valid_password($user_list, $password);
            if (!is_array($user_info)) {
                throw new Exception('密码错误');
            }
            // 用户是否可用
            if ($user_info['status'] == '0') {
                throw new Exception('此用户被禁用，请联系管理员');
            }
            // 用户所属角色是否可用
            $role_status = $user_info['role_status'] != '' ? explode(',', $user_info['role_status']) : [];
            if (in_array('0', $role_status)) {
                throw new Exception('此用户所属角色被禁用，请联系管理员');
            }
            // 最后一次登录日志
            $last_login_log = $this->common->get_data(array(
                'table' => 'sys_login_log',
                'where' => array('user_id' => $user_info['id']),
                'order_by' => 'create_time desc'
            ));
            // 添加登录日志
            $this->common->insert('sys_login_log', array(
                'id' => Uuid::uuid4(),
                'user_id' => $user_info['id']
            ));
            $result = array(
                'id' => $user_info['id'],
                'username' => $user_info['username'],
                'full_name' => $user_info['full_name'],
                'last_login_time' => $last_login_log ? $last_login_log['create_time'] : '',
                'token' => $this->token->create($user_info['id'])
            );
            return ajax(EXIT_SUCCESS, '登录成功', $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

    /**
     * 验证用户名
     *
     * @param $username
     * @return bool
     */
    private function _valid_username($username)
    {
        $result = $this->common->get_list(array(
            'select' => 'su.*,group_concat(sr.status) role_status',
            'table' => 'sys_user su',
            'join' => array('sys_role sr', '1=1 and find_in_set(sr.id,su.role_id)', 'left'),
            'where' => array('su.username' => $username),
            'has_pagination' => '0'
        ));
        return $result['list'];
    }

    /**
     * 验证密码
     *
     * @param $user_list
     * @param $password
     * @return |null
     */
    private function _valid_password($user_list, $password)
    {
        $md5_password = md5($password);
        $user_info = null;
        for ($i = 0; $i < count($user_list); $i++) {
            if ($user_list[$i]['password'] == $md5_password) {
                $user_info = $user_list[$i];
                break;
            }
        }
        return $user_info;
    }

}