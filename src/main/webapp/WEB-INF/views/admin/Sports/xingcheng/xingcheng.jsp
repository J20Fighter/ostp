<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>行程内容列表</title>
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

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="resources/Sports/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="resources/Sports/assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="resources/Sports/assets/js/html5shiv.js"></script>
		<script src="resources/Sports/assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body style="background:#fff;">
				
	<!--将这一部分1转化成ifream-->
	<div class="main-content" style="margin-left:0;margin-bottom:0;">
		<div class="breadcrumbs" id="breadcrumbs">
			<script type="text/javascript">
				try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
			</script>

			<ul class="breadcrumb">
				<li>
					<i class="icon-dashboard"></i>
					<a href="#">行程管理</a>
				</li>
				<li class="active">行程列表</li>
			</ul><!-- .breadcrumb -->
			
		</div>

		<div class="page-content">
			<div class="page-header">
				<h1>
					行程列表
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
									<form>
										<div class="row">
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right" for="form-field-1">行程名称</label>
			
													<div class="col-sm-9">
														<input type="text" id="form-field-1" placeholder="行程名称" class="form-control">
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
															<option>12</option>
															<option>12</option>
															<option>12</option>
															<option>12</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right" for="form-field-1">关键字</label>
			
													<div class="col-sm-9">
														<input type="text" id="form-field-1" placeholder="关键字" class="form-control">
													</div>
												</div>
											</div>
										</div>
										<br>
										<div class="row">
											<div class="col-sm-offset-5 col-sm-1 text-center">
												<input type="button" class="btn btn-success" value="查询">
											</div>
											<div class="col-sm-1 text-center">
												<input type="button" class="btn btn-info" value="重置">
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
										行程列表信息
									</div>

									<div class="table-responsive">
										<table id="sample-table-2" class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th class="center">选择</th>
													<th>行程编号</th>
													<th>行程名称</th>
													<th>运动类型编号</th>
													<th>注意事项</th>
													<th>攻略</th>
													<th>
														<i class="icon-time bigger-110 hidden-480"></i>
														创建时间
													</th>
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
														<a href="#">武功山行程计划</a>
													</td>
													<td>0001</td>
													<td><a href="#">注意事项</a></td>
													<td>
														<a href="#">武功山攻略</a>
													</td>
													<td>2016-08-01</td>
													<td>
														<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
															
															<a class="blue" href="#">
																<i class="icon-search bigger-130"></i> 详情
															</a>
															
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
</body>
</html>

