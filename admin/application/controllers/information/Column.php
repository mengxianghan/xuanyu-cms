<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/7/5
 */


class Column extends MY_Controller
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
            $data = array(
                'list' => list_to_tree($result['list'])
            );
            return ajax(EXIT_SUCCESS, null, $data);
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
            $id = $this->inpt->post('id');
            $name = $this->inpt->post('name');
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
            return ajax(EXIT_SUCCESS, '保存成功', $result);
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
            //检查是否含有下级
            $count = $this->common->count_all_results('info_column', "parent_id = $id");
            if ($count > 0) { //存在下级，禁止删除
                throw new Exception('存在下级数据，请勿删除！');
            }
            $result = $this->common->delete('info_column', array('id' => $id));
            return ajax(EXIT_SUCCESS, null, $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }
}
