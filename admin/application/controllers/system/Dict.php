<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/7/26
 */

use Ramsey\Uuid\Uuid;

class Dict extends XY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $status = $this->input->get('status');
            $dict_dir_id = $this->input->get('dict_dir_id');
            $dict_dir_key = $this->input->get('dict_dir_key');
            $where = array();
            if ($status != '') {
                $where['status'] = $status;
            }
            if ($dict_dir_id != '') {
                $where['dict_dir_id'] = explode(',', $dict_dir_id);
            }
            if ($dict_dir_key != '') {
                $where['dict_dir_key'] = $dict_dir_key;
            }
            $result = $this->common->get_list(array(
                'table' => 'sys_dict',
                'where' => $where,
                'order_by' => 'sort asc,create_time asc',
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
            $dict_dir_id = $this->input->post('dict_dir_id');
            $dict_dir_key = $this->input->post('dict_dir_key');
            $name = $this->input->post('name');
            $key = $this->input->post('key');
            if ($dict_dir_id == '' || $dict_dir_key == '' || $name == '' || $key == '') {
                throw new Exception('缺少参数', '1');
            }
            $values = array(
                'name' => $name,
                'key' => $key,
                'remark' => $this->input->post('remark'),
                'dict_dir_id' => $dict_dir_id,
                'dict_dir_key' => $this->input->post('dict_dir_key'),
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort'),
            );
            // 检查 key 是否已存在
            $this->_key_exists($key, $id);
            if ($id) {
                $result = $this->common->update('sys_dict', array('id' => $id), $values);
            } else {
                $values['id'] = Uuid::uuid4();
                $result = $this->common->insert('sys_dict', $values);
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
            $result = $this->common->delete('sys_dict', array('id' => $id));
            $this->ajax_output->output('200', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    /**
     * 检查key是否存在
     *
     * @param        $key
     * @param string $id 需要排除的数据的id
     * @throws Exception
     */
    private function _key_exists($key, $id = '')
    {
        $where = array();
        $where['key'] = $key;
        if ($id) {
            $where['id != '] = $id;
        }
        $count = $this->common->count_all_results('sys_dict', $where);
        if ($count > 0) {
            throw new Exception('不合法的 KEY', '1');
        }
    }
}
