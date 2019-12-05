<?php

if (!function_exists('max_dimension')) {
    /**
     * 返回数组最大深度
     *
     * @param $arr 数组
     *
     * @return int
     */
    function max_dimension($arr)
    {
        if (!is_array($arr)) return 0;
        $max = 0;
        foreach ($arr as $value) {
            $count = 1;
            if (is_array($value)) {
                $count += max_dimension($value);
            }
            if ($count > $max) $max = $count;
        }
        return $max;
    }
}

if (!function_exists('ajax')) {
    /**
     * 返回数据
     *
     * @param $code     状态码
     * @param $message  状态信息
     * @param $data
     */
    function ajax($code, $message, $data = array())
    {
        $result = array(
            "code" => (string)$code,
            "message" => (string)$message,
            "data" => to_string($data)
        );
        echo json_encode($result);
    }
}

if (!function_exists('list_to_tree')) {
    /**
     * 线型结构转树型结构
     *
     * @param array  $list
     * @param string $parent_id
     *
     * @return array
     */
    function list_to_tree($list = array(), $parent_id = '0')
    {
        $tree = array();
        foreach ($list as $key => $row) {
            if ($row['parent_id'] == $parent_id) {
                $temp = $row;
                $children = list_to_tree($list, $row['id']);
                if (count($children)) {
                    $temp['children'] = $children;
                }
                array_push($tree, $temp);
            }
        }
        return $tree;
    }
}

if (!function_exists('to_string')) {
    /**
     * 将数据类型转换成字符串
     * @param $data 数据源
     * @return array|string
     */
    function to_string($data)
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
}

if (!function_exists('request_search')) {
    /**
     * 获取搜索参数值
     * @param $json_str  json格式字符串
     * @param $name      参数名
     * @return string
     */
    function request_search($json_str, $name)
    {
        $data = '';
        if ($json_str == '') return $data;
        $arr = json_decode("[{$json_str}]", true);
        if (count($arr) === 1) {
            $data = isset($arr[0][$name]) ? $arr[0][$name] : '';
        }
        return $data;
    }
}
