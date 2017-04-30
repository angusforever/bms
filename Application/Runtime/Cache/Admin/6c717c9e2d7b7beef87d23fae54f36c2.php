<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>搜索图书</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="/bkmg/src/bms/Public/adminframework/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="/bkmg/src/bms/Public/adminframework/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="/bkmg/src/bms/Public/adminframework/css/animate.css" rel="stylesheet">
    <link href="/bkmg/src/bms/Public/adminframework/css/style_atp.css?v=4.0.0" rel="stylesheet">
</head>

<body class="">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-6">
            <form class="form-horizontal m-t" id="signupForm">
                <div class="form-group">
                    <label class="col-sm-3 control-label">原密码：</label>
                    <div class="col-sm-8">
                        <input id="old_password" name="old_password" class="form-control" type="password">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">新密码：</label>
                    <div class="col-sm-8">
                        <input id="new_password" name="new_password" class="form-control" type="password">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">确认密码：</label>
                    <div class="col-sm-8">
                        <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                        <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 请再次输入您的密码</span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <button class="btn btn-primary" type="submit">提交</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- 全局js -->
<script src="/bkmg/src/bms/Public/adminframework/js/jquery.min.js?v=2.1.4"></script>
<script src="/bkmg/src/bms/Public/adminframework/js/bootstrap.min.js?v=3.3.5"></script>
<script src="/bkmg/src/bms/Public/adminframework/js/plugins/validate/jquery.validate.min.js"></script>
<script>
    $(function () {
        $.validator.setDefaults({
            highlight: function (element) {
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
            },
            success: function (element) {
                element.closest('.form-group').removeClass('has-error').addClass('has-success');
            },
            errorElement: "span",
            errorPlacement: function (error, element) {
                if (element.is(":radio") || element.is(":checkbox")) {
                    error.appendTo(element.parent().parent().parent());
                } else {
                    error.appendTo(element.parent());
                }
            },
            errorClass: "help-block m-b-none",
            validClass: "help-block m-b-none"


        });

        var icon = "<i class='fa fa-times-circle'></i> ";
        $("#signupForm").validate({
            rules: {
                old_password: {
                    required: true
                },
                new_password: {
                    required: true,
                    minlength: 6
                },
                confirm_password: {
                    required: true,
                    minlength: 6,
                    equalTo: "#new_password"
                }
            },
            messages: {
                old_password: {
                    required: icon + "请输入您的原密码"
                },
                new_password: {
                    required: icon + "请输入您的新密码",
                    minlength: icon + "密码必须6个字符以上",
                },
                confirm_password: {
                    required: icon + "请再次输入密码",
                    minlength: icon + "密码必须6个字符以上",
                    equalTo: icon + "两次输入的密码不一致"
                }
            },
            submitHandler: function(){
                $.post('/bkmg/src/bms/index.php/Admin/Login/savePwd',{old_password: $('#old_password').val(), new_password: $('#new_password').val()}, function(result){
                    if('0' == result){
                        alert('密码修改成功');
                        $('#signupForm input').val('');
                    } else if('-1' == result){
                        alert('原密码错误');
                        $('#signupForm input').val('');
                    } else {
                        alert('密码修改失败');
                        $('#signupForm input').val('');
                    }
                });
            }
        });
    });
</script>
</body>
</html>