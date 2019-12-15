<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/7/26
 */

use Ramsey\Uuid\Uuid;

class Dict_dir extends MY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $result = $this->common->get_list(array(
                'table' => 'sys_dict_dir',
                'order_by' => 'sort asc,create_time asc',
            ));
            $result['list'] = list_to_tree($result['list']);
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
            $parent_id = $this->input->post('parent_id');
            $name = $this->input->post('name');
            $key = $this->input->post('key');
            if ($parent_id == '' || $name == '' || $key == '') {
                throw new Exception('缺少参数', '1');
            }
            $values = array(
                'name' => $name,
                'key' => $key,
                'parent_id' => $parent_id,
                'sort' => $this->input->post('sort'),
            );
            //检查key是否存在
            $this->_key_exists($key, $id);
            if ($id) {
                $result = $this->common->update('sys_dict_dir', array('id' => $id), $values);
                //更新字典表中对应的字典目录 key
                if ($this->input->post('is_update_dir_key') == '1') {
                    $this->_update_dir_key($id, $key);
                }
            } else {
                $values['id'] = Uuid::uuid4();
                $result = $this->common->insert('sys_dict_dir', $values);
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
            $has_next = $this->common->count_all_results('sys_dict_dir', array('parent_id' => $id));
            if ($has_next > 0) {
                throw new Exception('已被使用，禁止删除', '1');
            }
            //检查是否存在字典
            $has_dict = $this->common->count_all_results('sys_dict', "dict_dir_id='$id'");
            if ($has_dict > 0) {
                throw new Exception('已被使用，禁止删除', '1');
            }
            $result = $this->common->delete('sys_dict_dir', array('id' => $id));
            $this->ajax_output->output('0', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    /**
     * 更新Key
     * 字典目录的key修改后，同步更新字典中的key，保证key值对应，防止数据错误
     *
     * @param $dict_dir_id      字典目录标识
     * @param $key              新的key值
     * @return mixed
     */
    private function _update_dir_key($dict_dir_id, $key)
    {
        $result = $this->common->update('sys_dict', array('dict_dir_id' => $dict_dir_id), array('dict_dir_key' => $key));
        return $result['affected_rows'];
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
        $count = $this->common->count_all_results('sys_dict_dir', $where);
        if ($count > 0) {
            throw new Exception('不合法的 KEY');
        }
    }
}
