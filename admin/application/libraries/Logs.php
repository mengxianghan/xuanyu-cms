<?php
/**
 * 日志类
 * Class Logs
 */

use Ramsey\Uuid\Uuid;

class Logs
{
    protected $ci;

    public function __construct()
    {
        $this->ci =& get_instance();
        $this->ci->load->library('user_agent');
    }

    /**
     *
     * 记录日志
     * @param string $type //日志类型，1=登录日志，2=操作日志，3=异常日志
     * @param array  $result
     * @throws Exception
     */
    public function record($type = '', $result = array())
    {
        $user_id = isset($result['user_id']) ? $result['user_id'] : $this->ci->token->get_user_id();
        $id = Uuid::uuid4();
        $values = array(
            'id' => $id,
            'type' => $type,
            'user_id' => $user_id,
            'api' => $this->ci->uri->uri_string(),
            'params' => json_encode($_REQUEST),
            'browser' => $this->ci->agent->browser() . ' ' . $this->ci->agent->version(),
            'code' => isset($result['code']) ? $result['code'] : '',
            'message' => isset($result['message']) ? $result['message'] : '',
            'ip' => $this->ci->input->ip_address()
        );
        $this->ci->common->insert('sys_log', $values);
    }

}