<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/7/5
 */

class Template extends XY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $name = $this->input->get('name');
            $status = $this->input->get('status');
            $where = array();
            if ($status != '') {
                $where ['it.status'] = $status;
            }
            $like = array();
            if ($name) {
                $like['it.name'] = $name;
            }
            $result = $this->common->get_list(array(
                'select' => 'it.*,sm.route_component',
                'table' => 'info_template it',
                'join' => array(
                    'sys_menu sm', 'it.menu_id = sm.id', 'left'
                ),
                'where' => $where,
                'like' => $like,
                'order_by' => 'it.sort asc,it.create_time asc'
            ));
            $this->ajax_output->output('200', null, $result);
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
            $menu_id = $this->input->post('menu_id');
            if ($name == '' || $menu_id == '') {
                throw new Exception('缺少参数', '1');
            }
            $values = array(
                'name' => $name,
                'menu_id' => $menu_id,
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort')
            );
            if ($id) {
                $result = $this->common->update('info_template', array('id' => $id), $values);
            } else {
                $result = $this->common->insert('info_template', $values);
            }
            $this->ajax_output->output('200', '保存成功', $result);
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
            //检查模板是否在使用
            $count = $this->common->count_all_results('info_column', "template_id = $id");
            if ($count > 0) {
                throw new Exception('已被使用，禁止删除', '1');
            }
            $result = $this->common->delete('info_template', array('id' => $id));
            $this->ajax_output->output('200', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

}
