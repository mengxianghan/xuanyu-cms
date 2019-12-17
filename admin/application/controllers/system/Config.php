<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/6/12
 */

class Config extends MY_Controller
{

    /**
     * 获取数据
     */
    public function get_data()
    {
        try {
            $result = $this->common->get_data(array(
                'table' => 'sys_config'
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
                'domain_name' => $this->input->post('domain_name'),
                'copyright' => $this->input->post('copyright'),
                'status' => $this->input->post('status'),
                'close_explain' => $this->input->post('close_explain'),
                'title' => $this->input->post('title'),
                'keywords' => $this->input->post('keywords'),
                'description' => $this->input->post('description'),
                'script' => $this->input->post('script'),
                'upload_dir' => $this->input->post('upload_dir'),
                'allowed_file_type' => $this->input->post('allowed_file_type'),
                'allowed_file_size' => $this->input->post('allowed_file_size'),
            );
            if ($id) {
                $result = $this->common->update('sys_config', array('id' => $id), $values);
            } else {
                $result = $this->common->insert('sys_config', $values);
            }
            $this->ajax_output->output('200', '保存成功', $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

}
