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
	<style>
		.btn{background-color:blue;color:white;}
	</style>
	<body>
		
			
			<form id="news-search-form" action="admin/news-search" >
				<label>新闻标题：</label><input type="text"  name="newsTitle" id="newsTitle" />
					<label>新闻作者：</label><input type="text"  name="newsAuthor"  id="newsAuthor" />
						<label>推荐：</label>
						<select name="newsIsRecommend" id="newsIsRecommend">
							<option value="">请选择</option>
							<option value="1">是</option>
							<option value="0">否</option>
						</select>
				<input type="submit" id="search"  name="search" style="width:100px" value="搜索">
				
			</form>
			<a href="admin/news-add"  id="add" style="width:100px">
					增加
			</a>
			<a id="selectAll" class="btn">全选</a>
			<a id="cancelAll" class="btn">取消</a>
			<a id="deleteAll" class="btn">删除</a>
			<table border="1" >
				<thead style="background-color:gray;">
				 		<tr>
				 			<th width=20></th>
				 			<th width=40>序号</th>
				 			<th width=200>标题</th>
				 			<th width=100>作者</th>
				 			<th width=100>提交时间</th>
				 			<th width=40>推荐</th>
				 			<!-- 操作 -->
				 			<th width=50 >详情</th>
				 			<th width=50>删除</th>
				 			<th width=50>编辑</th>
				 		</tr>
				</thead>
				<tbody style="text-align:center">
					
						<c:forEach items="${newsList}" var="item" varStatus="status">
								<tr>	
									<td><input type="checkbox" value="${item.newsId}" name="check"></td>
									<td>${status.index + 1}</td>
									<td>${item.newsTitle}</td>
									<td>${item.newsAuthor}</td>
									<td><fmt:formatDate value="${item.newsSubmitTime}" pattern="YYYY-MM-dd hh:mm:ss"/> 
									</td>
									<td>
										<c:choose>
											<c:when test="${item.newsIsRecommend == '1' }">
												<span>是</span>
											</c:when>
											<c:when test="${item.newsIsRecommend == '0' }">
												<span>否</span>
											</c:when>
										</c:choose>
									</td>
									<td>
										<span class="detail-btn" data-id="${item.newsId}"  data-title="${item.newsTitle}" >详情</span>
									</td>
									<td>
										<span class="delete-btn" data-id="${item.newsId}"  data-title="${item.newsTitle}" >删除</span>
									</td>
									<td>
										<span class="edit-btn" data-id="${item.newsId}"  data-title="${item.newsTitle}" >编辑</span>
									</td>
								</tr>
						</c:forEach>
				</tbody>
			</table>
		<div id="waiting" style="display:none;">
				<img alt="loading" src="resources/images/waiting.gif" />
		</div>
	</body>
	<!-- Javascript files -->
		<!-- jQuery -->
		<script type="text/javascript" src="resources/js/jquery/jquery-1.9.0.min.js"></script>
		<script type="text/javascript" src="resources/js/all.js"></script>
	
		<script>
			$(function(){
				var form =  $("form#news-search-form");
				
				form.submit(function(){
					var data = new Object();
					data.newsTitle = $("newsTitle").val();
					data.newsAuthor = $("#newsAuthor").val();
					data.newsIsRecommend = $("#newsIsRecommend").val();
					
					jQuery
					.ajax({
						headers : {
							'Accept' : 'application/json',
							'Content-Type' : 'application/json'
						},
						type : "POST",
						url : form.attr("action"),
						data : JSON.stringify(data),
						beforeSend:function(){
							$('#waiting').css({display:"block",top:"50%",left:"50%",position:"absolute"});
						},
						success : function(message, tst, jqXHR) {
							if (message.result == "success") {
								alert("加载成功");
							} else {
								if (message.result == "loading-error") {
									alert("加载失败");
								}  else {
									alert("xxx");
								}
							}
						}
					}); 
					
				});
				
				$(".detail-btn").click(function(){
					 var newsId = $(this).data("id");
					 var newsTitle=$(this).data("title");
					 var message = "确定要查看新闻 "+newsTitle+" 吗？";
					 var answer = confirm(message);
					if(!answer){
						return false;
					} 
					document.location.href = document.getElementsByTagName('base')[0].href
					+ 'admin/news-view/' + newsId; 
				});
				
				$(".edit-btn").click(function(){
					 var newsId = $(this).data("id");
					 var newsTitle=$(this).data("title");
					 var message = "确定要编辑新闻 "+newsTitle+" 吗？";
					 var answer = confirm(message);
					if(!answer){
						return false;
					} 
					document.location.href = document.getElementsByTagName('base')[0].href
					+ 'admin/news-edit/' + newsId; 
				});
				
					$(".delete-btn").click(function(){
						var newsId = $(this).data("id");
						var newsTitle=$(this).data("title");
						
						if (confirm("确定删除新闻"+newsTitle+"？")) {
							$.ajax({
								headers : {
									'Accept' : 'application/json',
									'Content-Type' : 'application/json'
								},
								type : "GET",
								url : "admin/news-delete/"+ newsId,
								success : function(message, tst, jqXHR) {
									if (!util.checkSessionOut(jqXHR))
										return false;
									if (message.result == "success") {
										util.success("删除成功",function(){
											window.location.reload();	
										});
										
									} else {
										util.error("操作失败请稍后尝试:" + message.result);
									}
				
								},
								error : function(jqXHR, textStatus) {
									util.error("操作失败请稍后尝试");
								}
							});
						}
					});
				});
		  
			$("#selectAll").click(function(){
			  $("input[name='check']").each(function(){
					$(this).prop("checked",true);
				})
		 	 });
			
			$("#cancelAll").click(function(){
				$("input[name='check']").each(function(){
					$(this).prop("checked",false);
				})
			});
			
			$("#deleteAll").click(function(){
				var result = confirm("确定删除吗？删除后将不可恢复");
				if(result == true){
					var newsListID="";
					$("input[name='check']").each(function(){
						var t = $(this).is(":checked");
						if(t){
							newsListID+=$(this).val()+",";
						}
					});
					if(newsListID=="" && newsListID==null){
						alert("请至少选择一项删除！");
						return false;
					}else{
						id=newsListID.substring(0,newsListID.length-1);
					$.ajax({
						headers : {
							'Accept' : 'application/json',
							'Content-Type' : 'application/json'
						},
						type : "GET",
						url : 'admin/news-list-delete/' + id ,
						success : function(message,tst,jqXHR) {
							if(!util.checkSessionOut(jqXHR))return false;
							if (message.result == "success") {
								util.success("删除成功！", function(){
									window.location.reload();
									//window.location.reload()重新加载页面
								});
							} else {
								util.error("操作失败请稍后尝试");
							}
						},
						error : function(jqXHR, textStatus) {
							util.error("操作失败请稍后尝试");
						}
					});
					}
				}
			});
		
           function redirectUrl(inputName){
				if(inputName==""){
					document.location.href = document.getElementsByTagName('base')[0].href
					+ 'admin/news/news-list/';
				}else{
					document.location.href = document.getElementsByTagName('base')[0].href
					+ 'admin/news/news-list/' + inputName;
				}
			}
		
		</script>
	</html>