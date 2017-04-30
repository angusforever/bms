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
    <link href="/bms/Public/adminframework/css/plugins/chosen/chosen.css" rel="stylesheet">
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
    <div class="row" style="margin-top: 5px;margin-bottom:0px">
        <div class="col-sm-11">
            <div class="col-sm-4 pull-right">
                <div class="form-group">
                    <div class="input-group">
                        <label class="form-label" style="color: darkred">借阅人&nbsp;&nbsp;&nbsp;&nbsp;</label>
                        <select id="borrowUser" data-placeholder="请选择借阅人" class="chosen-select form-control" style="width:200px;" tabindex="2">
                            <option value="">请选择</option>
                            <?php if(is_array($users)): foreach($users as $key=>$user): ?><option value="<?php echo ($user["emp_atpid"]); ?>" hassubinfo="true"><?php echo ($user["emp_name"]); ?></option><?php endforeach; endif; ?>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-1">
            <button class="btn btn-danger pull-right" id="borrow">全部借阅</button>
        </div>
    </div>
    <span style="font-family: '微软雅黑';color: darkred;">借书列表</span>
    <div class="hr-line-solid" style="margin-top: 0;color: lightgray;"></div>
    <table class="table table-striped table-bordered compact" cellspacing="0" width="100%">
        <thead>
        <tr>
            <th style="width: 100px">编号</th>
            <th>书名</th>
            <th>作者</th>
            <th>出版社</th>
            <!--<th style="width: 100px">类别</th>-->
            <!--<th style="width: 50px">库存</th>-->
            <th style="width: 150px">架位</th>
            <th style="width: 60px">操作</th>
        </tr>
        </thead>
        <tbody id="list">

        </tbody>
    </table>

</div>

<!-- 全局js -->
<script src="/bms/Public/adminframework/js/jquery.min.js?v=2.1.4"></script>
<script src="/bms/Public/adminframework/js/bootstrap.min.js?v=3.3.5"></script>
<script src="/bms/Public/adminframework/js/plugins/chosen/chosen.jquery.js"></script>
<script src="/bms/Public/adminframework/js/plugins/toastr/toastr.min.js"></script>

<script>
    $(document).ready(function(){
        $(document).on('keydown', function(event){
            if(event.keyCode == 13){
                $('#search').click();
            }
        });
        var config = {
            '.chosen-select': {},
            '.chosen-select-deselect': {
                allow_single_deselect: true
            },
            '.chosen-select-no-single': {
                disable_search_threshold: 10
            },
            '.chosen-select-no-results': {
                no_results_text: '没有找到数据'
            },
            '.chosen-select-width': {
                width: "95%"
            }
        }
        for (var selector in config) {
            $(selector).chosen(config[selector]);
        }

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
        var borrowArr = new Array();
        $('#search').on('click', function(){
            var sn = $('#SN').val();
            if(sn == ''){
                toastr.error('请输入图书编号');
            } else {
                $.post('/bms/index.php/Admin/Borrow/search', {sn : sn}, function(result){
                    if(result){
                        if(borrowArr[result['bk_atpid']] == undefined){
                            borrowArr[result['bk_atpid']] = 0;
                        }
                        if(result['bk_curnum'] - borrowArr[result['bk_atpid']] == 0){
                            toastr.error('您搜索的图书已被借光，请选择其他图书');
                        } else {
                            var str = '';
                            str += '<tr>';
                            str += '<td>' + result['bk_code'] + '</td>';
                            str += '<td>' + result['bk_name'] + '</td>';
                            str += '<td>' + result['bk_author'] + '</td>';
                            str += '<td>' + result['bk_publish'] + '</td>';
//                            str += '<td>' + result['bk_publish'] + '</td>';
//                            str += '<td>' + result['bk_curnum'] + '</td>';
                            str += '<td>' + result['bk_position'] + '</td>';
                            str += '<td><a id="' + result['bk_atpid'] + '" class="del btn btn-sm btn-danger">删除</a></td>';
                            $('#list').append(str);
                            if(borrowArr[result['bk_atpid']] == undefined){
                                borrowArr[result['bk_atpid']] = 1;
                            } else {
                                borrowArr[result['bk_atpid']] += 1;
                            }

                            $('.del').on('click', function(){
                                var id = $(this).attr('id');
                                borrowArr[id] -= 1;
                                $(this).parent().parent().remove();
                            });
                        }
                    } else {
                        toastr.error('您搜索的图书不存在，请重新输入图书编号');
                    }
                });
            }
        });
        $('#borrow').on('click', function(){
            var borrowUser = $('#borrowUser').val();
            if (borrowUser == '') {
                toastr.error('请选择借阅人');
            } else {
                if(confirm('是否全部借出以下图书？')) {
                    $.post('/bms/index.php/Admin/Borrow/borrow', getData(), function (result) {
                        if ('0' == result) {
                            toastr.success('借阅成功');
                            borrowArr = new Array();
                            $('#list').empty();
                        } else {
                            toastr.error('借阅失败,错误码为：' + result);
                        }
                    });
                } else {

                }
            }
        });

        //构造JSON格式数据
        function getData(){
            var data = {};
            data.borrowUser = $('#borrowUser').val();
            var d = [];
            for(var index in borrowArr){
                var tmp = {};
                tmp.sn = index;
                tmp.num = borrowArr[index];
                d.push(tmp);
            }
            data.d = d;

            return data;
        }
    });
</script>
</body>
</html>