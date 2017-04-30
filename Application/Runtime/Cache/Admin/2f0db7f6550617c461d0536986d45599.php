<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>搜索图书</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="/bms/Public/adminframework/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/animate.css" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/style_atp.css?v=4.0.0" rel="stylesheet">
    <link href="/bms/Public/vendor/bootstrap-table/bootstrap-table/src/bootstrap-table.css" rel="stylesheet" >
</head>

<body class="">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div class="search-form" style="margin-top: -10px;padding: 0">
                <div class="input-group">
                    <input type="text" placeholder="编号/书名/作者/出版社" id="search" class="form-control input-lg">
                    <div class="input-group-btn">
                        <button class="btn btn-lg btn-primary" id="submit">搜索</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div id="types" style="width: 50%; margin: 0px auto;text-align: center">
            <div class="col-xs-3" style="text-align: left">
                <label><input class="all" type="checkbox" name="type" value="" checked>&nbsp;全部</label>
            </div>
            <?php if(is_array($types)): foreach($types as $key=>$type): ?><div class="col-xs-3" style="text-align: left">
                <label><input class="one" type="checkbox" name="type" value="<?php echo ($type["tp_name"]); ?>">&nbsp;<?php echo ($type["tp_name"]); ?></label>
                </div><?php endforeach; endif; ?>
        </div>
    </div>
    <div class="hr-line-dashed" style="margin: 1px;padding: 0"></div>
    <div class="row" style="margin-top: 0;padding-top: 0">

        <table id="atpbiztable"></table>

    </div>
</div>

<div id="sys_dlg" role="dialog" class="modal fade "></div>

<!-- 全局js -->
<script src="/bms/Public/adminframework/js/jquery.min.js?v=2.1.4"></script>
<script src="/bms/Public/adminframework/js/bootstrap.min.js?v=3.3.5"></script>
<script src="/bms/Public/vendor/bootstrap-table/bootstrap-table/src/bootstrap-table.js"></script>
<script src="/bms/Public/vendor/bootstrap-table/bootstrap-table/src/locale/bootstrap-table-zh-CN.js"></script>
<script>
    $(function () {
        $('#atpbiztable').bootstrapTable({
            url: "/bms/index.php/Admin/Search/getData",         //请求后台的URL（*）
            method: 'post',                      //请求方式（*）
            toolbar: '',                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            iconSize: 'outline',
            sortable: true,                     //是否启用排序
            sortName:"bk_code",
            sortOrder: "asc",                   //排序方式
            queryParams: queryParams,//传递参数（*）
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                       //初始化加载第一页，默认第一页
            pageSize: 10,                       //每页的记录行数（*）
            pageList: [5,10, 25, 50, 100],        //可供选择的每页的行数（*）
            search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
//            strictSearch: true,
            showColumns: false,                  //是否显示所有的列
            showRefresh: false,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
//            height: 600,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "bk_code",                     //每一行的唯一标识，一般为主键列
//            showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
//            cardView: true,                    //是否显示详细视图
            detailView: false,                   //是否显示父子表
            detailFormatter: "detailFormatter",
            columns: [
                [
//                    {checkbox: true},
                    {title: '序号', width: 40,
                        formatter: function (value, row, index)
                        {
                            var option =  $('#atpbiztable').bootstrapTable("getOptions");
                            return option.pageSize * (option.pageNumber - 1) + index + 1;
                        }
                    },
                    {field: 'bk_code', title: '编号', sortable: true,width:100},
                    {field: 'bk_name', title: '书名', sortable: true,width:200},
                    {field: 'bk_author', title: '作者', sortable: true,width:80, visible:true},
                    {field: 'bk_publish', title: '出版社', sortable: true,width:150, visible:true},
                    {field: 'tp_name', title: '分类', sortable: true,width:80, visible:true},
                    {field: 'bk_totalnum', title: '总数', sortable: true,width:50, visible:true},
                    {field: 'bk_curnum', title: '库存', sortable: true,width:50, visible:true},
                    {field: 'br_person', title: '借阅人', sortable: true,width:100, visible:true},
                    {field: 'bk_name', title: '书评', sortable: false,width:50,
                        formatter: function (value, row, index) {
                            var inp = "'"+  value +"'";
                            var a = '<a class="btn btn-info btn-xs" onclick="lookComment('+ inp +')">查看</a>';
                            return a;
                        }
                    },

                ]
            ],
            onSort: function (name, order) {
//                console.log(name+order);
            },
//            onPostBody: function(){
//                window.parent.setHeight($('body').height() + 50, 2);
//            }
        });
    });

    function queryParams(params) {  //配置参数
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   //页面大小
            offset: params.offset,  //页码
            search: $('#search').val().trim(),
            types: (function(){
                var types = "('";
                $.each($("#types input:checkbox[name='type']:checked"), function(){
                    var type = $(this).val();
                    if(type != ''){
                        types += type + "','";
                    } else {
                        types = "";
                    }
                });
                if(types != '')
                    types += "')";
//                console.log(types);
                return types;
            })(),
            sort: params.sort,  //排序列名
            sortOrder: params.order//排位命令（desc，asc）
        };
        console.log(temp);
        return temp;
    }

    $('.one').on('change', function(){
        $('.all').removeAttr('checked');
    });

    $('.all').on('click', function () {
        $('.one').removeAttr('checked');
    });

    $('#submit').on('click', function(){
        $('#atpbiztable').bootstrapTable('refresh');
    });

    function lookComment(id)
    {
        $("#sys_dlg").load('/bms/index.php/Admin/Search/lookComment?name=' + id, function() {
//            $('#sys_dlg_submit').on('click',submitdata);
            $("#sys_dlg").modal();
        });
    }
</script>
</body>
</html>