<?php
namespace Admin\Controller;

use Think\Controller;

class BaseController extends Controller
{
    function _initialize()
    {
//        $this->logSys('', '', "访问日志", $this->getPathInfoQueryString());
    }

    function makeGuid()
    {
        if (function_exists('com_create_guid') === true) {
            return trim(com_create_guid(), '{}');
        }
        return 'guid'.sprintf('%04X%04X-%04X-%04X-%04X-%04X%04X%04X', mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(16384, 20479), mt_rand(32768, 49151), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535));
    }

    public function makeFCode(){
        $Model = M();
        $sql_select = "select CONCAT('F',date_format(NOW(),'%Y%m%d'),LPAD(mhsw_nextval('fcode'),3,0)) code;";
        $Result = $Model->query($sql_select);
        return $Result[0]['code'];
    }

    function logSys($userid = "",$adminid = "",  $type = "", $content = "")
    {
        $Model = M('log');
        $data['l_atpid'] = $this->makeGuid();
        $data['l_atpstatus'] = null;
        $data['l_atpcreatedatetime'] = date('Y-m-d H:i:s', time());
        $data['l_atpcreateuser'] = "";
        $data['l_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
        $data['l_atplastmodifyuser'] = "";
        $data['l_atpremark'] = '';
        $data['l_logip'] = get_client_ip();
        $data['l_logtype'] = $type;
        $data['l_logcontent'] = $content;
        $data['l_logtime'] = date('Y-m-d H:i:s', time());
        $data['l_userid'] = $userid;
        $data['l_adminid'] = $adminid;
        $Model->add($data);
    }

    function getPathInfoQueryString()
    {
        return $_SERVER['PATH_INFO'] . '?' . $_SERVER['QUERY_STRING'];
    }

    function buildSql($sql,$condition)
    {
        if($this->containString($sql," where "))
        {
            return $sql." and ".$condition;
        }
        else
        {
            return $sql." where ".$condition;
        }
    }

    function filterSqlOrderCondition($input)
    {
        $subject = strtolower($input);
        $pattern  =  '/^[qwertyuiopasdfghjklzxcvbnm_0123456789]*$/' ;
        preg_match($pattern, $subject, $matches);
        if (preg_match($pattern, $subject, $matches) == 0) {
            echo "''";
        } else {
            echo $input;
        }
    }

    function containString($input,$splite)
    {
        $tmparray = explode($splite, $input);
        if (count($tmparray) > 1) {
            return true;
        } else {
            return false;
        }
    }

}