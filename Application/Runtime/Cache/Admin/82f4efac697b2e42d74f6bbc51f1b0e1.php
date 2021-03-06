<?php if (!defined('THINK_PATH')) exit();?>﻿<div class="modal-dialog" style="width: 600px;z-index: 10;">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" data-dismiss="modal" class="close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">数据编辑</h4>
        </div>

        <form id="sys_dlg_form" role="form" class="form-horizontal">
        <div class="modal-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">账号：</label><div class="col-sm-4"><input name="emp_account" type="text"  value="<?php echo ($data["emp_account"]); ?>" class="form-control"></div>
                    <label class="col-sm-2 control-label">密码：</label><div class="col-sm-4"><input name="emp_password" type="text" value="<?php echo ($data["emp_password"]); ?>" class="form-control"></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">姓名：</label><div class="col-sm-4"><input name="emp_name" type="text"  value="<?php echo ($data["emp_account"]); ?>" class="form-control"></div>
                    <label class="col-sm-2 control-label">角色：</label>
                    <div class="col-sm-4">
                        <select name="emp_role" class="chosen-select">
                            <option value="">请选择</option>
                            <option value="管理员" <?php if(($data["emp_role"] == '管理员')): ?>selected<?php else: endif; ?> >管理员</option>
                            <option value="普通用户" <?php if(($data["emp_role"] == '普通用户')): ?>selected<?php else: endif; ?> >普通用户</option>
                        </select>
                    </div>
                </div>
                <input name="emp_atpid" type="hidden" value="<?php echo ($data["emp_atpid"]); ?>" class="form-control">

        </div>
        <div class="modal-footer">
            <button type="button" data-dismiss="modal" class="btn btn-default">关闭</button>
            <input id="sys_dlg_submit" class="btn btn-primary" type="submit" value="保存">
            <!--<button type="button" data-dismiss="modal" id="sys_dlg_submit" class="btn btn-primary">保存</button>-->
        </div>
        </form>
    </div>
</div>
<!--<div class="modal-backdrop fade in" style="z-index: -101;"></div>-->
<script>
$(function () {
    $(".chosen-select").chosen({disable_search_threshold: 10, search_contains: true,width:'100%'});
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
        $("#sys_dlg_form").validate({
            rules: {
                emp_account: "required",
                emp_password: "required",
                emp_name: {
                    required: true
                },
                emp_role: {
                    required: true
                }
            },
            messages: {
                emp_account: icon + "必填",
                emp_password: icon + "必填",
                emp_name: icon + "必填",
                emp_role: icon + "必填"
            },
            submitHandler: function(){
                var f = $('#sys_dlg_form');
                console.log(f.serialize());
                $.post('/bkmg/src/bms/index.php/Admin/Admin/submit', f.serialize(), function(result){
                    if('0' == result){
                        $("#sys_dlg").modal('hide');
                        $('#atpbiztable').bootstrapTable('refresh');
                    } else {
                        alert('保存失败，错误码为：' + result);
                    }
                });
            }
        });
    });
});
</script>