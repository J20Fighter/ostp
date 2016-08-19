<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>摄影添加</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- basic styles -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

    <!--[if IE 7]>
    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
    <![endif]-->

    <!-- page specific plugin styles -->

    <!-- fonts -->

    <link rel="stylesheet" href="js/extra/css.css" />

    <!-- ace styles -->

    <link rel="stylesheet" href="assets/css/ace.min.css" />
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="assets/css/ace-skins.min.css" />

    <link rel="stylesheet" href="css/sport_zixun.css" />
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <script src="assets/js/ace-extra.min.js"></script>

    <script src="js/sport_zixun.js"></script>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="main-content" style="margin-left:0;margin-bottom:0;">
    <div class="breadcrumbs" id="breadcrumbs">
        <script type="text/javascript">
            try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
        </script>

        <ul class="breadcrumb">
            <li>
                <i class="icon-camera-retro"></i>
                <a href="#">摄影管理</a>
            </li>
            <li class="active">摄影添加</li>
        </ul><!-- .breadcrumb -->

    </div>

    <div class="page-content">
        <div class="page-header">
            <h1>
                摄影添加
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
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">一级类目</label>

                                        <div class="col-sm-8">
                                            <!--<input type="text" id="form-field-1" placeholder="Username" class="form-control">-->
                                            <select class="form-control">
                                                <option>大师精品</option>
                                                <option>每日推荐</option>
                                                <option>最新上传</option>
                                                <option>照片欣赏</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">二级类目</label>

                                        <div class="col-sm-8">
                                            <!--<input type="text" id="form-field-1" placeholder="Username" class="form-control">-->
                                            <select class="form-control">
                                                <option>攀岩</option>
                                                <option>潜水</option>
                                                <option>徒步</option>
                                                <option>骑马</option>
                                                <option>登山</option>
                                                <option>滑雪</option>
                                                <option>城市</option>
                                                <option>人物</option>
                                                <option>自然</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">照片参数</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1" placeholder="title" class="form-control" required="required" oninvalid="setCustomValidity('请输入照片参数')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">作品名称</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1" placeholder="title" class="form-control" required="required" oninvalid="setCustomValidity('请输入作品名称')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">作者</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1" placeholder="autor" class="form-control" required="required" oninvalid="setCustomValidity('请输入作者')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">作品来源</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1" placeholder="origin" class="form-control" required="required" oninvalid="setCustomValidity('请输入作品来源')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">昨日点赞数</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1" placeholder="title" class="form-control" required="required" oninvalid="setCustomValidity('请输入昨日点赞数')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">总点赞数</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1" placeholder="autor" class="form-control" required="required" oninvalid="setCustomValidity('请输入总点赞数')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">照片感悟</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1" placeholder="origin" class="form-control" required="required" oninvalid="setCustomValidity('请输入照片感悟')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">

                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">发布时间</label>

                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1" placeholder="yyyy-mm-dd" class="form-control" required="required" oninvalid="setCustomValidity('请输入发布时间')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">列表图片</label>

                                        <div class="col-sm-9">
                                            <input type="file" id="form-field-1" required="required" oninvalid="setCustomValidity('请选择相关图片')" oninput="setCustomValidity('')">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="form-group">
                                    <label class="col-xs-12 control-label no-padding-right" for="form-field-1">摄影内容</label>
                                    <div class="col-xs-12">
                                        <textarea class="form-control" name="financial.bz" id="form-field-1" style="margin: 0 auto;" required="required" oninvalid="setCustomValidity('请输入摄影内容')" oninput="setCustomValidity('')">摄影内容</textarea>
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