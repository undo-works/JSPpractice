<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>パラメータの利用</title>
</head>
<body>
<%
	//http://localhost:8080/JSPpractice/Parameter.jsp?param1=0123&param2=%E4%BD%90%E8%97%A4&param2=%E5%A4%AA%E9%83%8E
	String code = request.getParameter("param1");
	String name[] = request.getParameterValues("param2"); 
%>
	<p>パスコード：<%= code %></p>
	<p>名前：
	<% for(String text:name){ %>
	<%= text %>
	<% } %>
	</p>
</body>
</html>