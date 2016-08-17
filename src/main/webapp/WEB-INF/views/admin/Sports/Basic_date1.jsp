<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>基础数据管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->
		<link href="resources/Sports/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="resources/Sports/assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="resources/Sports/assets/css/font-awesome-ie7.min.css" />
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

		<link type="text/css" href="http://code.jquery.com/ui/1.9.1/themes/smoothness/jquery-ui.css" rel="stylesheet" />

	    <link href="resources/Sports/jQuery-Timepicker-Addon/jquery-ui-timepicker-addon.css" type="text/css" />
	
	    <script src="http://code.jquery.com/jquery-1.8.2.min.js" type="text/javascript"></script>
	    <script type="text/javascript" src="http://code.jquery.com/ui/1.9.1/jquery-ui.min.js"></script>
	    <script src="resources/Sports/jQuery-Timepicker-Addon/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
	
	    <!--中文-->
	    <script src="resources/Sports/js/jquery.ui.datepicker-zh-CN.js.js" type="text/javascript" charset="gb2312"></script>
	    <script src="resources/Sports/js/jquery-ui-timepicker-zh-CN.js" type="text/javascript"></script>
	  
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="resources/Sports/assets/js/html5shiv.js"></script>
		<script src="resources/Sports/assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							OSTP后台管理系统
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->
				
				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
					
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="resources/Sports/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small style="font-size: 60%;">欢迎回来</small>
									小波
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="icon-cog"></i>
										设置
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										个人资料
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
				
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<ul class="nav nav-list">
						<li>
							<a href="typography.html">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 后台首页 </span>
							</a>
						</li>
						
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-adjust"></i>
								<span class="menu-text"> 系统管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="elements.html">
										<i class="icon-double-angle-right"></i>
										组织管理
									</a>
								</li>

								<li>
									<a href="buttons.html">
										<i class="icon-double-angle-right"></i>
										系统用户
									</a>
								</li>

								<li>
									<a href="treeview.html">
										<i class="icon-double-angle-right"></i>
										会员管理
									</a>
								</li>

								<li>
									<a href="jquery-ui.html">
										<i class="icon-double-angle-right"></i>
										在线管理
									</a>
								</li>
							</ul>
						</li>

						<li class="active">
							<a href="#" class="dropdown-toggle">
								<i class="icon-folder-open-alt"></i>
								<span class="menu-text"> 基础数据管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="Basic_date1.html">
										<i class="icon-double-angle-right"></i>
										户外运动类型
									</a>
								</li>

								<li>
									<a href="Basic_date2.html">
										<i class="icon-double-angle-right"></i>
										户外运动
									</a>
								</li>

								<li>
									<a href="Basic_date3.html">
										<i class="icon-double-angle-right"></i>
										装备功能类型
									</a>
								</li>

								<li>
									<a href="Basic_date4.html">
										<i class="icon-double-angle-right"></i>
										图像风格类型
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> 资讯管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="Zixun.html">
										<i class="icon-double-angle-right"></i>
										资讯列表
									</a>
								</li>

								<li>
									<a href="Zixun_add.html">
										<i class="icon-double-angle-right"></i>
										资讯添加
									</a>
								</li>

								<li>
									<a href="Zixun_edit.html">
										<i class="icon-double-angle-right"></i>
										资讯编辑
									</a>
								</li>

								<li>
									<a href="Zixun_view.html">
										<i class="icon-double-angle-right"></i>
										资讯详情
									</a>
								</li>
								
							</ul>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-headphones"></i>
								<span class="menu-text"> 装备管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>
						
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-camera-retro"></i>
								<span class="menu-text"> 摄影管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>
						
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-download"></i>
								<span class="menu-text"> 位置管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>
						
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-facetime-video"></i>
								<span class="menu-text"> 教程管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>
						
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-eye-open"></i>
								<span class="menu-text"> 攻略管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>
						
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-comments"></i>
								<span class="menu-text"> 社区管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>
				
				<!--将这一部分1转化成ifream-->
				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-folder-open-alt"> 基础数据管理</i>
								<a href="#"></a>
							</li>
							<li class="active">户外运动类型</li>
						</ul><!-- .breadcrumb -->
						
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								户外运动类型
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
												
												<div class="row">
													<div class="col-sm-6">
														<div class="dataTables_info" id="sample-table-2_info">
															<div class="btn-group">
																<button class="btn btn-info">
																	<i class="icon-edit bigger-125"></i>
																	<a href="#modal_form1" role="button" class="green" data-toggle="modal">
																		<i class="icon-double-angle-right"></i>
																		添加文档
																	</a>
																</button>
															</div>
														</div>
													</div>
													<div class="col-sm-6">
														
													</div>
												</div>
												
												<div class="table-header">
													户外运动类型信息
												</div>
		
												<div class="table-responsive">
													<table id="sample-table-2" class="table table-striped table-bordered table-hover">
														<thead>
															<tr>
																<th class="center">选择</th>
																<th>序号</th>
																<th>运动类型</th>
																<th>备注</th>
																<th class="hidden-480">操作</th>
		
															</tr>
														</thead>
		
														<tbody>
															<tr>
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
																	<a href="#">户外安全知识类</a>
																</td>
																<td>
																	<a href="#">户外安全知识类</a>
																</td>
																<td>
																	<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
																		
																		<a class="green" href="#">
																			<i class="icon-pencil bigger-130"></i> 编辑
																		</a>
		
																		<a class="red" href="#">
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
				
				<div id="modal_form1" class="modal fade in" tabindex="-1" aria-hidden="false" style="display:none;">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header no-padding">
								<div class="table-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										<span class="white">×</span>
									</button>
									编辑
								</div>
							</div>

							<div class="modal-body no-padding">
								<form class="clearfix form-actions">
									<div class="row">
										<div class="col-xs-12">
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">户外运动类型</label>
		
												<div class="col-sm-9">
													<input type="text" id="form-field-1" placeholder="tilte" class="form-control">
												</div>
											</div>
										</div>
										<br />
										<div class="col-xs-12" style="margin-top: 20px;">
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">备注</label>
		
												<div class="col-sm-9">
													<textarea class="form-control" style="min-height: 200px;"></textarea>
												</div>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="form-actions">
											<div class="text-center">
												<button class="btn btn-primary" type="button">
													<i class="icon-ok bigger-110"></i>
													保存
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

							<!--<div class="modal-footer no-margin-top">
								<button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
									<i class="icon-remove"></i>
									Close
								</button>
							</div>-->
						</div><!-- /.modal-content -->
					</div><!-- /.modal-dialog -->
				</div>
				
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
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

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
		<script src="resources/Sports/assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="resources/Sports/assets/js/jquery.sparkline.min.js"></script>
		<script src="resources/Sports/assets/js/flot/jquery.flot.min.js"></script>
		<script src="resources/Sports/assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="resources/Sports/assets/js/flot/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->

		<script src="resources/Sports/assets/js/ace-elements.min.js"></script>
		<script src="resources/Sports/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script src="resources/Sports/js/sport.js"></script>
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
	<script type="text/javascript">
		$(function(){
			var test = <%=basePath%>;
			alert(test);
		});
	</script>
</body>
</html>

