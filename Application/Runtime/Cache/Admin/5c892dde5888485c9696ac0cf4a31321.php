<?php if (!defined('THINK_PATH')) exit();?>﻿<div class="modal-dialog" style="width: 600px;z-index: 10;">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" data-dismiss="modal" class="close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">编辑书评</h4>
        </div>
        <div class="modal-body">
            <form id="sys_dlg_form" role="form" class="form-horizontal">
                <div class="form-group">
                    <div class="col-sm-12">
                        <textarea name="cm_content" rows="6" value="<?php echo ($data["cm_content"]); ?>" class="form-control"><?php echo ($data["cm_content"]); ?></textarea>
                    </div>
                </div>
                <input name="br_atpid" type="hidden" value="<?php echo ($data["br_atpid"]); ?>" class="form-control">
                <input name="br_bkid" type="hidden" value="<?php echo ($data["br_bkid"]); ?>" class="form-control">
                <input name="br_empid" type="hidden" value="<?php echo ($data["br_empid"]); ?>" class="form-control">
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" data-dismiss="modal" class="btn btn-default">关闭</button>
            <button type="button" data-dismiss="modal" id="sys_dlg_submit" class="btn btn-primary">保存</button>
        </div>
    </div>
</div>
<!--<div class="modal-backdrop fade in" style="z-index: -101;"></div>-->
<script>
    $(function () {
        $('#sys_dlg_submit').on('click',submitdata);
        function submitdata()
        {
            var f = $('#sys_dlg_form');
//            console.log(f.serialize());
            $.post('/bms/index.php/Admin/History/saveComment', f.serialize(), function(result){
                if('0' == result){
//                    $('#atpbiztable').bootstrapTable('refresh')
                    toastr.success('评论成功');
                } else {
//                    alert('保存失败' + result);
                    toastr.error('评论失败');
                }
            });
        }

    });
</script>