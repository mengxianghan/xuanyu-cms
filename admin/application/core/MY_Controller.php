<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/4/21
 */

class MY_Controller extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Headers:content-type,token,menu');
        if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
            exit(200);
        }

        //当前访问的控制器
        $class = $this->router->fetch_directory() . $this->router->fetch_class();
        //当前访问的方法
        $method = $this->router->fetch_method();
        if (!$this->_white_list($class, $method)) {
            //验证token
            $this->token->validate();
        }
    }

    /**
     * 白名单
     * 判断当前访问的路由是否在白名单，不在白名单的需要验证 token
     *
     * @param $class  控制器
     * @param $method 方法
     *
     * @return bool
     */
    private function _white_list($class, $method)
    {
        $class = strtolower($class);
        $method = strtolower($method);
        $white_list = array(
            'login' => '*'
        );
        $value = isset($white_list[$class]) ? $white_list[$class] : '';
        if ($value == '') return false;
        if ($value == '*') return true;
        if (is_array($value) && in_array($value, $method)) {
            return true;
        }
        return false;
    }
}
