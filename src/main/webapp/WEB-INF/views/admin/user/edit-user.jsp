<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
    	<base href="<%=basePath%>">
    
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>insert title here</title>
		<meta name="keywords" content="">
	</head>
	<body>
		  <form id="user-edit-form" action="admin/edit-user" >
		  		<input type="hidden" name="userId" id="userId" value="${user.id}" />
		  		<input type="hidden" name="enabled" id="enabled" value="${user.enabled}" />
		  		<div class="form-username">
		  				<label>用户名：</label><input type="text"  name="username" id="username"  value="${user.username}"/><span class="form-message"></span>
		  		</div>
		  		<div class="form-password">
		  				<label>密码：</label><input type="text" name="password" id="password"  value="${user.password}"/><span class="form-message"></span>
		  		</div>
		  		<input id="btn-save" value="确认添加" type="submit" >
		  </form> 
	</body>
	<!-- Javascript files -->
		<!-- jQuery -->
		<script type="text/javascript" src="resources/js/jquery/jquery-1.9.0.min.js"></script>
		<script>
		$(function() {
			create_account.initial();
		});

		var create_account = {

			initial : function initial() {
				this.bindSubmitForm();
			},

			bindSubmitForm : function bindSubmitForm() {
				var form = $("form#user-edit-form");

				form.submit(function() {
							var result = create_account.verifyInput();
							if (result) {
								var data = new Object();
								data.id = $("#userId").val();
								data.username = $("#username").val();
								data.password = $("#password").val();
								data.enabled = $("#enabled").val();
								jQuery
										.ajax({
											headers : {
												'Accept' : 'application/json',
												'Content-Type' : 'application/json'
											},
											type : "POST",
											url : form.attr("action"),
											data : JSON.stringify(data),
											success : function(message, tst, jqXHR) {
												if (message.result == "success") {
													document.location.href = document.getElementsByTagName('base')[0].href
															+ "admin/user-list";
												} else {
													if (message.result == "duplicate-username") {
														$(".form-username .form-message").text(message.messageInfo);
													} else if (message.result == "captch-error") {
														
													} else {
														alert(message.result);
													}
												}
											}
										});
							}

							return false;
						});
			},

			verifyInput : function verifyInput() {
				$(".form-message").empty();
				var result = true;
				var check_u = this.checkUsername();
				var check_p = this.checkPassword();
				result = check_u && check_p;
				return result;
			},

			checkUsername : function checkUsername() {
				var username = $(".form-username input").val();
				if (username == "") {
					$(".form-username .form-message").text("用户名不能为空");
					return false;
				} else if (username.length > 20 || username.length < 5) {
					$(".form-username .form-message").text("请保持在5-20个字符以内");
					return false;
				} else {
					var re=/[\+|\-|\\|\/||&|!|~|@|#|\$|%|\^|\*|\(|\)|=|\?|´|"|<|>|\.|,|:|;|\]|\[|\{|\}|\|]+/;
					if(re.test(username)){
						$(".form-username .form-message").text("只能是数字字母或者下划线的组合");
						return false;
					}else {
						return true;
						} 
				}
				return true;
			},

			checkPassword : function checkPassword() {
				var password = $(".form-password input").val();
				if (password == "") {
					$(".form-password .form-message").text("密码不能为空");
					return false;
				} else if (password.length < 6 || password.length > 20) {
					$(".form-password .form-message").text("密码请保持在6到20个字符以内");
					return false;
				} else {
					return true;
				}
				return true;
			}

		};
		</script>
	</html>