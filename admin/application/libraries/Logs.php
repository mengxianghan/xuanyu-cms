<?php
/**
 * 日志类
 * Class Logs
 */

class Logs
{
    protected $ci;

    public function __construct()
    {
        $this->ci =& get_instance();
    }

    /**
     * 写日志
     * @param string $type
     */
    public function write($type = '')
    {
        $user_id = $this->token->get_user_id();
        $values = array(
            'type' => $type,
            'user_id' => $user_id,
            'api' => $this->uri->uri_string(),
            'params' => json_encode($_REQUEST),
            'browser' => $this->input->user_agent(),
            'ip' => $this->input->ip_address()
        );
        $this->ci->common->insert('sys_log', $values);
    }

}