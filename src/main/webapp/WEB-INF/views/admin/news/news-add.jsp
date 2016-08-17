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
		<link href="resources/css/style.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="resources/datetimepicker/css/jquery-ui-1.9.2.custom.min.css" />
		<link rel="stylesheet" type="text/css" href="resources/datetimepicker/css/jquery-ui-timepicker-addon.css" />
		<link rel="stylesheet" type="text/css" href="resources/datetimepicker/css/custom.css" />
	
 		<script type="text/javascript" src="resources/ueditor/ueditor.config.js"></script>
		<script type="text/javascript" src="resources/ueditor/ueditor.all.js"></script>
		<script type="text/javascript" src="resources/ueditor/lang/zh-cn/zh-cn.js"></script>
	<style>
		.container{width:900px;}
		.left{width:400px;float:left;}
		.right{width:400px;float:right;}
		.clear{clear:both;}
		input[type="submit"]{
		margin-top:5px;
		width:100px;
		} 
		input[type="button"]{
		margin-left:2px;
		height:26px;
		width:100px;
		} 
	
	</style>
	</head>
	<body>
	
		<form id="news-add-form" action="admin/news-add">
		<div class="container">
			<div class="left">
				<div class="form-newsTitle left">
		  				<label>标题</label>：<input type="text"  name="newsTitle" id="newsTitle" /><span class="form-message"></span>
		  		</div>
		  		<div class="form-newsAuthor ">
		  				<label>作者</label>：<input type="text" name="newsAuthor" id="newsAuthor" /><span class="form-message"></span>
		  		</div>
		  		<div class="form-datetime ">
		  				<label>提交时间</label>：<input type="text"  name="newsSubmitTime" id="newsSubmitTime" /><span class="form-message"></span>
		  		</div>
		  		<div class="form-newsKeywords ">
		  				<label>关键词</label>：<input type="text" name="newsKeywords" id="newsKeywords" /><span class="form-message"></span>
		  		</div>
		  	</div>
		  	<div class="right">
		  		<div class="form-newsCoverText ">
		  				<label>封面文本</label>：<input type="text"  name="newsCoverText" id="newsCoverText" /><span class="form-message"></span>
		  		</div>
		  		<div class="form-newsCoverPic ">
		  				<label>封面图片</label>：<input type="text" name="newsCoverPic" id="newsCoverPic" /><input type="button" id="uploadImage" onclick="upImage()" value="上传图片" />
		  				<span class="form-message"></span>
		  		</div>
		  		<div class="form-newsIsRecommend ">
		  				<label>推荐</label>：<select name="newsIsRecommend" id="newsIsRecommend">
							<option value="">请选择</option>
							<option value="1">是</option>
							<option value="0">否</option>
						</select>
						<span class="form-message"></span>
		  		</div>
		  	</div>
		  </div>
		  		<div class="form-contains clear">
		  				<label>内容</label>：  <br/>
		  				
		  				<textarea  id="contains"  name="contains">ssss</textarea>
			</div>
			
			<input id="btn-save" value="确认添加" type="submit"  />
			
		</form>
		<script type="text/plain" id="upload_ue"></script>   
	</body>
	<!-- Javascript files -->
		<!-- jQuery -->
		<script type="text/javascript" src="resources/js/jquery/jquery-1.9.0.min.js"></script>
		<script type="text/javascript" src="resources/datetimepicker/js/jquery-ui-1.9.2.core.min.js"></script>
		<script type="text/javascript" src="resources/datetimepicker/js/jquery-ui-1.9.2.datatimeSlider.min.js"></script>
		<script type="text/javascript" src="resources/datetimepicker/js/jquery-ui-timepicker-addon.js"></script>
		<script type="text/javascript" src="resources/datetimepicker/js/jquery-ui-timepicker-zh-CN.js"></script>
		<script type="text/javascript" src="resources/datetimepicker/js/jquery.ui.datepicker-zh-CN.js"></script>
		<script type="text/plain" id="myEditorImage"></script>
		<script type="text/javascript">
		  				 window.UEDITOR_HOME_URL = "/peace/resources/ueditor";
		  				 window.onload = function(){  
		  			        window.UEDITOR_CONFIG.initialFrameWidth = 900;  
		  			        window.UEDITOR_CONFIG.initialFrameHeight = 400;  
		  			        UE.getEditor("contains");  
		  			    }  			
		</script>
		<script>
						var myEditorImage = UE.getEditor("myEditorImage");
						
		  				myEditorImage.ready(function(){
		  					myEditorImage.hide();
		  					myEditorImage.addListener('beforeinsertimage',function(t,arg){
		  						$("#newsCoverPic").attr("value",arg[0].src);
		  					})	
		  				});
		  				
		  				function upImage() {
		  				    var myImage = UE.getEditor("myEditorImage").getDialog("insertimage");
		  				   myImage.open();
		  				}
		</script>
		<script>
		
		
		 $(function() {
			 
			 $('.form-datetime input').datetimepicker({
	             timeFormat: "HH:mm:ss",
	             dateFormat: "yy-mm-dd",
				showSecond:true,
				beforeShow:function(input){
					$(input).css({
						"position":"relative",
						"z-index":9999
					});
				}
	         });
			
			 create_news.initial();
		});

		var create_news = {

			initial : function initial() {
				this.bindSubmitForm();
			},

			bindSubmitForm : function bindSubmitForm() {
				var form = $("form#news-add-form");

				form.submit(function() {
							var result = create_news.verifyInput();
							
							if (result) {
								var data = new Object();
								data.newsTitle = $("#newsTitle").val();
								data.newsAuthor = $("#newsAuthor").val();
								data.newsSubmitTime = new Date($("#newsSubmitTime").val());
								data.newsKeywords = $("#newsKeywords").val();
								data.newsCoverText = $("#newsCoverText").val();
								data.newsCoverPic = $("#newsCoverPic").val();
								data.newsIsRecommend = $("#newsIsRecommend").val();
								data.contains = UE.getEditor('contains').getContent();
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
															+ "admin/news-list";
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
				var check_newsTitle = this.checkNewsTitle();
				var check_newsCoverText = this.checkNewsCoverText();
				alert(check_newsTitle+":"+check_newsCoverText);
				result = check_newsTitle && check_newsCoverText;
				return result;
			},
			
			checkNewsTitle : function checkUsername(){
				var newsTitle = $(".form-newsTitle input").val();
				if (newsTitle == "") {
					$(".form-newsTitle .form-message").text("用户名不能为空");
					$(".form-newsTitle input").focus();
					$(".form-newsTitle input").addClass("has-error");
					return false;
				}
				return true;
			},
			
			checkNewsCoverText : function checkNewsCoverText(){
				var newsCoverText = $(".form-newsCoverText input").val();
				if (newsCoverText.length>50) {
					$(".form-newsCoverText .form-message").text("内容过长，请保持在50个字符以内");
					$(".form-newsCoverText input").focus();
					$(".form-newsCoverText input").addClass("has-error");
					return false;
				}
				return true;
			}
		};
		</script>
	</html>