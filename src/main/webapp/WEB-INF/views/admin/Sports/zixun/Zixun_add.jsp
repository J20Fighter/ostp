<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>资讯</title>
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
		<script type="text/javascript" src="ckeditor/ckeditor.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
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
								<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
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

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-folder-open-alt"></i>
								<span class="menu-text"> 基础数据管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="elements.html">
										<i class="icon-double-angle-right"></i>
										户外运动类型
									</a>
								</li>

								<li>
									<a href="buttons.html">
										<i class="icon-double-angle-right"></i>
										户外运动
									</a>
								</li>

								<li>
									<a href="treeview.html">
										<i class="icon-double-angle-right"></i>
										装备功能类型
									</a>
								</li>

								<li>
									<a href="jquery-ui.html">
										<i class="icon-double-angle-right"></i>
										图像风格类型
									</a>
								</li>
							</ul>
						</li>

						<li class="active">
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
										
										<form>
											<div class="row">
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
											</div>
											<br />
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label class="col-sm-3 control-label no-padding-right" for="form-field-1">资讯标题</label>
				
														<div class="col-sm-9">
															<input type="text" id="form-field-1" placeholder="title" class="form-control" required="required" oninvalid="setCustomValidity('请输入资讯标题')" oninput="setCustomValidity('')">
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
														<label class="col-sm-3 control-label no-padding-right" for="form-field-1">文章来源</label>
				
														<div class="col-sm-9">
															<input type="text" id="form-field-1" placeholder="origin" class="form-control" required="required" oninvalid="setCustomValidity('请输入文章来源')" oninput="setCustomValidity('')">
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
															<input type="text" id="form-field-1" placeholder="keyword" class="form-control" required="required" oninvalid="setCustomValidity('请输入关键字')" oninput="setCustomValidity('')">
														</div>
													</div>
												</div>
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
													<label class="col-xs-12 control-label no-padding-right" for="form-field-1">资讯内容</label>
													<div class="col-xs-12">
														<textarea class="form-control" name="financial.bz" id="form-field-1" style="margin: 0 auto;" required="required" oninvalid="setCustomValidity('请输入资讯内容')" oninput="setCustomValidity('')">资讯内容</textarea>
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
		<script src="assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="assets/js/jquery.sparkline.min.js"></script>
		<script src="assets/js/flot/jquery.flot.min.js"></script>
		<script src="assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="assets/js/flot/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script src="js/sport.js"></script>
		<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

