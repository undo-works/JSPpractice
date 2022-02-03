<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポスト送信</title>
</head>
<body>
	<p>・電話番号を入力してください。</p>
	
	<form action="./PostForm.jsp" method="post">
		<input type="text" name="tel">
		<input type="submit" value="送信する">
	</form>
	
	<p>電話番号：<%= request.getParameter("tel") %></p>
</body>
</html>