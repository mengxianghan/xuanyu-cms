<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/6/9
 */

use Ramsey\Uuid\Uuid;

class Menu extends MY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $is_tree = $this->input->get('is_teee') ?: '1';
            $status = $this->input->get('status');
            $where = array();
            if ($status != '') {
                $where ['status'] = $status;
            }
            $result = $this->common->get_list(array(
                'table' => 'sys_menu',
                'where' => $where,
                'order_by' => 'sort asc,create_time asc',
                'has_pagination' => '0'
            ));
            if ($is_tree == '1') {
                $result['list'] = list_to_tree($result['list']);
            }
            $this->ajax_output->output('0', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    /**
     * 提交
     */
    public function submit()
    {
        try {
            $id = $this->input->post('id');
            $name = $this->input->post('name');
            $values = array(
                'parent_id' => $this->input->post('parent_id'),
                'name' => $name,
                'icon' => $this->input->post('icon'),
                'route_path' => $this->input->post('route_path'),
                'route_name' => $this->input->post('route_name'),
                'route_component' => $this->input->post('route_component'),
                'redirect' => $this->input->post('redirect'),
                'target' => $this->input->post('target'),
                'auth_button_id' => $this->input->post('auth_button_id'),
                'hidden' => $this->input->post('hidden'),
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort'),
            );
            if ($id) {
                $result = $this->common->update('sys_menu', array('id' => $id), $values);
            } else {
                $values['id'] = Uuid::uuid4();
                $result = $this->common->insert('sys_menu', $values);
            }
            $this->ajax_output->output('0', '保存成功', $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
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
                throw new Exception('缺少参数', '1');
            }
            // 检查是否含有下级
            $has_next = $this->common->count_all_results('sys_menu', array('parent_id' => $id));
            if ($has_next > 0) {
                throw new Exception('已被使用，禁止删除', '1');
            }
            $result = $this->common->delete('sys_menu', array('id' => $id));
            $this->ajax_output->output('0', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }
}
