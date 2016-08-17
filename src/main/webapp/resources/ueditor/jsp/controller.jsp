<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.baidu.ueditor.ActionEnter"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%

    request.setCharacterEncoding( "utf-8" );
	response.setHeader("Content-Type" , "text/html");
	
	String rootPath = application.getRealPath( "/" );
		//rootPath:C:\Program Files (x86)\tomcat-7.0.62\wtpwebapps\peace\
	
	out.write( new ActionEnter( request, rootPath ).exec() );
	

%>