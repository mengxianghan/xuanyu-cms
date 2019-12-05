<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/6/11
 */

use Ramsey\Uuid\Uuid;

class Post extends MY_Controller
{

    public function get_list()
    {
        try {
            $name = $this->input->get('name');
            $status = $this->input->get('status');
            $like = array();
            $where = '';
            if ($status != '') {
                $where .= 'status = ' . $status;
            }
            if ($name) {
                $like['name'] = $name;
            }
            $result = $this->common->get_list(array(
                'table' => 'sys_post',
                'where' => $where,
                'like' => $like,
                'order_by' => 'sort asc,create_time asc'
            ));
            return ajax(EXIT_SUCCESS, null, $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

    public function submit()
    {
        try {
            $id = $this->input->post('id');
            $values = array(
                'name' => $this->input->post('name'),
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort')
            );
            if ($id) {
                $result = $this->common->update('sys_post', array('id' => $id), $values);
            } else {
                $values['id'] = Uuid::uuid4();
                $result = $this->common->insert('sys_post', $values);
            }
            return ajax(EXIT_SUCCESS, '保存成功', $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

    public function delete()
    {
        try {
            $id = $this->input->post('id');
            if ($id == '') {
                throw new Exception('参数不完整');
            }
            $result = $this->common->delete('sys_post', array('id' => $id));
            return ajax(EXIT_SUCCESS, null, $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }


}
