<?php
namespace Admin\Controller;
use Think\Controller;
class LoginController extends BaseController {

    public function index()
    {
        $password = cookie('remember_password');
        $account = cookie('remember_account');
        $remember = cookie('remember');
        if($password && $account){
            $this->assign('emp_account',$account);
            $this->assign('emp_password',$password);
            $this->assign('remember', $remember);
        }
        $this->display();
    }

    public function dologin()
    {
        $map['emp_account'] = array('EQ', I('param.emp_account', ''));
        $map['emp_password'] = array('EQ', I('param.emp_password', ''));
        $map['emp_atpstatus'] = array('EXP', "is null");
        $Model = M('employee');
        $result = $Model->where($map)->select();
        if (count($result) == 1) {
            if(I('param.remember','') == 1){
                cookie('remember', 1, 3600*24*30);
                cookie('remember_password',trim(I('param.emp_password')),3600*24*30); // 指定密码保存一个月
                cookie('remember_account',trim(I('param.emp_account')),3600*24*30); // 指定密码保存一个月
            } else {
                cookie('remember', null);
                cookie('remember_password',null); // 指定密码保存一个月
                cookie('remember_account',null); // 指定密码保存一个月
            }
            session('emp_role',$result[0]['emp_role']);
            session('emp_atpid',$result[0]['emp_atpid']);
            session('emp_account',$result[0]['emp_account']);
            session('emp_password', $result[0]['emp_password']);
            session('emp_name',$result[0]['emp_name']);
            session('ip',get_client_ip());
            echo "登录成功";
        } else {
            echo "登录失败";
        }
    }

    public function savePwd(){
        $old_password = I('param.old_password');
        $new_password = I('param.new_password');
        $emp = M('employee')->where(array('emp_atpid'=>session('emp_atpid')))->find();
        if($old_password != $emp['emp_password']){
            $this->ajaxReturn('-1');
        } else {
            $data['emp_atplastmodifydatetime'] = date('Y-m-d H:i:s', time());
            $data['emp_atplastmodifyuser'] = session('emp_atpid');
            $data['emp_password'] = $new_password;

            $res = M('employee')->where(array('emp_atpid'=>session('emp_atpid')))->save($data);
            if($res){
                $this->ajaxReturn('0');
            } else {
                $this->ajaxReturn('-2');
            }
        }
    }
}