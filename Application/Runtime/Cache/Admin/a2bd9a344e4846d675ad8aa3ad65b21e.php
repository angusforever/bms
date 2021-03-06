<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>搜索</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="/bms/Public/adminframework/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/animate.css" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/style_atp.css?v=4.0.0" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/plugins/toastr/toastr.min.css" rel="stylesheet">
</head>

<body class="">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div class="search-form" style="margin-top: -10px;padding: 0">
                <div class="input-group">
                    <input type="text" placeholder="请输入图书编号" id="SN" class="form-control input-lg">
                    <div class="input-group-btn">
                        <button id="search" class="btn btn-lg btn-primary">搜索</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 5px;">
        <div class="col-sm-12">
            <button class="btn btn-danger pull-right" id="return">全部归还</button>
        </div>
    </div>
    <span style="font-family: '微软雅黑';color: darkred;">还书列表</span>
    <div class="hr-line-solid" style="margin-top: 0;color: lightgray;"></div>
    <table class="table table-striped table-bordered compact" cellspacing="0" width="100%">
        <thead>
        <tr>
            <th style="width: 100px">编号</th>
            <th>书名</th>
            <th>作者</th>
            <th>出版社</th>
            <!--<th style="width: 200px">类别</th>-->
            <th style="width: 80px">借阅人</th>
            <th style="width: 60px">操作</th>
        </tr>
        </thead>
        <tbody id="list">

        </tbody>
    </table>
</div>

<div id="sys_dlg" role="dialog" class="modal fade ">
    <div class="modal-dialog" style="width: 800px;z-index: 10;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" data-dismiss="modal" class="close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">请选择</h4>
            </div>
            <div class="modal-body">
                <form id="sys_dlg_form" role="form" class="form-horizontal">
                    <table class="table table-striped table-bordered compact" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th style="width: 20px"></th>
                            <th style="width: 100px">编号</th>
                            <th>书名</th>
                            <th>作者</th>
                            <th>出版社</th>
                            <!--<th style="width: 200px">类别</th>-->
                            <th style="width: 80px">借阅人</th>
                            <th style="width: 150px">借阅时间</th>
                        </tr>
                        </thead>
                        <tbody id="list2">

                        </tbody>
                    </table>
                    <input id="br_atpid" type="hidden" class="form-control">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn btn-default">关闭</button>
                <button type="button" data-dismiss="modal" id="sys_dlg_submit" class="btn btn-primary">选择</button>
            </div>
        </div>
    </div>
</div>

<!-- 全局js -->
<script src="/bms/Public/adminframework/js/jquery.min.js?v=2.1.4"></script>
<script src="/bms/Public/adminframework/js/bootstrap.min.js?v=3.3.5"></script>
<script src="/bms/Public/adminframework/js/plugins/toastr/toastr.min.js"></script>

<script>
    $(document).ready(function(){
        $(document).on('keydown', function(event){
            if(event.keyCode == 13){
                $('#search').click();
            }
        });
        toastr.options = {
            "closeButton": true,
            "debug": false,
            "progressBar": false,
            "positionClass": "toast-top-center",
            "onclick": null,
            "showDuration": "400",
            "hideDuration": "1000",
            "timeOut": "3000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        };
        var returnArr = new Array();
        $('#search').on('click', function(){
            var sn = $('#SN').val();
            if(sn == ''){
                toastr.error('请输入图书编号');
            } else {
                $.post('/bms/index.php/Admin/Return/search', {sn : sn}, function(result){
                    if(result){
                        if(result.length == 1) {
                            if (returnArr[result[0]['br_atpid']] == undefined) {
                                var str = '';
                                str += '<tr>';
                                str += '<td>' + result[0]['bk_code'] + '</td>';
                                str += '<td>' + result[0]['bk_name'] + '</td>';
                                str += '<td>' + result[0]['bk_author'] + '</td>';
                                str += '<td>' + result[0]['bk_publish'] + '</td>';
//                                str += '<td>' + result[0]['bk_publish'] + '</td>';
                                str += '<td>' + result[0]['emp_name'] + '</td>';
                                str += '<td><a id="' + result[0]['br_atpid'] + '" class="del btn btn-sm btn-danger">删除</a></td>';
                                $('#list').append(str);
                                returnArr[result[0]['br_atpid']] = 1;

                                $('.del').on('click', function () {
                                    var id = $(this).attr('id');
                                    returnArr[id] = undefined;
                                    $(this).parent().parent().remove();
                                });
                            } else {
                                toastr.error('该图书已在还书列表中');
                            }
                        } else {
                            $('#list2').empty();
                            for(var i = 0, len = result.length; i < len; i++){
                                var str = '';
                                str += '<tr>';
                                str += '<td><input type="radio" name="br_atpid" value="' + i + '"></td>'
                                str += '<td>' + result[i]['bk_code'] + '</td>';
                                str += '<td>' + result[i]['bk_name'] + '</td>';
                                str += '<td>' + result[i]['bk_author'] + '</td>';
                                str += '<td>' + result[i]['bk_publish'] + '</td>';
//                                str += '<td>' + result[0]['bk_publish'] + '</td>';
                                str += '<td>' + result[i]['emp_name'] + '</td>';
                                str += '<td>' + result[i]['br_brtime'] + '</td>';
                                $('#list2').append(str);
                            }
                            $('#sys_dlg_submit').on('click', function(){
                                var idx = $("#list2 input:radio[name='br_atpid']:checked").val();
                                if (returnArr[result[idx]['br_atpid']] == undefined) {
                                    var str = '';
                                    str += '<tr>';
                                    str += '<td>' + result[idx]['bk_code'] + '</td>';
                                    str += '<td>' + result[idx]['bk_name'] + '</td>';
                                    str += '<td>' + result[idx]['bk_author'] + '</td>';
                                    str += '<td>' + result[idx]['bk_publish'] + '</td>';
//                                str += '<td>' + result[0]['bk_publish'] + '</td>';
                                    str += '<td>' + result[idx]['emp_name'] + '</td>';
                                    str += '<td><a id="' + result[idx]['br_atpid'] + '" class="del btn btn-sm btn-danger">删除</a></td>';
                                    $('#list').append(str);
                                    returnArr[result[idx]['br_atpid']] = 1;

                                    $('#sys_dlg_submit').unbind('click');

                                    $('.del').on('click', function () {
                                        var id = $(this).attr('id');
                                        returnArr[id] = undefined;
                                        $(this).parent().parent().remove();
                                    });
                                } else {
//                                    toastr.error('该图书已在还书列表中');
                                }
                            });
                            $("#sys_dlg").modal({backdrop: false});
                            console.log(returnArr);
                        }
                    } else {
                        toastr.error('您搜索的图书不存在借阅记录，请重新输入图书编号');
                    }
                });
            }
        });
        $('#return').on('click', function(){
            if(confirm('您确定要归还以下图书？')) {
                $.post('/bms/index.php/Admin/Return/returnBook', getData(), function (result) {
                    if ('0' == result) {
                        toastr.success('归还成功');
                        $('#SN').val('');
                        $('#list').empty();
                    } else {
                        toastr.error('归还失败,错误码为：' + result);
                    }
                });
            } else {

            }
        });

        //构造JSON格式数据
        function getData(){
            var data = {};
            var d = [];
            for(var index in returnArr){
                if(returnArr[index] != undefined) {
                    var tmp = {};
                    tmp.id = index;
                    d.push(tmp);
                }
            }
            data.d = d;

            return data;
        }
    });
</script>
</body>
</html>