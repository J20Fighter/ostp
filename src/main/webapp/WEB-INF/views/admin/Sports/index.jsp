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
		
		<title>后台首页</title>
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
						<li class="active">
							<a href="wc" target="mainFrame">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 后台首页 </span>
							</a>
						</li>
						
						<li>
							<a href="xitong" class="dropdown-toggle" target="mainFrame">
								<i class="icon-adjust"></i>
								<span class="menu-text"> 系统管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="xitong_quanxian" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										权限管理
									</a>
								</li>

								<li>
									<a href="xitong_user" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										系统用户
									</a>
								</li>

								<li>
									<a href="xitong_juese" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										角色用户
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="basic" class="dropdown-toggle" target="mainFrame">
								<i class="icon-folder-open-alt"></i>
								<span class="menu-text"> 基础数据管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="basic_sport" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										户外运动类型
									</a>
								</li>

								<li>
									<a href="basic_outdoor" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										户外运动
									</a>
								</li>

								<li>
									<a href="basic_zhuangbei" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										装备功能类型
									</a>
								</li>

								<li>
									<a href="basic_image" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										图像风格类型
									</a>
								</li>
								
								<li>
									<a href="basic_weizhi" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										位置类型类型
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="zixun" class="dropdown-toggle" target="mainFrame">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> 资讯管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="zixun" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										资讯列表
									</a>
								</li>

								<li>
									<a href="zixun_add" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										资讯添加
									</a>
								</li>

							</ul>
						</li>

						<li>
							<a href="zhuangbei" class="dropdown-toggle" target="mainFrame">
								<i class="icon-headphones"></i>
								<span class="menu-text"> 装备管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="zhuangbei" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										装备列表
									</a>
								</li>

								<li>
									<a href="zhuangbei_add" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										装备添加
									</a>
								</li>

							</ul>
						</li>
						
						<li>
							<a href="sheying" class="dropdown-toggle" target="mainFrame">
								<i class="icon-camera-retro"></i>
								<span class="menu-text"> 摄影管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="sheying" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										摄影列表
									</a>
								</li>

								<li>
									<a href="sheying_add" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										摄影添加
									</a>
								</li>

							</ul>
						</li>
						
						<li>
							<a href="weizhi" class="dropdown-toggle" target="mainFrame">
								<i class="icon-download"></i>
								<span class="menu-text"> 位置管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="weizhi" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										位置列表
									</a>
								</li>

								<li>
									<a href="weizhi_add" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										位置添加
									</a>
								</li>

							</ul>
						</li>
						
						<li>
							<a href="jiaocheng" class="dropdown-toggle" target="mainFrame">
								<i class="icon-facetime-video"></i>
								<span class="menu-text"> 教程管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="jiaocheng" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										教程列表
									</a>
								</li>

								<li>
									<a href="jiaocheng_add" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										教程添加
									</a>
								</li>

							</ul>
						</li>
						
						<li>
							<a href="xingcheng" class="dropdown-toggle" target="mainFrame">
								<i class="icon-eye-open"></i>
								<span class="menu-text"> 行程管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="xingcheng" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										行程列表
									</a>
								</li>

								<li>
									<a href="xingcheng_add" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										行程添加
									</a>
								</li>

							</ul>
						</li>
						
						<li>
							<a href="shequ" class="dropdown-toggle" target="mainFrame">
								<i class="icon-comments"></i>
								<span class="menu-text"> 社区管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="shequ/submenu">
								<li>
									<a href="shequ" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										社区列表
									</a>
								</li>

								<li>
									<a href="shequ_add" target="mainFrame">
										<i class="icon-double-angle-right"></i>
										社区添加
									</a>
								</li>

							</ul>
						</li>
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>
				<div class="right-iframe">
					<iframe src="wc" frameborder="0" name="mainFrame" scrolling="auto" marginheight="0" marginwidth="0" id="iframepage" onLoad="iFrameHeight()" width="100%" height="800px">
						
					</iframe>
					<script type="text/javascript" language="javascript">   
						function iFrameHeight(){   
							var ifm= document.getElementById("iframepage");   
							var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;   
							if(ifm != null && subWeb != null) {
							   ifm.height = subWeb.body.scrollHeight;
							   ifm.width = subWeb.body.scrollWidth;
							}   
						}
					</script>
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

	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

