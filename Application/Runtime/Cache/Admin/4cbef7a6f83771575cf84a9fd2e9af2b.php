<?php if (!defined('THINK_PATH')) exit();?>﻿<div class="modal-dialog" style="width: 600px;z-index: 10;">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" data-dismiss="modal" class="close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">图书导入</h4>
        </div>
        <div class="modal-body">
            <form id="sys_dlg_form" role="form" class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">选择：</label>
                    <div class="col-sm-6">
                        <input name="updataexcel2007" type="file"  class="form-control file-pretty">
                    </div>
                    <label  class="col-sm-3 control-label"><a href="/bkmg/src/bms/Public/tpl/imptpl.xlsx">点击下载模板</a></label>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" data-dismiss="modal" class="btn btn-default">关闭</button>
            <button type="button" data-dismiss="modal" id="sys_dlg_submit" class="btn btn-primary">导入</button>
        </div>
    </div>
</div>