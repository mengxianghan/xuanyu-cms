<?php

use Ramsey\Uuid\Uuid;

class Login extends XY_Controller
{

    /**
     * 登录
     */
    public function sign_in()
    {
        $user_id = '';
        try {
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $code = $this->input->post('code');
            if ($username == '' || $password == '') {
                throw new Exception('缺少参数', '1');
            }
            // 验证用户名
            $user_list = $this->_valid_username($username);
            if (count($user_list) == 0) {
                throw new Exception('用户不存在', '1');
            }
            // 验证密码
            $user_info = $this->_valid_password($user_list, $password);
            $user_id = $user_info['id'];
            if (!is_array($user_info)) {
                throw new Exception('密码错误', '1');
            }
            // 用户是否可用
            if ($user_info['status'] == '0') {
                throw new Exception('用户被禁用', '1');
            }
            // 用户所属角色是否可用
            $role_status = $user_info['role_status'] != '' ? explode(',', $user_info['role_status']) : [];
            if (in_array('0', $role_status)) {
                throw new Exception('用户角色被禁用', '1');
            }
            // 最后一次登录日志
            $last_login_log = $this->common->get_data(array(
                'table' => 'sys_log',
                'where' => array('user_id' => $user_info['id'], 'type' => '1'),
                'order_by' => 'create_time desc'
            ));
            $result = array(
                'id' => $user_info['id'],
                'username' => $user_info['username'],
                'full_name' => $user_info['full_name'],
                'last_login_time' => $last_login_log ? $last_login_log['create_time'] : '',
                'token' => $this->token->create($user_info['id'])
            );
            //记录日志
            $code = '200';
            $message = '登录成功';
            $this->logs->record('1', array(
                'user_id' => $user_id,
                'code' => $code,
                'message' => '登录成功'
            ));
            $this->ajax_output->output($code, $message, $result, false);
        } catch (Exception $e) {
            //记录日志
            $this->logs->record('1', array(
                'user_id' => $user_id,
                'code' => $e->getCode(),
                'message' => $e->getMessage()
            ));
            $this->ajax_output->output($e->getCode(), $e->getMessage(), null, false);
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
        $user_info = null;
        for ($i = 0; $i < count($user_list); $i++) {
            if ($user_list[$i]['password'] == $password) {
                $user_info = $user_list[$i];
                break;
            }
        }
        return $user_info;
    }

}
