<?php

use Ramsey\Uuid\Uuid;

class Account extends XY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $status = $this->input->get('status');
            $where = '';
            if ($status != '') {
                $where .= 'status = ' . $status;
            }
            $result = $this->common->get_list(array(
                'table' => 'wx_account',
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
                'account' => $this->input->post('account'),
                'origin_id' => $this->input->post('origin_id'),
                'app_id' => $this->input->post('app_id'),
                'app_secred' => $this->input->post('app_secred'),
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort')
            );
            if ($id) {
                $result = $this->common->update('wx_account', array('id' => $id), $values);
            } else {
                $values['id'] = Uuid::uuid4();
                $result = $this->common->insert('wx_account', $values);
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
            $result = $this->common->delete('wx_account', array('id' => $id));
            $this->ajax_output->output('200', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }


}
