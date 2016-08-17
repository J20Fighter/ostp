<%@ page language="java"  import="java.util.*"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>和平新技术研究院信息化服务平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="resources/login/bootstrap.min.css" />
<link rel="stylesheet" href="resources/login/css/camera.css" />
<link rel="stylesheet" href="resources/login/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="resources/login/matrix-login.css" />
<link href="resources/login/font-awesome.css" rel="stylesheet" />



<base href="<%=basePath%>">
</head>
<body>
	<div style="width:100%; text-align: center; margin: 0 auto; position: absolute;">
		<div id="loginbox">
			<form action="j_spring_security_check" method="post" name="loginForm" id="loginForm">
				<div class="control-group normal_text">
					<h3>
						<img src="resources/login/logo.png" alt="Logo" />
					</h3>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_lg">
							<i><img height="37" src="resources/login/user.png" /></i>
							</span> <input type="text" name="j_username" id="loginname" value="" placeholder="请输入用户名" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_ly">
							<i><img height="37" src="resources/login/suo.png" /></i>
							</span><input type="password" name="j_password" id="password" placeholder="请输入密码" value="" />
						</div>
					</div>
				</div>
				<div style="float:right;padding-right:10%;">
					<div style="float: left;margin-top:3px;margin-right:2px;">
						<font color="white">记住密码</font>
					</div>
					<div style="float: left;">
						<input name="form-field-checkbox" id="saveid" type="checkbox"
							onclick="savePaw();" style="padding-top:0px;" />
					</div>
				</div>
				<div class="form-actions">
					<div style="width:86%;padding-left:8%;">
							   <div style="float: left;">
								<span class="form-message">${result}</span>
								</div>
							   <span class="pull-right" style="padding-right:3%;">
									 <button type="submit" >登录</button>
								</span> 
							     <span class="pull-right" style="padding-right:3%;">
									 <button type="reset" >取消</button>
								</span> 
					</div>
				</div>

			</form>


			<div class="controls">
				<div class="main_input_box">
					<font color="white"><span id="nameerr">Copyright © 和平新技术研究院</span></font>
				</div>
			</div>
		</div>
	</div>
	<div id="templatemo_banner_slide" class="container_wapper">
		<div class="camera_wrap camera_emboss" id="camera_slide">
			<div data-src="resources/login/images/banner_slide_01.jpg"></div>
			<div data-src="resources/login/images/banner_slide_02.jpg"></div>
			<div data-src="resources/login/images/banner_slide_03.jpg"></div>
		</div>
		<!-- #camera_wrap_3 -->
	</div>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/login/js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="resources/login/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="resources/login/js/jquery.mobile.customized.min.js"></script>
	<script type="text/javascript" src="resources/login/js/camera.min.js"></script>
	<script type="text/javascript" src="resources/login/js/templatemo_script.js"></script>
	<script type="text/javascript" src="resources/js/jquery/jquery.tips.js"></script>
	<script type="text/javascript" src="resources/js/jquery/jquery.cookie.js"></script>
	<script>
		//TOCMAT重启之后 点击左侧列表跳转登录首页 
		if (window != top) {
			top.location.href = location.href;
		}
	</script>
</body>
	
	
</html>