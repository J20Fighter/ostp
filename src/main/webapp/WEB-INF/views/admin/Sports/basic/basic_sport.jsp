<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>基础数据管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

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

		<link type="text/css" href="http://code.jquery.com/ui/1.9.1/themes/smoothness/jquery-ui.css" rel="stylesheet" />

	    <link href="jQuery-Timepicker-Addon/jquery-ui-timepicker-addon.css" type="text/css" />
	
	    <script src="http://code.jquery.com/jquery-1.8.2.min.js" type="text/javascript"></script>
	    <script type="text/javascript" src="http://code.jquery.com/ui/1.9.1/jquery-ui.min.js"></script>
	    <script src="jQuery-Timepicker-Addon/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
	
	    <!--中文-->
	    <script src="js/jquery.ui.datepicker-zh-CN.js.js" type="text/javascript" charset="gb2312"></script>
	    <script src="js/jquery-ui-timepicker-zh-CN.js" type="text/javascript"></script>
	  
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
		
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>


		
		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/jquery.slimscroll.min.js"></script>
		<script src="assets/js/jquery.sparkline.min.js"></script>

		<!-- ace scripts -->

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

	
</body>
</html>
