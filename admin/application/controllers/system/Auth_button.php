<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/6/11
 */

use Ramsey\Uuid\Uuid;

class Auth_button extends MY_Controller
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
                'table' => 'sys_auth_button',
                'where' => $where,
                'like' => $like,
                'order_by' => 'sort asc,create_time asc'
            ));
            $this->ajax_output->output('0', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    public function submit()
    {
        try {
            $id = $this->input->post('id');
            $values = array(
                'name' => $this->input->post('name'),
                'key' => $this->input->post('key'),
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort')
            );
            if ($id) {
                $result = $this->common->update('sys_auth_button', array('id' => $id), $values);
            } else {
                $values['id'] = Uuid::uuid4();
                $result = $this->common->insert('sys_auth_button', $values);
            }
            $this->ajax_output->output('0', '保存成功', $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    public function delete()
    {
        try {
            $id = $this->input->post('id');
            if ($id == '') {
                throw new Exception('缺少参数', '1');
            }
            $result = $this->common->delete('sys_auth_button', array('id' => $id));
            $this->ajax_output->output('0', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }


}
