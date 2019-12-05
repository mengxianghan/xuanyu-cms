<?php

class Permission
{
    protected $ci;

    public function __construct()
    {
        $this->ci =& get_instance();
    }

    /**
     * 权限验证
     * @param $action 操作权限
     * @throws Exception
     */
    public function validate($action)
    {
        //菜单标识
        $menu = isset($_SERVER['HTTP_MENU']) ? $_SERVER['HTTP_MENU'] : '';
        if (!$menu) {
            throw new Exception('非法操作', 4);
        }
        //获取用户信息
        $user_info = $this->_get_user();
        //用户不存在
        if (!$user_info) {
            throw new Exception('用户不存在', 4);
        }
        //角色标识
        $role_id = $user_info['role_id'];
        //用户角色类型
        $sys_role_type_array = explode(',', $user_info['sys_role_type_group']);
        //判断用户角色
        //超级管理员
        //超级管理员拥有所有权限，跳过权限验证
        if (in_array('1', $sys_role_type_array)) {
            //$auth = $this->ci->common->get_data(array(
            //    'select' => 'group_concat(sd.key order by sd.sort asc) as auth_key_group',
            //    'table' => 'sys_menu sm',
            //    'join' => array(
            //        'sys_dict sd',
            //        "1=1 and find_in_set(sd.id,sm.auth_id_str)",
            //        'left'
            //    ),
            //    'where' => array('sm.id' => $menu)
            //));
            return;
        } //普通管理员
        else {
            $auth = $this->ci->common->get_data(array(
                'select' => 'group_concat(sd.key order by sd.sort asc) as auth_key_group',
                'table' => 'sys_auth sa',
                'join' => array(
                    'sys_dict sd',
                    "1=1 and find_in_set(sd.id,sa.auth_id_str)",
                    'left'
                ),
                'where' => array('sa.sys_menu_id' => $menu, 'role_id' => explode(',', $role_id))
            ));
        }
        //没有对应权限
        if (!$auth) {
            throw new Exception('没有权限，请联系管理员', 4);
        }
        //存在操作类型
        if ($action) {
            //将权限字符串转成数组
            $auth_arr = $auth['auth_key_group'] ? explode(',', $auth['auth_key_group']) : array();
            //权限中不包含当前操作类型
            if (!in_array($action, $auth_arr)) {
                throw new Exception('没有权限，请联系管理员', 4);
            }
        }
    }

    /**
     * 获取用户信息
     * @return mixed
     */
    private function _get_user()
    {
        //从token中获取用户标识
        $user_id = $this->ci->token->get_user_id();
        //获取用户信息
        $result = $this->ci->common->get_data(array(
            'select' => 'su.*,group_concat(sr.type order by sr.sort asc) as sys_role_type_group',
            'table' => 'sys_user su',
            'join' => array('sys_role sr', '1=1 and find_in_set(sr.id,su.role_id)', 'left'),
            'where' => array(
                'su.id' => $user_id
            )
        ));
        return $result;
    }
}