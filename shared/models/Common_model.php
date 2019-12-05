<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/6/9
 */


class Common_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 获取列表
     *
     * @param array $array
     *
     * @return mixed
     */
    public function get_list($array = array())
    {
        $select = array_key_exists('select', $array) ? $array['select'] : '';
        $table = array_key_exists('table', $array) ? $array['table'] : '';
        $where = array_key_exists('where', $array) ? $array['where'] : '';
        $like = array_key_exists('like', $array) ? $array['like'] : '';
        $join = array_key_exists('join', $array) ? $array['join'] : '';
        $order_by = array_key_exists('order_by', $array) ? $array['order_by'] : '';
        $group_by = array_key_exists('group_by', $array) ? $array['group_by'] : '';
        $has_pagination = array_key_exists('has_pagination', $array) ? $array['has_pagination'] : ($this->input->get_post('has_pagination') ?: '1');
        $current_page = $this->input->get_post('current_page') ? ((int)$this->input->get_post('current_page') >= 0 ? (int)$this->input->get_post('current_page') : 1) : 1;
        $page_size = (int)$this->input->get_post('page_size') ?: 10;

        if ($select) {
            $this->db->select($select);
        }
        if ($table) {
            $this->db->from($table);
        }
        if ($where) {
            $this->_where($where);
        }
        if ($like) {
            $this->_like($like);
        }
        if ($has_pagination == '1') {
            $total = $this->db->count_all_results(NULL, FALSE);
        }
        if ($join) {
            $this->_join($join);
        }
        if ($order_by) {
            $this->db->order_by($order_by);
        }
        if ($group_by) {
            $this->db->group_by($group_by);
        }
        if ($has_pagination == '1') {
            if ($current_page > 0 && $page_size > 0) {
                $this->db->limit($page_size, ($current_page - 1) * $page_size);
            }
        }
        $result['list'] = $this->db->get()->result_array();
        if ($has_pagination == '1') {
            $result['total'] = $total;
            $result['current_page'] = $current_page;
            $result['page_size'] = $page_size;
            $result['page_count'] = ceil($total / $page_size);
        }
        return $result;
    }

    /**
     * 获取一条数据
     *
     * @param array $array
     *
     * @return mixed
     */
    public function get_data($array = array())
    {
        $select = array_key_exists('select', $array) ? $array['select'] : '';
        $table = array_key_exists('table', $array) ? $array['table'] : ''; //表名
        $where = array_key_exists('where', $array) ? $array['where'] : ''; //条件
        $join = array_key_exists('join', $array) ? $array['join'] : '';
        $order_by = array_key_exists('order_by', $array) ? $array['order_by'] : '';
        $group_by = array_key_exists('group_by', $array) ? $array['group_by'] : '';

        if ($select) {
            $this->db->select($select);
        }
        if ($table) {
            $this->db->from($table);
        }
        if ($where) {
            $this->_where($where);
        }
        if ($join) {
            $this->_join($join);
        }
        if ($order_by) {
            $this->db->order_by($order_by);
        }
        if ($group_by) {
            $this->db->group_by($group_by);
        }
        $this->db->limit(1);
        $row = $this->db->get()->row_array();
        return $row;
    }

    /**
     * 插入数据
     *
     * @param string $table 表名
     * @param array  $data  数据
     *
     * @return array
     */
    public function insert($table = '', $values = array())
    {
        $this->db->insert($table, $values);
        $insert_id = $this->db->insert_id();
        $affected_rows = $this->db->affected_rows();

        return array(
            'insert_id' => $insert_id,
            'affected_rows' => $affected_rows
        );
    }

    /**
     * 更新数据
     *
     * @param string $table 表名
     * @param string $where 条件
     * @param array  $data  数据
     *
     * @return array
     */
    public function update($table = '', $where = '', $values = array())
    {
        if ($where) {
            $this->_where($where);
        }
        $this->db->update($table, $values);
        $affected_rows = $this->db->affected_rows();
        return array(
            'affected_rows' => $affected_rows
        );
    }

    /**
     * 删除
     *
     * @param string $table 表名
     * @param string $where 条件
     *
     * @return mixed    受影响行数
     */
    public function delete($table = '', $where = '')
    {
        if ($where) {
            $this->_where($where);
        }
        if ($table) {
            $this->db->delete($table);
        }
        $affected_rows = $this->db->affected_rows();
        return array(
            'affected_rows' => $affected_rows
        );
    }

    /**
     * 更新数据
     * 类似于标准的 DELETE + INSERT
     *
     * @param string $table
     * @param array  $values
     *
     * @return array
     */
    public function replace($table = '', $values = array())
    {
        $this->db->replace($table, $values);
        $affected_rows = $this->db->affected_rows();
        return array(
            'affected_rows' => $affected_rows
        );
    }

    /**
     * 查询条数
     *
     * @param $table    表名
     * @param $where    条件
     *
     * @return int
     */
    public function count_all_results($table, $where = '')
    {
        $count = 0;
        if ($where) {
            $this->_where($where);
        }
        if ($table) {
            $count = $this->db->count_all_results($table);
        }
        return $count;
    }

    /**
     * 查询条件
     *
     * @param $where    条件
     */
    private function _where($where)
    {
        if (is_array($where)) {
            foreach ($where as $key => $value) {
                if ($key == "find_in_set") {
                    $this->db->where("1", "1 and find_in_set($value)", FALSE);
                    continue;
                } else {
                    if (is_array($value)) {
                        $this->db->where_in($key, $value);
                    } else {
                        $this->db->where($key, $value);
                    }
                }
            }
        } else {
            $this->db->where($where);
        }
    }

    /**
     * 关联查询
     *
     * @param array $join
     */
    // array($table,$cond,$type)
    // array(
    //   array($table,$cond,$type),
    //   array($table,$cond,$type)
    // )
    private function _join($join = array())
    {
        if (is_array($join)) {
            if (max_dimension($join) == 1) {
                list($table, $cond, $type) = array_pad($join, 3, '');
                $type = $type ?: 'left';
                if ($table != '' && $cond !== '') {
                    $this->db->join($table, $cond, $type);
                }
            } else {
                foreach ($join as $value) {
                    list($table, $cond, $type) = array_pad($value, 3, '');
                    $type = $type ?: 'left';
                    if ($table != '' && $cond !== '') {
                        $this->db->join($table, $cond, $type);
                    }
                }
            }
        }
    }

    /**
     * 模糊搜索
     *
     * @param $like
     */
    //array('title' => $match, 'page1' => $match, 'page2' => $match);
    //array(
    //    'like' => array(
    //        array($field, $match, $side),
    //        array($field, $match, $side)
    //    ),
    //    'like' => array($field, $match, $side),
    //    )

    private function _like($like)
    {
        if (is_array($like)) {
            if (max_dimension($like) == 1) {
                $this->db->like($like);
            } else {
                foreach ($like as $type => $v) {
                    if (max_dimension($v) == 1) {
                        list($field, $match, $side) = array_pad($v, 3, '');
                        $side = $side ?: 'both';
                        if ($field != '' && $match != '') {
                            switch ($type) {
                                case 'or_like':
                                    $this->db->or_like($field, $match, $side);
                                    break;
                                case 'not_like':
                                    $this->db->not_like($field, $match, $side);
                                    break;
                                case 'or_not_like':
                                    $this->db->or_not_like($field, $match, $side);
                                    break;
                                default:
                                    $this->db->like($field, $match, $side);
                                    break;
                            }
                        }
                    } else {
                        foreach ($v as $r) {
                            list($field, $match, $side) = array_pad($r, 3, '');
                            $side = $side ?: 'both';
                            if ($field != '' && $match != '') {
                                switch ($type) {
                                    case 'or_like':
                                        $this->db->or_like($field, $match, $side);
                                        break;
                                    case 'not_like':
                                        $this->db->not_like($field, $match, $side);
                                        break;
                                    case 'or_not_like':
                                        $this->db->or_not_like($field, $match, $side);
                                        break;
                                    default:
                                        $this->db->like($field, $match, $side);
                                        break;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

}
