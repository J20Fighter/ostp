<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>位置添加</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- basic styles -->
    <link href="resources/Sports/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="resources/Sports/assets/css/font-awesome.min.css" />

    <!--[if IE 7]>
    <link rel="stylesheet" href="resources/Sports/assets/css/font-awesome-ie7.min.css" />
    <![endif]-->

    <!-- page specific plugin styles -->

    <!-- fonts -->

    <link rel="stylesheet" href="resources/Sports/js/extra/css.css" />

    <!-- ace styles -->

    <link rel="stylesheet" href="resources/Sports/assets/css/ace.min.css" />
    <link rel="stylesheet" href="resources/Sports/assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="resources/Sports/assets/css/ace-skins.min.css" />

    <link rel="stylesheet" href="resources/Sports/css/sport_zixun.css" />
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="resources/Sports/assets/css/ace-ie.min.css" />
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <script src="resources/Sports/assets/js/ace-extra.min.js"></script>

    <script src="resources/Sports/js/sport_zixun.js"></script>
    <script type="text/javascript" src="resources/Sports/ckeditor/ckeditor.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="resources/Sports/assets/js/html5shiv.js"></script>
    <script src="resources/Sports/assets/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--将这一部分1转化成ifream-->
<div class="main-content"  style="margin-left:0;margin-bottom:0;">
    <div class="breadcrumbs" id="breadcrumbs">
        <script type="text/javascript">
            try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
        </script>

        <ul class="breadcrumb">
            <li>
                <i class="icon-download"></i>
                <a href="#">位置管理</a>
            </li>
            <li class="active">位置添加</li>
        </ul><!-- .breadcrumb -->

    </div>

    <div class="page-content">
        <div class="page-header">
            <h1>
                位置添加
                <small>
                    <i class="icon-double-angle-right"></i>
                    查看
                </small>
            </h1>
        </div><!-- /.page-header -->

        <div class="row">
            <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->

                <!--<div class="alert alert-block alert-success">
                    <button type="button" class="close" data-dismiss="alert">
                        <i class="icon-remove"></i>
                    </button>

                    <i class="icon-ok green"></i>

                    欢迎进入
                    <strong class="green">
                        OSTP后台管理系统
                        <small>(v1.0)</small>
                    </strong>
                </div>-->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->

                        <form>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">适宜去的时间</label>

                                        <div class="col-sm-8">
                                            <input type="text" id="form-field-1" placeholder="yyyy-mm-dd" class="form-control" required="required" oninvalid="setCustomValidity('请输入适宜去的时间')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">运动类型</label>

                                        <div class="col-sm-8">
                                            <!--<input type="text" id="form-field-1" placeholder="Username" class="form-control">-->
                                            <select class="form-control">
                                                <option>攀岩</option>
                                                <option>潜水</option>
                                                <option>徒步</option>
                                                <option>骑马</option>
                                                <option>登山</option>
                                                <option>滑雪</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">位置类型</label>

                                        <div class="col-sm-8">
                                            <!--<input type="text" id="form-field-1" placeholder="Username" class="form-control">-->
                                            <select class="form-control">
                                                <option>住宿</option>
                                                <option>餐饮</option>
                                                <option>火车站</option>
                                                <option>机场</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">位置名称</label>

                                        <div class="col-sm-8">
                                            <input type="text" id="form-field-1" placeholder="title" class="form-control" required="required" oninvalid="setCustomValidity('请输入位置名称')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">位置详细介绍</label>

                                        <div class="col-sm-8">
                                            <input type="text" id="form-field-1" placeholder="introduce" class="form-control" required="required" oninvalid="setCustomValidity('请输入位置详细介绍')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">位置坐标</label>

                                        <div class="col-sm-8">
                                            <input type="text" id="form-field-1" placeholder="origin" class="form-control" required="required" oninvalid="setCustomValidity('请输入位置坐标')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">列表图片</label>

                                        <div class="col-sm-8">
                                            <input type="file" id="form-field-1" required="required" oninvalid="setCustomValidity('请选择相关图片')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="form-group">
                                    <label class="col-xs-12 control-label no-padding-right" for="form-field-1">位置内容</label>
                                    <div class="col-xs-12">
                                        <textarea class="form-control" name="financial.bz" id="form-field-1" style="margin: 0 auto;" required="required" oninvalid="setCustomValidity('请输入资讯内容')" oninput="setCustomValidity('')">位置内容</textarea>
                                        <p class="help-block text-danger"></p>
                                        <script type="text/javascript">CKEDITOR.replace("financial.bz");</script>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="form-actions">
                                    <div class="col-sm-offset-5 col-md-3">
                                        <button class="btn btn-primary" type="submit">
                                            <i class="icon-ok bigger-110"></i>
                                            查询
                                        </button>

                                        &nbsp; &nbsp; &nbsp;
                                        <button class="btn btn-info" type="reset">
                                            <i class="icon-undo bigger-110"></i>
                                            重置
                                        </button>
                                    </div>
                                </div>
                            </div>

                        </form>

                    </div><!-- /.col -->
                </div><!-- /.row -->

                <!-- PAGE CONTENT ENDS -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.page-content -->
</div><!-- /.main-content -->
</body>
</html>