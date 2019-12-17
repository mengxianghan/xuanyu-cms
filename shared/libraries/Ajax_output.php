<?php

/**
 * 输出类
 * Class Export
 */

class Ajax_output
{
    private $ci;

    public function __construct()
    {
        $this->ci =& get_instance();
    }

    /**
     * 输出
     * @param       $code    //状态码
     * @param       $message //状态信息
     * @param array $data    //结果集
     * @param       $log     //是否记录日志
     */
    public function output($code, $message, $data = array(), $log = true)
    {
        $code = (string)$code;
        $result = array(
            "code" => $code,
            "message" => (string)$message,
            "data" => $this->_format($data)
        );
        if ($log) {
            if ($code === '200') {
                $this->ci->logs->record('2');//操作日志
            } else {
                $this->ci->logs->record('3');//异常日志
            }
        }
        exit(json_encode($result));
    }

    /**
     * 格式化数据
     * @param $data
     * @return array|string
     */
    private function _format($data)
    {
        if (is_array($data)) {
            $newData = array();
            foreach ($data as $key => $value) {
                $newData[$key] = $this->_format($value);
            }
            return $newData;
        } elseif (is_null($data)) {
            return '';
        } else {
            return (string)$data;
        }
    }

}