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
			<ul>
				<li>
					<a href="admin/user-list">用户管理</a>
				</li>
				<li>
					<a href="admin/role-list">角色管理</a>
				</li>
				<li>
					<a href="admin/news-list">新闻管理</a>
				</li>
				<li>
					<a href="admin/comments-list">评论管理</a>
				</li>
			</ul>
	</body>
	</html>