<?php
namespace Admin\Controller;

use Think\Controller;

class BaseAuthController extends BaseController
{
    function _initialize()
    {
        parent::_initialize();
//        if(!session('?u_atpid'))
//        {
//            $this->redirect('/Admin/Login');
//        }
    }

}