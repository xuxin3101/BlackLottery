<?php
class Tools
{
    public function ip()
    {
        if (getenv('HTTP_CLIENT_IP') && strcasecmp(getenv('HTTP_CLIENT_IP'), 'unknown')) {
            $ip = getenv('HTTP_CLIENT_IP');
        } elseif (getenv('HTTP_X_FORWARDED_FOR') && strcasecmp(getenv('HTTP_X_FORWARDED_FOR'), 'unknown')) {
            $ip = getenv('HTTP_X_FORWARDED_FOR');
        } elseif (getenv('REMOTE_ADDR') && strcasecmp(getenv('REMOTE_ADDR'), 'unknown')) {
            $ip = getenv('REMOTE_ADDR');
        } elseif (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], 'unknown')) {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        return preg_match('/[\d\.]{7,15}/', $ip, $matches) ? $matches [0] : '';
    }
    public function checksign($array, $secretkey)
    {   
        if(empty($array['sign'])|| empty($array['timestamp'])){
            return false;
        }
        $time=time();
        if(((int)$time)-(int)($array['timestamp'])>90){
            return false;
        }
        
        $arr=[];
        foreach ($array as $key=>$value) {
            if ($key!='sign') {
                $arr[$key] = $key;
            }
        }
        sort($arr);
        $str = "";
        foreach ($arr as $k => $v) {
            $str = $str.$arr[$k].$array[$v];
        }
        $restr=$str.$secretkey;
        $sign = strtoupper(md5($restr));
        if ($sign==$array['sign']) {
            return true;
        } else {
            return false;
        }
    }
}
