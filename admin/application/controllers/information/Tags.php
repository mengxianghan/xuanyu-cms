<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/7/12
 */

class Tags extends MY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $tags = $this->input->get('tags');
            $status = $this->input->get('status');
            $where = array();
            if ($status != '') {
                $where['status'] = $status;
            }
            $like = array();
            if ($tags != '') {
                $like['tags'] = $tags;
            }
            $result = $this->common->get_list(array(
                'table' => 'info_tags',
                'where' => $where,
                'like' => $like,
                'order_by' => 'sort asc,create_time asc'
            ));
            return ajax(EXIT_SUCCESS, null, $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

    /**
     * 提交
     */
    public function submit()
    {
        try {
            $id = $this->input->post('id');
            $tags = $this->input->post('tags');
            $values = array(
                'tags' => $tags,
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort')
            );
            if ($id) {
                $result = $this->common->update('info_tags', array('id' => $id), $values);
            } else {
                $result = $this->common->insert('info_tags', $values);
            }
            return ajax(EXIT_SUCCESS, null, $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

    /**
     * 删除
     */
    public function delete()
    {
        try {
            $id = $this->input->post('id');
            if ($id == '') {
                throw new Exception('参数不完整');
            }
            $result = $this->common->delete('info_tags', array('id' => $id));
            return ajax(EXIT_SUCCESS, null, $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

    /**
     * 替换
     * 该方法用于执行一条 REPLACE 语句，REPLACE 语句根据表的**主键**和**唯一索引** 来执行，类似于标准的 DELETE + INSERT
     */
    public function replace()
    {
        try {
            $tags = $this->input->post('tags');
            if ($tags == '') {
                throw new Exception('参数不完整');
            }
            $affected_rows = 0;
            foreach (explode(',', $tags) as $value) {
                $values = array(
                    'tags' => $value,
                    'status' => '1',
                    'sort' => '100'
                );
                $result = $this->common->replace('info_tags', $values);
                $affected_rows = (int)$result['affected_rows'] + $affected_rows;
            }
            return ajax(EXIT_SUCCESS, null, array('affected_rows' => $affected_rows));
        } catch (Eecption $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

}
