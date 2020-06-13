<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/7/5
 */


class Column extends XY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $status = $this->input->get('status');
            $where = array();
            if ($status != '') {
                $where['ic.status'] = $status;
            }
            $result = $this->common->get_list(array(
                'select' => 'ic.*,it.name template_name,it.menu_id',
                'table' => 'info_column ic',
                'where' => $where,
                'order_by' => 'ic.sort asc,ic.create_time asc',
                'has_pagination' => '0',
                'join' => array('info_template it', 'it.id = ic.template_id', 'left')
            ));
            $result['list'] = list_to_tree($result['list']);
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
            $id = $this->inpt->post('id');
            $name = $this->inpt->post('name');
            if ($name == '') {
                throw new Exception('缺少参数', '1');
            }
            $values = array(
                'parent_id' => $this->inpt->post('parent_id'),
                'name' => $name,
                'template_id' => $this->inpt->post('template_id'),
                'status' => $this->inpt->post('status'),
                'sort' => $this->inpt->post('sort'),
            );
            if ($id) {
                $result = $this->common->update('info_column', array('id' => $id), $values);
            } else {
                $result = $this->common->insert('info_column', $values);
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
            //检查是否含有下级
            $count = $this->common->count_all_results('info_column', "parent_id = $id");
            //存在下级，禁止删除
            if ($count > 0) {
                throw new Exception('已被使用，禁止删除', '1');
            }
            $result = $this->common->delete('info_column', array('id' => $id));
            $this->ajax_output->output('200', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }
}
