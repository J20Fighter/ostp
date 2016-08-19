<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
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
							<li class="active">资讯列表</li>
						</ul><!-- .breadcrumb -->
						
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								资讯列表
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
	
										<div class="row">
											<div class="col-xs-12">
												<form class="clearfix form-actions">
													<div class="row">
														<div class="col-sm-4">
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">文章标题</label>
						
																<div class="col-sm-9">
																	<input type="text" id="form-field-1" placeholder="tilte" class="form-control">
																</div>
															</div>
														</div>
														<div class="col-sm-4">
															<!--添加下拉菜单-->
															<div class="form-group">
																<label class="col-sm-4 control-label no-padding-right" for="form-field-1">户外运动类型</label>
						
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
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">起始时间</label>
						
																<div class="col-sm-9">
																	<div class="input-group">
																		<input class="form-control date-picker date_calendar" type="text">
																		<span class="input-group-addon">
																			<i class="icon-calendar bigger-110"></i>
																		</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<br />
													<div class="row">
														<div class="col-sm-4">
															<div class="form-group">
																<label class="col-sm-4 control-label no-padding-right" for="form-field-1">一级类目</label>
						
																<div class="col-sm-8">
																	<!--<input type="text" id="form-field-1" placeholder="Username" class="form-control">-->
																	<select class="form-control" id="first_select">
																		<option>户外知识</option>
																		<option>装备资讯</option>
																		<option>专题活动</option>
																		<option>赛事新闻</option>
																		<option>专栏专访</option>
																	</select>
																</div>
															</div>
														</div>
														<div class="col-sm-4">
															<div class="form-group">
																<label class="col-sm-4 control-label no-padding-right" for="form-field-1">二级类目</label>
						
																<div class="col-sm-8" id="second_select">
																	<!--<input type="text" id="form-field-1" placeholder="Username" class="form-control">-->
																	<select class="form-control">
																		<option>户外常识</option>
																		<option>安全知识</option>
																		<option>户外公开课</option>
																		<option>领队培训</option>
																	</select>
																	
																	<select class="form-control hide_select">
																		<option>新品报道</option>
																		<option>装备评测</option>
																		<option>装备品牌</option>
																		<option>装备行情</option>
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
														<div class="col-sm-4">
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">结束时间</label>
						
																<div class="col-sm-9">
																	<div class="input-group">
																		<input class="form-control date-picker date_calendar" type="text">
																		<span class="input-group-addon">
																			<i class="icon-calendar bigger-110"></i>
																		</span>
																	</div>
																</div>
															</div>
														</div>
														<script type="text/javascript">
															$('.date_calendar').datetimepicker({
															    timeFormat: "HH:mm:ss",
															    dateFormat: "yy-mm-dd",
																showSecond:true,
																beforeShow:function(input){
																	$(input).css({
																		"position":"relative",
																		"z-index":9999
																	});
																}
															});
														</script>
													</div>
													<br />
													<div class="row">
														<div class="form-actions">
															<div class="col-sm-offset-5 col-md-3">
																<button class="btn btn-primary" type="button">
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
											</div>
											
											<div class="col-xs-12">
												
												<div class="row">
													<div class="col-sm-6">
														<div class="dataTables_info" id="sample-table-2_info">
															<div class="btn-group">
																<button class="btn btn-info">
																	<i class="icon-edit bigger-125"></i> 添加文档
																</button>
															</div>
														</div>
													</div>
													<div class="col-sm-6">
														
													</div>
												</div>
												
												<div class="table-header">
													资讯更新信息
												</div>
		
												<div class="table-responsive">
													<table id="sample-table-2" class="table table-striped table-bordered table-hover">
														<thead>
															<tr>
																<th class="center">选择</th>
																<th>序号</th>
																<th>文章标题</th>
																<th>运动类型</th>
																<th>一级类目</th>
																<th>二级类目</th>
																<th>文章来源</th>
																<th>关键字</th>
																<th>
																	<i class="icon-time bigger-110 hidden-480"></i>
																	创建时间
																</th>
																<th class="hidden-480">操作</th>
		
															</tr>
														</thead>
		
														<tbody>
															<tr id="zixun_tr">
																<td class="center">
																	<label>
																		<input type="checkbox" class="ace" />
																		<span class="lbl"></span>
																	</label>
																</td>
		
																<td>
																	<a href="#">1001</a>
																</td>
																<td>
																	<a href="#">徒步出游须知的6点小知识</a>
																</td>
																<td>
																	<a href="#">户外安全知识类</a>
																</td>
																<td>206</td>
																<td>
																	<a href="#">已生成</a>
																</td>
																<td>开放浏览</td>
																<td class="hidden-480">小波</td>
																<td>2016-08-03</td>
																<td>
																	<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
																		
																		<a class="blue" href="zixun_view.html">
																			<i class="icon-search bigger-130"></i> 详情
																		</a>
																		
																		<a class="green" href="zixun_add.html">
																			<i class="icon-pencil bigger-130"></i> 编辑
																		</a>
		
																		<a class="red" href="#" id="delete_a">
																			<i class="icon-trash bigger-130"></i> 删除
																		</a>
																	</div>
		
																	<div class="visible-xs visible-sm hidden-md hidden-lg">
																		<div class="inline position-relative">
																			<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
																				<i class="icon-caret-down icon-only bigger-120"></i>
																			</button>
		
																			<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																				<li>
																					<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																						<span class="blue">
																							<i class="icon-zoom-in bigger-120"></i>
																						</span>
																					</a>
																				</li>
		
																				<li>
																					<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																						<span class="green">
																							<i class="icon-edit bigger-120"></i>
																						</span>
																					</a>
																				</li>
		
																				<li>
																					<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																						<span class="red">
																							<i class="icon-trash bigger-120"></i>
																						</span>
																					</a>
																				</li>
																			</ul>
																		</div>
																	</div>
																</td>
															</tr>
															<script type="text/javascript">
																(function(){
																	var tr=document.querySelector("#zixun_tr");
																	var delete1=document.querySelector("#delete_a");
																	delete1.addEventListener("click",function(e){
																		tr.innerHTML="";
																		e.preventDefault();
																	});
																})();
															</script>
														</tbody>
													</table>
												</div>
												
												<div class="row">
													<div class="col-sm-6 col-sm-offset-6">
														<div class="dataTables_paginate paging_bootstrap">
															<ul class="pagination">
																<li class="prev disabled">
																	<a href="#">上一页</a>
																</li>
																<li class="active">
																	<a href="#">1</a>
																</li>
																<li>
																	<a href="#">2</a>
																</li>
																<li>
																	<a href="#">3</a>
																</li>
																<li class="next">
																	<a href="#">下一页</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												
											</div>
										</div>
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
 window.jQuery || document.write("<script src='resources/Sports/assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='resources/Sports/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="resources/Sports/assets/js/bootstrap.min.js"></script>
		<script src="resources/Sports/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="resources/Sports/assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="resources/Sports/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="resources/Sports/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="resources/Sports/assets/js/jquery.slimscroll.min.js"></script>
		<script src="resources/Sports/assets/js/jquery.sparkline.min.js"></script>

		<!-- ace scripts -->

		<script src="resources/Sports/assets/js/ace-elements.min.js"></script>
		<script src="resources/Sports/assets/js/ace.min.js"></script>

	
</body>
</html>
