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
     * @param       $code
     * @param       $message
     * @param array $data
     */
    public function output($code, $message, $data = array())
    {
        $result = array(
            "code" => (string)$code,
            "message" => (string)$message,
            "data" => $this->_format($data)
        );
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