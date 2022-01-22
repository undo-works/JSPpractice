<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.net.URLEncoder" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>URLエンコード＆URLデコード</title>
</head>
<body>
<%
	String url = "PercentEncoding.jsp?param=";

	String params = "全/角文?字";
	
	//全角文字・URLに含まれてはいけない文字列があるので、エンコードします。
	String encodedParams = URLEncoder.encode(params, "UTF-8");
	
	url += encodedParams;
%>
	<a href="<%= url %>">自JSPへのリンク</a><br/>	
<%
	String receive = request.getParameter("param");
	if(receive != null){
		//paramのURLデコード
		receive = URLDecoder.decode(receive, "UTF-8");
	}
%>	
<p>パラメータ→<%= receive %></p>

</body>
</html>