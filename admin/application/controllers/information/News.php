<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/7/6
 */

class News extends MY_Controller
{

    /**
     * 获取列表
     */
    public function get_list()
    {
        try {
            // 检索
            $search = $this->input->get('search');
            // 状态
            $status = $this->input->get('status');
            // 栏目 id
            $column_id = $this->input->get('column_id');
            // 查询条件
            $where = array();
            if ($status != '') {
                $where['in.status'] = $status;
            }
            if ($column_id != '') {
                $where['in.column_id'] = explode(',', $column_id);
            }
            // 模糊查询
            $like = array();
            if (request_search($search, 'title') != '') {
                $like['title'] = request_search($search, 'title');
            }
            $result = $this->common->get_list(array(
                'select' => 'in.*,ic.name column_name',
                'table' => 'info_news in',
                'where' => $where,
                'like' => $like,
                'order_by' => 'in.sort desc,in.create_time desc',
                'join' => array('info_column ic', 'ic.id = in.column_id', 'left')
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
            $title = $this->input->post('title');
            $column_id = $this->input->post('column_id');
            if ($title == '' || $column_id == '') {
                throw new Exception('缺少参数', '1');
            }
            $values = array(
                'title' => $title,
                'sub_title' => $this->input->post('sub_title'),
                'seo_keywords' => $this->input->post('seo_keywords'),
                'seo_description' => $this->input->post('seo_description'),
                'content' => $this->input->post('content'),
                'column_id' => $column_id,
                'author' => $this->input->post('author'),
                'source' => $this->input->post('source'),
                'thumb' => $this->input->post('thumb'),
                'is_recommend' => $this->input->post('is_recommend'),
                'is_hot' => $this->input->post('is_hot'),
                'external_links' => $this->input->post('external_links'),
                'tag' => $this->input->post('tag'),
                'status' => $this->input->post('status'),
                'sort' => $this->input->post('sort')
            );
            if ($id) {
                $result = $this->common->update('info_news', array('id' => $id), $values);
            } else {
                $result = $this->common->insert('info_news', $values);
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
            $result = $this->common->delete('info_news', array('id' => explode(',', $id)));
            $this->ajax_output->output('200', null, $result);
        } catch (Exception $e) {
            $this->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

}
