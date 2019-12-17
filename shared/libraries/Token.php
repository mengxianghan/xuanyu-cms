<?php
/**
 * author    mengxianghan
 * links     http://www.xuanyunet.com
 * date      2019/8/2
 */

class Token
{
    protected $ci;
    protected $alg = 'HS256';
    protected $type = 'token';
    protected $iss = 'xuanyucms';
    protected $exp;
    protected $secret;

    public function __construct()
    {
        $this->ci =& get_instance();
        //获取秘钥
        $this->secret = $this->ci->config->item('encryption_key');
        //获取有效时长
        $this->exp = $this->ci->config->item('sess_expiration');
    }

    private function _header()
    {
        return array(
            'alg' => $this->alg,
            'type' => $this->type
        );
    }

    private function _payload($user_id)
    {
        return array(
            'iss' => $this->iss,//issuer 签发人
            'exp' => time() + $this->exp,//expiration time 过期时间
            'iat' => time(),//Issuer At 签发时间
            'user_id' => $user_id
        );
    }

    /**
     * 加密
     *
     * @param $data 需要加密的数据
     *
     * @return string
     */
    private function _encode($data)
    {
        return base64_encode(json_encode($data));
    }

    /**
     * 解密
     *
     * @param $data 需要解密的数据
     *
     * @return mixed
     */
    private function _decode($data)
    {
        return json_decode(base64_decode($data), JSON_OBJECT_AS_ARRAY);
    }

    /**
     * 签名
     *
     * @param $header
     * @param $payload
     *
     * @return string
     */
    private function _signature($header, $payload)
    {
        return hash_hmac('sha256', $header . $payload, $this->secret);
    }

    /**
     * 创建 token
     * @return string
     */
    public function create($user_id)
    {
        //加密header
        $header = $this->_encode($this->_header());
        //加密payload
        $payload = $this->_encode($this->_payload($user_id));
        //生成签名
        $signature = $this->_signature($header, $payload);
        return $header . '.' . $payload . '.' . $signature;
    }

    /**
     * 验证 token
     */
    public function validate()
    {
        try {
            //不验证白名单
            if (!$this->_is_white_list()) {
                //验证token是否存在
                if (!isset($_SERVER['HTTP_TOKEN'])) {
                    throw new Exception('签名无效', 3);
                }
                //将获取的token转成数组
                $token = explode('.', $_SERVER['HTTP_TOKEN']);
                //验证token长度
                if (count($token) < 3) {
                    throw new Exception('签名无效', 3);
                }
                list($header64, $payload64, $signature) = $token;
                //验证token中的header和payload部分
                if ($this->_signature($header64, $payload64) !== $signature) {
                    throw new Exception('签名无效', 3);
                }
                //解密header
                $header = $this->_decode($header64);
                //解密payload
                $payload = $this->_decode($payload64);
                //验证header部分
                if ($header['type'] != $this->type || $header['alg'] != $this->alg) {
                    throw new Exception('签名无效', 3);
                }
                //验证payload部分
                if ($payload['iss'] != $this->iss) {
                    throw new Exception('签名无效', 3);
                }
                //验证是否超时
                //if (isset($payload['exp']) && $payload['exp'] < time()) {
                //    throw new Exception('签名已过期，请重新登录');
                //}
            }
        } catch (Exception $e) {
            $this->ci->ajax_output->output($e->getCode(), $e->getMessage());
        }
    }

    /**
     * 获取用户id
     * @return mixed|string
     */
    public function get_user_id()
    {
        $token = isset($_SERVER['HTTP_TOKEN']) ? explode('.', $_SERVER['HTTP_TOKEN']) : array();
        list($header64, $payload64, $signature) = array_pad($token, 3, '');
        $payload = $this->_decode($payload64);
        return isset($payload['user_id']) ? $payload['user_id'] : '';
    }

    /**
     * 是否在白名单
     * @return bool
     */
    private function _is_white_list()
    {
        $class = strtolower($this->ci->router->fetch_directory() . $this->ci->router->fetch_class());
        $method = strtolower($this->ci->router->fetch_method());
        $white_list = $this->ci->config->item('white_list');
        $value = isset($white_list[$class]) ? $white_list[$class] : '';
        if ($value == '') return false;
        if ($value == '*') return true;
        if (is_array($value) && in_array($value, $method)) {
            return true;
        }
        return false;
    }
}