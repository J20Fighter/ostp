<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
		
			<a href="admin/add-user"  id="add" style="width:100px">
					增加
			</a>
			<label>用户名：</label><input type="text"  id="input-search" value="${inputName}">
			<button id="search" style="width:100px">
					搜索
			</button>
			<table>
				<thead>
				 		<tr>
				 			<th>序号</th>
				 			<th>用户名</th>
				 			<th>密码</th>
				 			<th>状态</td>
				 			<th>禁用</th>
				 			<th>编辑</th>
				 		</tr>
				</thead>
				<tbody>
					
						<c:forEach items="${userList}" var="item" varStatus="status">
								<tr>	
									<td>${status.index + 1}</td>
									<td>${item.username}</td>
									<td>${item.password}</td>
									<td>
										<c:choose>
											<c:when test="${item.enabled == 1 }">
												<span>启用</span>
											</c:when>
											<c:when test="${item.enabled == 0 }">
												<span>注销</span>
											</c:when>
											<c:otherwise>
												其他
											</c:otherwise>
										</c:choose>
									</td>
									<td>
										<c:choose>
											<c:when test="${item.enabled == 1 }">
												<span class="disable-btn" data-id="${item.id}">禁用</span>
											</c:when>
											<c:when test="${item.enabled == 0 }">
												<span class="enable-btn" data-id="${item.id}" >启用</span>
											</c:when>
										</c:choose>
									</td>
									<td>
										<span class="edit-btn" data-id="${item.id}"  data-username="${item.username}" >编辑</span>
									</td>
								</tr>
						</c:forEach>
				</tbody>
			</table>
		
	</body>
	<!-- Javascript files -->
		<!-- jQuery -->
		<script type="text/javascript" src="resources/js/jquery/jquery-1.9.0.min.js"></script>
		<script type="text/javascript" src="resources/js/all.js"></script>
		<script>
			$(function(){
				$("#search").click(function(){
					var inputName=$("#input-search").val().trim();
					redirectUrl(inputName);	
					});
				
				$(".edit-btn").click(function(){
					 var userId = $(this).data("id");
					 var username=$(this).data("username");
					 var message = "确定要修改用户 "+username+" 吗？";
					 var answer = confirm(message);
					if(!answer){
						return false;
					} 
					document.location.href = document.getElementsByTagName('base')[0].href
					+ 'admin/edit-user/' + userId; 
				});
				
				$(".disable-btn").click(function(){
					var message = "确定要禁用该用户吗？";
					var answer = confirm(message);
					if(!answer){
						return false;
					}
					
					jQuery.ajax({
						headers : {
							'Accept' : 'application/json',
							'Content-Type' : 'application/json'
						},
						type : "GET",
						url : 'admin/disable-user/' + $(this).data("id"),
						success : function(message,tst,jqXHR) {	
							if(!util.checkSessionOut(jqXHR))return false;
							"message:"+message.result;
							if (message.result == "success") {
								util.success("操作成功！", function(){
									 window.location.reload();
								}); 
							} else {
								util.error(message.result);
							}
						},
						error : function(jqXHR, textStatus) {
							util.error("操作失败请稍后尝试");
						}
					});
					
				});
				
				$(".enable-btn").click(function(){
					var message = "确定要启用该用户吗？";
					var answer = confirm(message);
					if(!answer){
						return false;
					}
					jQuery.ajax({
						headers : {
							'Accept' : 'application/json',
							'Content-Type' : 'application/json'
						},
						type : "GET",
						url : 'admin/enable-user/' + $(this).data("id"),
						success : function(message,tst,jqXHR) {
							if(!util.checkSessionOut(jqXHR))return false;
							if (message.result == "success") {				
								util.success("操作成功！", function(){
									 window.location.reload();
								}
								);  
							} else {
								util.error(message.result);
							}
						},
						error : function(jqXHR, textStatus) {
							util.error("操作失败请稍后尝试");
						}
					});
					
				});
			});
           function redirectUrl(inputName){
				if(inputName==""){
					document.location.href = document.getElementsByTagName('base')[0].href
					+ 'admin/user-list/';
				}else{
					document.location.href = document.getElementsByTagName('base')[0].href
					+ 'admin/user-list/' + inputName;
				}
			}
		
		</script>
	</html>