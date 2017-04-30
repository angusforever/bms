<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>图书管理系统</title>
    <meta name="keywords" content="图书管理系统">
    <meta name="description" content="图书管理系统">
    <!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <link href="/bms/Public/adminframework/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/animate.css" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/style_atp.css?v=4.0.0" rel="stylesheet">
    <style type="text/css">
        body{
            font-size: 14px;
        }
    </style>
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <img src="/bms/Public/img/icon.jpeg" width="30" height="30" style="margin-left: 10px;margin-top: -9px ">
                    <span style="line-height: 60px;font-family: '微软雅黑';font-size: 22px;color: white;margin-left: 0px;">北京市海淀区清河学区管理中心图书管理系统</span>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown hidden-xs">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#" style="line-height: 10px;">
                                    <span class="clear">
                                   <span class="block m-t-xs"><strong class="font-bold username"></strong></span>
                                        <!--(<?php echo (session('emp_role')); ?>)-->
                                    <span class="text-muted text-xs block">欢迎您：<?php echo (session('emp_name')); ?><b class="caret"></b></span>
                                    </span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a class="imgnav" title="修改密码" href="/bms/index.php/Admin/Login/changePwd">修改密码</a></li>
                            <li><a class="" href="/bms/index.php/Admin/Login">登出</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>

        <div class="row border-bottom">
            <nav class="" role="navigation" style="margin-bottom: 0px;height: 100px;">
                <ul class="nav navbar-top-links navbar-left" style="width: 100%;padding: 0;margin: 0 auto;">
                    <div style="width:50%; margin:0 auto">
                        <?php if('管理员' == $_SESSION['emp_role']): ?><div class="imgnav" href="borrow/index.html" title="借书" style="width: 60px;height: 60px;margin: 20px;float:left">
                            <div style="width: 50px;height: 50px;margin: 0px;background-image: url('/bms/Public/img/1.jpg');background-repeat:no-repeat;background-size:100%;"></div>
                            <span style="color: #00a2d4;font-family: '微软雅黑';font-size: 14px;font-weight: bold;display: block;text-align: center">借书</span>
                        </div>
                        <div class="imgnav" href="return/index.html" title="还书" style="width: 60px;height: 60px;margin: 20px;float:left">
                            <div style="width: 50px;height: 50px;margin: 0px;background-image: url('/bms/Public/img/1.jpg');background-repeat:no-repeat;background-size:100%;"></div>
                            <span style="color: #00a2d4;font-family: '微软雅黑';font-size: 14px;font-weight: bold;display: block;text-align: center">还书</span>
                        </div><?php endif; ?>
                        <div class="imgnav" href="history/index.html" title="借阅历史" style="width: 60px;height: 60px;margin: 20px;float:left">
                            <div style="width: 50px;height: 50px;margin: 0px;background-image: url('/bms/Public/img/1.jpg');background-repeat:no-repeat;background-size:100%;"></div>
                            <span style="color: #00a2d4;font-family: '微软雅黑';font-size: 14px;font-weight: bold;display: block;text-align: center">借阅历史</span>
                        </div>
                        <?php if('管理员' == $_SESSION['emp_role']): ?><div class="imgnav" href="book/index.html" title="图书管理" style="width: 60px;height: 60px;margin: 20px;float:left">
                            <div style="width: 50px;height: 50px;margin: 0px;background-image: url('/bms/Public/img/1.jpg');background-repeat:no-repeat;background-size:100%;"></div>
                            <span style="color: #00a2d4;font-family: '微软雅黑';font-size: 14px;font-weight: bold;display: block;text-align: center">图书管理</span>
                        </div>
                        <div class="imgnav" href="" title="数据统计" style="width: 60px;height: 60px;margin: 20px;float:left">
                            <div style="width: 50px;height: 50px;margin: 0px;background-image: url('/bms/Public/img/1.jpg');background-repeat:no-repeat;background-size:100%;"></div>
                            <span style="color: #00a2d4;font-family: '微软雅黑';font-size: 14px;font-weight: bold;display: block;text-align: center">数据统计</span>
                        </div><?php endif; ?>
                    </div>
                </ul>
            </nav>
        </div>

        <div class="row content-tabs">
            <nav class="page-tabs J_menuTabs" style="margin-left: 1px">
                <div class="page-tabs-content">
                    <a href="javascript:;" class="active J_menuTab fix" data-id="index_v1.html">搜索图书</a>
                </div>
            </nav>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="search/index" frameborder="0" data-id="index_v1.html" seamless></iframe>
        </div>
        <div class="footer">
            <div class="pull-right">&copy; 2016-2017 <a href="#" target="_blank">北京市海淀区清河学区管理中心</a>
            </div>
        </div>
    </div>
    <!--右侧部分结束-->
</div>

<!-- 全局js -->
<script src="/bms/Public/adminframework/js/jquery.min.js?v=2.1.4"></script>
<script src="/bms/Public/adminframework/js/bootstrap.min.js?v=3.3.5"></script>
<script src="/bms/Public/adminframework/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/bms/Public/adminframework/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="/bms/Public/adminframework/js/plugins/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="/bms/Public/adminframework/js/hplus_atp.js?v=4.0.0"></script>
<script type="text/javascript" src="/bms/Public/adminframework/js/contabs_atp.js"></script>
</body>
</html>