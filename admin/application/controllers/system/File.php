<?php

class File extends MY_Controller
{
    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            $parent_id = $this->input->get('parent_id') ?: '0';
            $table = "(";
            $table .= "select id,name,'1' as type,'folder' as ext,create_time,'' as file_size from upload_dir where parent_id = '$parent_id'";
            $table .= " union all";
            $table .= " select id,file_name as name,'2' as type,trim('.' from file_ext) as ext,create_time,file_size from upload where upload_dir_id = '$parent_id'";
            $table .= ") t";
            $result = $this->common->get_list(array(
                'table' => $table
            ));
            return ajax(EXIT_SUCCESS, NULL, $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, $e->getMessage());
        }
    }

    /**
     * 重命名
     */
    public function rename()
    {
        try {
            $type = $this->input->post('type');
            $name = $this->input->post('name');
            $id = $this->input->post('id');
            // 目录
            if ($type == '1') {
                $values = array(
                    'name' => $name
                );
                $result = $this->common->update('upload_dir', array('id' => $id), $values);
            }
            // 文件
            elseif ($type == '2') {
                $values = array(
                    'file_name' => $name
                );
                $result = $this->common->update('upload', array('id' => $id), $values);
            }
            return ajax(EXIT_SUCCESS, null, $result);
        } catch (Exception $e) {
            return ajax(EXIT_ERROR, null);
        }
    }

    /**
     * 移动到
     */
    public function move()
    {
        try {
            $id = $this->input->post('id');
            $type = $this->input->post('type');
            $parent_id = $this->input->post('parent_id');
            // 目录
            if ($type == '1') {
                $values = array(
                    'parent_id' => $parent_id
                );
                $result = $this->common->update('upload_dir', array('id' => $id), $values);
            }
            // 文件
            elseif ($type == '2') {
                $values = array(
                    'upload_dir_id' => $parent_id
                );
                $result = $this->common->update('upload', array('id' => $id), $values);
            }
            return ajax(EXIT_SUCCESS, null, $result);
        } catch (Eeception $e) {
            return ajax(EXIT_ERROR, null);
        }

    }

}