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
                    <label class="col-sm-2 control-label">书名：</label><div class="col-sm-10"><input name="bk_name" type="text" value="<?php echo ($data["bk_name"]); ?>" class="form-control"></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">作者：</label><div class="col-sm-4"><input name="bk_author" type="text"  value="<?php echo ($data["bk_author"]); ?>" class="form-control"></div>
                    <label class="col-sm-2 control-label">出版社：</label><div class="col-sm-4"><input name="bk_publish" type="text" value="<?php echo ($data["bk_publish"]); ?>" class="form-control"></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">位置：</label><div class="col-sm-4"><input name="bk_position" type="text"  value="<?php echo ($data["bk_position"]); ?>" class="form-control"></div>
                    <label class="col-sm-2 control-label">编号：</label><div class="col-sm-4"><input name="bk_code" type="text"  value="<?php echo ($data["bk_code"]); ?>" class="form-control" readonly></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">类别：</label>
                    <div class="col-sm-10">
                        <select name="bk_types[]" class="chosen-select" multiple >
                            <?php if(is_array($types)): foreach($types as $rk=>$type): if(('' == $type['has'])): ?><option value="<?php echo ($type["tp_atpid"]); ?>" ><?php echo ($type["tp_name"]); ?></option>
                                    <?php else: ?>
                                    <option value="<?php echo ($type["tp_atpid"]); ?>" selected ><?php echo ($type["tp_name"]); ?></option><?php endif; endforeach; endif; ?>
                        </select>
                    </div>
                </div>
                <input name="bk_atpid" type="hidden" value="<?php echo ($data["bk_atpid"]); ?>" class="form-control">
        </div>
        <div class="modal-footer">
            <button type="button" data-dismiss="modal" class="btn btn-default">关闭</button>
            <input id="sys_dlg_submit" class="btn btn-primary" type="submit" value="保存">
        </div>
        </form>
    </div>
</div>
<!--<div class="modal-backdrop fade in" style="z-index: -101;"></div>-->
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
        $(".chosen-select").chosen({disable_search_threshold: 10, search_contains: true,width:'100%'});
//        $('#sys_dlg_submit').on('click',submitdata);
//        function submitdata()
//        {
            var icon = "<i class='fa fa-times-circle'></i> ";
            $("#sys_dlg_form").validate({
                rules: {
//                    bk_code: "required",
                    bk_name: "required",
                    bk_author: {
                        required: true
                    },
                    bk_publish: {
                        required: true
                    },
                    bk_position: {
//                        required: true
                    },
                    bk_totalnum: {
                        required: true
                    },
                    bk_types: "required"
                },
                messages: {
                    bk_code: icon + "必填",
                    bk_name: icon + "必填",
                    bk_author: icon + "必填",
                    bk_publish: icon + "必填",
                    bk_position: icon + "必填",
                    bk_totalnum: icon + "必填",
                    bk_types: icon + "必填"
                },
                submitHandler: function(){
                    var f = $('#sys_dlg_form');
                    console.log(f.serialize());
                    $.post('/bms/index.php/Admin/Book/submitEdit', f.serialize(), function(result){
                        if('0' == result){
                            $("#sys_dlg").modal('hide');
                            $('#atpbiztable').bootstrapTable('refresh');
                        } else {
                            alert('保存失败' + result);
                        }
                    });
                }
            });

//            var f = $('#sys_dlg_form');
//            console.log(f.serialize());
//            $.post('/bms/index.php/Admin/Book/submit', f.serialize(), function(result){
//                if('0' == result){
//                    $('#atpbiztable').bootstrapTable('refresh')
//                } else {
//                    alert('保存失败' + result);
//                }
//            });
//        }

    });
</script>