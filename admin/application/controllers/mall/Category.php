<?php

class Category extends XY_Controller
{
    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            //状态
            $status = $this->input->get('status');
            //查询条件
            $where = array();
            if ($status != '') {
                $where ['status'] = $status;
            }
            $result = $this->common->get_list(array(
                'table' => 'mall_category',
                'where' => $where,
                'order_by' => 'sort asc,create_time asc',
                'has_pagination' => '0'
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
            $id = $this->input->post('id');
            $values = array(
                'name' => $this->input->post('name'),
                'parent_id' => $this->input->post('parent_id'),
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort')
            );
            if ($id) {
                $result = $this->common->update('mall_category', array('id' => $id), $values);
            } else {
                $result = $this->common->insert('mall_category', $values);
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
            // 检查是否含有下级
            $has_next = $this->common->count_all_results('mall_category', array('parent_id' => $id));
            if ($has_next > 0) {
                throw new Exception('已被使用，禁止删除', '1');
            }
            $result = $this->common->delete('mall_category', array('id' => $id));
            $this->ajax_output->output('200', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

}
