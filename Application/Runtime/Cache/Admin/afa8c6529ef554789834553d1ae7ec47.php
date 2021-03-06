<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>图书管理</title>
    <meta name="keywords" content="图书管理">
    <meta name="description" content="图书管理">

    <link href="/bms/Public/adminframework/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/animate.css" rel="stylesheet">
    <link href="/bms/Public/adminframework/css/style_atp.css?v=4.0.0" rel="stylesheet">
</head>
<body class="">
<div class="wrapper wrapper-content animated fadeIn">
    <div class="row" style="margin-top: -20px;">
        <div class="col-sm-12">
            <div class="panel blank-panel">
                <div class="panel-heading">
                    <div class="panel-options">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#tab-1">图书管理</a>
                            </li>
                            <li class=""><a data-toggle="tab" href="#tab-2">分类管理</a>
                            </li>
                            <li class=""><a data-toggle="tab" href="#tab-3">人员管理</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="panel-body">
                    <div class="tab-content" style="height: 100%;">
                        <div id="tab-1" class="tab-pane active">
                            <iframe width="100%" height="100%" src="<?php echo U('admin/book/book');?>" frameborder="0" scrolling="auto" seamless></iframe>
                        </div>

                        <div id="tab-2" class="tab-pane">
                            <iframe width="100%" height="100%" src="<?php echo U('admin/bookType/index');?>" frameborder="0" scrolling="auto" seamless></iframe>
                        </div>
                        <div id="tab-3" class="tab-pane">
                            <iframe width="100%" height="100%" src="<?php echo U('admin/admin/index');?>" frameborder="0" scrolling="auto" seamless></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 全局js -->
<script src="/bms/Public/adminframework/js/jquery.min.js?v=2.1.4"></script>
<script src="/bms/Public/adminframework/js/bootstrap.min.js?v=3.3.5"></script>
<script>

    function setHeight(height, index){
        $('iframe')[index].height = height + 50;
    }

    $('.nav-tabs li').on('click', function(){
        var href = $(this).find('a').first().attr('href');
        var id = href.substr(1);
        var iframe = $("div[id='" + id + "']").find('iframe').first();
        var src = iframe.attr('src');
        iframe.attr('src', src).load(function(){
//            var mainHeight = $(this).contents().find('body').height();
//            alert(mainHeight);
//            $(this).height(mainHeight);
        });
    });

</script>
</body>
</html>