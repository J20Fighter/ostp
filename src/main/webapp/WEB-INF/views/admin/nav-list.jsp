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
		<meta name="keywords" content=""/>
	<style type="text/css">
		.ztree li span.button.add {margin-left:2px; margin-right: -1px; background-position:-144px 0; vertical-align:top; *vertical-align:middle}
	</style>
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
			
			
			<ul>
				<c:forEach items="${menu}" var="item" varStatus="status">
					<c:choose>
							<c:when test="${item.nav_link =='' }">
								<li>
									<a id="${item.nav_Id}" onclick="menuclick(${item.nav_Id})">${item.nav_title}</a>
								</li>			
							</c:when>
							<c:otherwise>
									<li><a href="${item.nav_link}">${item.nav_title}</a></li>
							</c:otherwise>
						</c:choose>
				</c:forEach>
	
			</ul>
	<h1>增删改查</h1>
	
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	
	
	<div id="json"></div>	
	</body>
	<script type="text/javascript" src="resources/js/jquery/jquery-1.9.0.min.js"></script>
	<script type="text/javascript" src="resources/ztree/jquery.ztree.core.min.js"></script>
	<script type="text/javascript" src="resources/ztree/jquery.ztree.exedit.min.js"></script>
	<script type="text/javascript" src="resources/ztree/jquery.ztree.excheck.min.js"></script>
	<link rel="stylesheet" href="resources/ztree/zTreeStyle.css" type="text/css">
	
	<script>
		function menuclick(item){
			$.get('admin/showMenuItem',{item:item},function(data){
				$('#'+item).parent().append('<ul class="'+item+'level"></ul>');
				for(var menuitem in data){
				
					if(data[menuitem].nav_link==''){
						$('.'+item+'level').append(
						'<li><a id='+data[menuitem].nav_Id+' onclick="menuclick('+data[menuitem].nav_Id+')">'+data[menuitem].nav_title+'</a> </li>'
						);
					}else{
						$('.'+item+'level').append(
								'<li><a href="'+data[menuitem].nav_link+'">'+data[menuitem].nav_title+'</a> </li>'
						);
					}
				}
				$('#'+item).removeAttr("onclick");
			});
		}
		
	 var setting={ 
		view: {
		 		addHoverDom: addHoverDom,
				removeHoverDom: removeHoverDom,
				selectedMulti: true, 
			},
					
		data:{
				key:{
						children:"children",
						name:"nav_title",
						title:"nav_link",
					},
			},

		  
	};


	window.onload = function() {
	$.get('admin/getAllItem',function(data){
		$.fn.zTree.init($("#treeDemo"), setting,data );
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
		});
	};  
	function addHoverDom(treeId, treeNode) {
		
		var sObj = $("#" + treeNode.tId + "_span");
		if (treeNode.editNameFlag || $("#addBtn_"+treeNode.tId).length>0) return;
		var addStr = "<span class='button add' id='addBtn_" + treeNode.tId
			+ "' title='add node' onfocus='this.blur();'></span>"+
			"<span class='button edit' id='edit_" + treeNode.tId+ "' title='add edit' onfocus='this.blur();'></span>"+
			"<span class='button remove' id='remove_" + treeNode.tId+ "' title='add remove' onfocus='this.blur();'></span>";
		sObj.after(addStr);
		var btn = $("#addBtn_"+treeNode.tId);
		var edit=$("#edit_"+treeNode.tId);
		var remove=$("#remove_"+treeNode.tId);
		//增加
		if (btn) btn.bind("click", function(treeId){
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			var additem={
						nav_pid:treeNode.nav_Id,
						nav_link:treeNode.nav_link,
						nav_title:treeNode.nav_title,
						nav_Id:treeNode.nav_Id,
			};
			$("#json").html(JSON.stringify(treeNode));
			zTree.addNodes(treeNode,additem);
			$.get('admin/addItem',{link:treeNode.nav_link,title:treeNode.nav_title,pid:treeNode.nav_Id})
			return false;
		}); 
		
		//编辑
		if (edit) edit.bind("click", function(){			
			 var edititem = '<span id="editclick" nowrap >标题：<input type="text" value='+treeNode.nav_title+'  id="edit_title"/>'+'链接：<input type="text"  id="edit_link"  value='+treeNode.nav_link+' />'+'<a href="javascript:void(0);" id="editSure">确定</a>'+'<a href="javascript:void(0);" id="editCancel">取消</a></span>'
			 sObj.append(edititem);
				 var itemedit=$("#editSure");
				 var itemCancel=$("#editCancel");
			 	if(itemedit) itemedit.bind("click", function(treeId){
			 		treeNode.nav_title=document.getElementById("edit_title").value;	
			 		if(document.getElementById("edit_link").value=='/'){
			 			treeNode.nav_link='';
			 		}
			 		else{
			 			treeNode.nav_link=document.getElementById("edit_link").value;
			 		}
			 		$.get('admin/updateItem',{id:treeNode.nav_Id,title:treeNode.nav_title,link:treeNode.nav_link});
			 		sObj.html(treeNode.nav_title);
			 	});
			 	if(itemCancel) itemCancel.bind("click", function(treeId){
			 		sObj.html(treeNode.nav_title);
			 	});
			return false;
		});
		
		//删除
		if (remove) remove.bind("click", function(){
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			  if(confirm("确定要进行此操作吗？"))
		      {
				  $.get('admin/deleteItem',{id:treeNode.nav_Id});
				  zTree.removeNode(treeNode);
		        }			
			
			//
			
			return false;
		});
		
	};
	function removeHoverDom(treeId, treeNode) {
		$("#addBtn_"+treeNode.tId).unbind().remove();
		$("#edit_"+treeNode.tId).unbind().remove();
		$("#remove_"+treeNode.tId).unbind().remove();
	};

	
	
	

</script>
	
	</html>