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
        //验证token
        $this->token->validate();
    }
}
