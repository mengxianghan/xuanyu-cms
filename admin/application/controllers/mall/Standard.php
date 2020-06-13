<?php

class Standard extends XY_Controller
{
    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            //上级分类
            $parent_id = $this->input->get('parent_id') ?: '0';
            //状态
            $status = $this->input->get('status');
            //查询条件
            $where = array();
            if ($parent_id != '') {
                $where['parent_id'] = $parent_id;
            }
            if ($status != '') {
                $where ['status'] = $status;
            }
            $result = $this->common->get_list(array(
                'table' => 'mall_standard',
                'where' => $where,
                'order_by' => 'sort asc,create_time asc'
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
            $values = array(
                'name' => $this->input->post('name'),
                'parent_id' => $this->input->post('parent_id') ?: '0',
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort')
            );
            if ($id) {
                $result = $this->common->update('mall_standard', array('id' => $id), $values);
            } else {
                $result = $this->common->insert('mall_standard', $values);
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
            $has_next = $this->common->count_all_results('mall_standard', array('parent_id' => $id));
            if ($has_next > 0) {
                throw new Exception('已被使用，禁止删除', '1');
            }
            $result = $this->common->delete('mall_standard', array('id' => $id));
            $this->ajax_output->output('200', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

}
