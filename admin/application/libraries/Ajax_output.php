<?php

/**
 * 输出类
 * Class Export
 */

class Export
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
    public function export($code, $message, $data = array())
    {
        $result = array(
            "code" => (string)$code,
            "message" => (string)$message,
            "data" => $this->_format($data)
        );
        echo json_encode($result);
        exit();
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
                if (is_array($value)) {//数组类型
                    $newData[$key] = to_string($value);
                } elseif (is_bool($value)) {//布尔类型
                    $newData[$key] = $value ? 'true' : 'false';
                } else {//其他
                    $newData[$key] = (string)$value;
                }
            }
            return $newData;
        } elseif (is_bool($data)) {
            return $data ? 'true' : 'false';
        } elseif (is_null($data)) {
            return '';
        } else {
            return (string)$data;
        }
    }

    public function status()
    {
        $config['status'] = array(
            'success' => array(
                'message' => '',
                'code' => '200'
            ),
            'missing_parameters' => array(
                'message' => '缺少参数',
                'code' => '1000'
            ),
            'already_used' => array(
                'message' => '已被使用，禁止删除',
                'code' => '1001'
            ),
            'user_does_not_exist' => array(
                'message' => '用户不存在',
                'code' => '1002'
            ),
            'user_blocked' => array(
                'message' => '用户被封禁',
                'code' => '1003'
            ),
            'user_role_blocked' => array(
                'message' => '用户角色被封禁',
                'code' => '1004'
            )
        );
    }

}