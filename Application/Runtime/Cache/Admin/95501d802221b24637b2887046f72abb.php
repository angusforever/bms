<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link href="/bms/Public/vendor/bootstrap-table/bootstrap/css/bootstrap.min.css" rel="stylesheet" >
    <link href="/bms/Public/adminframework/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/plugins/chosen/chosen.css" rel="stylesheet">
    <link href="/bms/Public/vendor/bootstrap-table/bootstrap-table/src/bootstrap-table.css" rel="stylesheet" >
    <link href="/bms/Public/adminframework/css/animate.css" rel="stylesheet">
    <!--<link href="/bms/Public/adminframework/css/style_atp.css?v=4.0.0" rel="stylesheet">-->
    <base target="_blank">
</head>

<body class="">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <div class="ibox-content">
            <div class="row row-lg">
                <div class="col-sm-12">
                    <div id="atpbiztoolbar">
                        <button class="btn btn-info " type="button" id="sys_add"><i class="fa fa-pencil"></i>&nbsp;添加</button>
                        <button class="btn btn-warning " type="button" id="sys_import"><i class="fa fa-pencil-square"></i>&nbsp;导入</button>
                        <!--<button class="btn btn-danger " type="button" id="sys_del"><i class="fa fa-eraser"></i>&nbsp;删除</button>-->
                    </div>

                    <table id="atpbiztable"></table>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="sys_dlg" role="dialog" class="modal fade "></div>



<script src="/bms/Public/vendor/bootstrap-table/jquery.min.js"></script>
<script src="/bms/Public/vendor/bootstrap-table/bootstrap/js/bootstrap.min.js"></script>
<script src="/bms/Public/adminframework/js/plugins/chosen/chosen.jquery.js"></script>
<script src="/bms/Public/adminframework/js/plugins/validate/jquery.validate.min.js"></script>
<script src="/bms/Public/vendor/bootstrap-table/bootstrap-table/src/bootstrap-table.js"></script>
<script src="/bms/Public/vendor/bootstrap-table/bootstrap-table/src/locale/bootstrap-table-zh-CN.js"></script>

<script>
    $(function () {
        $('#atpbiztable').bootstrapTable({
            url: '/bms/index.php/Admin/Book/getData',         //请求后台的URL（*）
            method: 'post',                      //请求方式（*）
            toolbar: '#atpbiztoolbar',                //工具按钮用哪个容器
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
            search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
//            strictSearch: true,
            showColumns: true,                  //是否显示所有的列
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
//            height: 600,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "bk_atpid",                     //每一行的唯一标识，一般为主键列
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
                    {field: 'bk_name', title: '书名', sortable: true,width:250},
                    {field: 'bk_author', title: '作者', sortable: true,width:200, visible:true},
                    {field: 'bk_publish', title: '出版社', sortable: true,width:200, visible:true},
//                    {field: 'bk_totalnum', title: '总数量', sortable: true,width:50, visible:true},
                    {field: 'bk_curnum', title: '库存', sortable: true,width:50, visible:true},
                    {field: 'bk_atpid', title: '操作', sortable: false,width:150,
                        formatter: function (value, row, index) {
                            var inp = "'"+  value +"'";
                            var a = '<a  class="btn btn-info btn-xs" onclick="updateInRow('+ inp +')">编辑</a>&nbsp;';
                            a += '<a  class="btn btn-danger btn-xs" onclick="delInRow('+ inp +')">删除</a>';
                            return a;
                        }
                    },
                    {field: 'emp_atpcreatedatetime', title: '创建时间', sortable: true, visible:false},
                    {field: 'emp_atpcreateuser', title: '创建人', sortable: true, visible:false},
                    {field: 'emp_atplastmodifydatetime', title: '最后修改时间', sortable: true, visible:false},
                    {field: 'emp_atplastmodifyuser', title: '最后修改人', sortable: true, visible:false},
                ]
            ],
            onDblClickRow: function (row) {
                $("#sys_dlg").load('/bms/index.php/Admin/Book/edit?id=' + row['bk_atpid'], function() {
//                    $('#sys_dlg_submit').on('click',submitdata);
                    $("#sys_dlg").modal({backdrop: false});
                });
            },
            onSort: function (name, order) {
//                console.log(name+order);
            },
            onPostBody: function(){
                window.parent.setHeight($('body').height() + 50, 0);
            }
        });

