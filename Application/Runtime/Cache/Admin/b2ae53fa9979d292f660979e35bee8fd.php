<?php if (!defined('THINK_PATH')) exit();?>﻿<div class="modal-dialog" style="width: 600px;max-height:600px;overflow-y:auto;z-index: 10;">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" data-dismiss="modal" class="close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">查看书评</h4>
        </div>
        <div class="modal-body" style="max-height: 600px;overflow-y: auto">
            <?php if(empty($comments)): ?>暂无评论
            <?php else: ?>
                <?php if(is_array($comments)): foreach($comments as $key=>$comment): ?><p style="color: grey;font-size: 12px">评论人：<?php echo ($comment["emp_name"]); ?>&nbsp;&nbsp;&nbsp;&nbsp;评论时间：<?php echo ($comment["cm_atplastmodifydatetime"]); ?></p>
                    <p style="word-break: break-all"><?php echo ($comment["cm_content"]); ?></p>
                    <hr><?php endforeach; endif; endif; ?>
        </div>
        <div class="modal-footer">
            <button type="button" data-dismiss="modal" class="btn btn-primary">关闭</button>
        </div>
    </div>
</div>