<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title>资讯</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->
		<link href="resources/Sports/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="resources/Sports/assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!-- ace styles -->

		<link rel="stylesheet" href="resources/Sports/assets/css/ace.min.css" />
		<link rel="stylesheet" href="resources/Sports/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="resources/Sports/assets/css/ace-skins.min.css" />

		<link rel="stylesheet" href="resources/Sports/css/sport_zixun.css" />
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="resources/Sports/assets/js/ace-extra.min.js"></script>
		
		<script src="resources/Sports/js/sport_zixun.js"></script>
		<script type="text/javascript" src="resources/Sports/ckeditor/ckeditor.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
				<!--将这一部分1转化成ifream-->
				<div class="main-content" style="margin-left: 0px;margin-bottom: 0px;">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-dashboard"></i>
								<a href="#">资讯管理</a>
							</li>
							<li class="active">资讯添加</li>
						</ul><!-- .breadcrumb -->
						
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								资讯添加
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
										
										<form action="info_add" method="POST">
											<div class="row">
												<div class="col-sm-4">
													<!--添加下拉菜单-->
													<div class="form-group">
														<label class="col-sm-4 control-label no-padding-right" for="form-field-1">户外运动类型</label>
				
														<div class="col-sm-8">
															<!--<input type="text" id="form-field-1" placeholder="Username" class="form-control">-->
															<select class="form-control" name="sporttypeid">
																<option value="1">攀岩</option>
																<option value="2">潜水</option>
																<option value="3">徒步</option>
																<option value="4">骑马</option>
																<option value="5">登山</option>
																<option value="6">滑雪</option>
															</select>
														</div>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label class="col-sm-4 control-label no-padding-right" for="form-field-1">一级类目</label>
				
														<div class="col-sm-8">
															<!--<input type="text" id="form-field-1" placeholder="Username" class="form-control">-->
															<select class="form-control" id="first_select" name="firstlevelinfotypeid">
																<option value="1">户外知识</option>
																<option value="2">装备资讯</option>
																<option value="3">专题活动</option>
																<option value="4">赛事新闻</option>
																<option value="5">专栏专访</option>
															</select>
														</div>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label class="col-sm-4 control-label no-padding-right" for="form-field-1">二级类目</label>
				
														<div class="col-sm-8" id="second_select">
															<!--<input type="text" id="form-field-1" placeholder="Username" class="form-control">-->
															<select class="form-control" name="secondlevelinfotypeid">
																<option>户外常识</option>
																<option>安全知识</option>
																<option>户外公开课</option>
																<option>领队培训</option>
															</select>
															
															<select class="form-control hide_select">
																<option value="1">新品报道</option>
																<option value="2">装备评测</option>
																<option value="3">装备品牌</option>
																<option value="4">装备行情</option>
															</select>
															
															<select class="form-control hide_select">
																<option>无</option>
															</select>
															
															<select class="form-control hide_select">
																<option>国内新闻</option>
																<option>国外新闻</option>
																<option>小道消息</option>
																<option>关注热点</option>
															</select>
															
															<select class="form-control hide_select">
																<option>达人专访</option>
																<option>品牌专访</option>
																<option>极限挑战</option>
															</select>
															
														</div>
													</div>
												</div>
											</div>
											<br />
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right" for="form-field-1">资讯标题</label>
				
														<div class="col-sm-9">
															<input name="title" type="text" id="form-field-1" placeholder="title" class="form-control" required="required" oninvalid="setCustomValidity('请输入资讯标题')" oninput="setCustomValidity('')">
														</div>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right" for="form-field-1">作者</label>
				
														<div class="col-sm-9">
															<input name="author" type="text" id="form-field-1" placeholder="autor" class="form-control" required="required" oninvalid="setCustomValidity('请输入作者')" oninput="setCustomValidity('')">
														</div>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right" for="form-field-1">文章来源</label>
				
														<div class="col-sm-9">
															<input name="copyfrom" type="text" id="form-field-1" placeholder="origin" class="form-control" required="required" oninvalid="setCustomValidity('请输入文章来源')" oninput="setCustomValidity('')">
														</div>
													</div>
												</div>
											</div>
											<br />
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right" for="form-field-1">关键字</label>
				
														<div class="col-sm-9">
															<input name="keywords" type="text" id="form-field-1" placeholder="keyword" class="form-control" required="required" oninvalid="setCustomValidity('请输入关键字')" oninput="setCustomValidity('')">
														</div>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right" for="form-field-1">发布时间</label>
				
														<div class="col-sm-9">
															<!-- <input name="createtime" type="text" id="form-field-1" placeholder="yyyy-MM-dd" onclick="laydate()" class="laydate-icon form-control" required="required" oninvalid="setCustomValidity('请输入发布时间')" oninput="setCustomValidity('')"> -->
														</div>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right" for="form-field-1">列表图片</label>
				
														<div class="col-sm-9">
															<!-- <input name="imgurl" type="file" id="form-field-1" required="required" oninvalid="setCustomValidity('请选择相关图片')" oninput="setCustomValidity('')"> -->
														</div>
													</div>
												</div>
											</div>
											<br />
											<div class="row">
												<div class="form-group">
													<label class="col-xs-12 control-label no-padding-right" for="form-field-1">资讯内容</label>
													<div class="col-xs-12">
														<textarea name="content" class="form-control" name="financial.bz" id="form-field-1" style="margin: 0 auto;" required="required" oninvalid="setCustomValidity('请输入资讯内容')" oninput="setCustomValidity('')">资讯内容</textarea>
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
															添加
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

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; 选择皮肤</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> 固定导航条</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl">切换到左边</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								切换窄屏
								<b></b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
		
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>


		
		<script type="text/javascript">
			window.jQuery || document.write("<script src='resources/Sports/assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='resources/Sports/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="resources/Sports/assets/js/bootstrap.min.js"></script>
		<script src="resources/Sports/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="resources/Sports/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="resources/Sports/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="resources/Sports/assets/js/jquery.slimscroll.min.js"></script>
		<script src="resources/Sports/assets/js/jquery.sparkline.min.js"></script>

		<!-- ace scripts -->

		<script src="resources/Sports/assets/js/ace-elements.min.js"></script>
		<script src="resources/Sports/assets/js/ace.min.js"></script>
		<script type="text/javascript" src="resources/js/laydate/laydate.js"></script>
	
</body>
</html>