//        $(document).on('resize',function(){
//            alert(1);
//        })
    });

    //    $(document).ready(function(){
    //        window.parent.setHeight($('body').height());
    //    });

    function queryParams(params) {  //配置参数
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   //页面大小
            offset: params.offset,  //页码
            search: params.search,
            sort: params.sort,  //排序列名
            sortOrder: params.order//排位命令（desc，asc）
        };
        return temp;
    }


    $('#sys_add').on('click',function(){
        $("#sys_dlg").load('/bms/index.php/Admin/Book/add', function() {
//            $('#sys_dlg_submit').on('click', submitdata);
            $("#sys_dlg").modal({backdrop: false});
        });
    });

    $('#sys_update').on('click',function() {
        var tablerow = $('#atpbiztable').bootstrapTable('getSelections');
        if(tablerow.length!=1)
        {
            alert("您已多选或者少选，仅能对一条数据进行操作");
        }
        else {
            $("#sys_dlg").load('/bms/index.php/Admin/Book/edit?id=' + tablerow[0]['bk_atpid'], function() {
//                $('#sys_dlg_submit').on('click',submitdata);
                $("#sys_dlg").modal({backdrop: false});
            });
        }
    });

    function updateInRow(id)
    {
        $("#sys_dlg").load('/bms/index.php/Admin/Book/edit?id=' + id, function() {
//            $('#sys_dlg_submit').on('click',submitdata);
            $("#sys_dlg").modal({backdrop: false});
        });
    }

    function delInRow(id)
    {
        if (confirm('确认删除数据?')) {
            var ids = [];
            ids.push(id);
            $.post('/bms/index.php/Admin/Book/del', {ids: ids.join(',')}, function (rep, status) {
                if ('0' == rep) {
                    $('#atpbiztable').bootstrapTable('refresh')
                } else if('-1' == rep){
                    alert('该书目前有被借出，不能删除');
                } else {
                    alert('删除失败');
                }
            });
        }
    }

    $('#sys_del').on('click',function() {
        var tablerow = $('#atpbiztable').bootstrapTable('getSelections');
        if (tablerow.length == 0) {
            alert("您尚未选择数据");
        }
        else {
            if (confirm('确认删除' + tablerow.length + '条数据?')) {
                var ids = [];
                $.each(tablerow, function () {
                    ids.push(this['emp_atpid']);
                });
                $.post('/bms/index.php/Admin/Book/del', {ids: ids.join(',')}, function (rep, status) {
                    if ('' == rep) {
                        $('#atpbiztable').bootstrapTable('refresh')
                    }
                    else {
                        alert('删除失败' + "可能是因为数据存在关联无法删除<br>错误详情：" + rep);
                    }
                });
            }
        }
    });

    $('#sys_import').on('click',function(){
        $("#sys_dlg").load('/bms/index.php/Admin/Book/imp', function() {
            $('#sys_dlg_submit').on('click', submitimp2);
            $("#sys_dlg").modal({backdrop: false});
        });
    });

    function submitimp2()
    {
        $("#sys_dlg_form").submit(function(e)
        {
            var formObj = $(this);
            var formURL = formObj.attr("action");
            var formData = new FormData(this);
            $.ajax({
                url: '/bms/index.php/Admin/Book/submitImport',
                type: 'POST',
                data:  formData,
                mimeType:"multipart/form-data",
                contentType: false,
                cache: false,
                processData:false,
                success: function(data, textStatus, jqXHR)
                {
                    alert(data);
//                    $('#atpbiztable').bootstrapTable('refresh')
                },
                error: function(jqXHR, textStatus, errorThrown)
                {
//                    $('#atpbiztable').bootstrapTable('refresh')
                }
            });
            e.preventDefault();
        });
        $("#sys_dlg_form").submit();
    }

</script>
</body>

</html>