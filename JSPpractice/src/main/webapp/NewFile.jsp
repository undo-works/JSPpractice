<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>タイトル</title>
</head>
<body>
	<p>情報を入力してください</p>
	<form action="./Forward1.jsp" method="post">
		<b>お名前</b> <input type="text" name="name"></input> <input
			type="submit" value="送信"></input>
	</form>

	<p>
		文字化けを治す方法は<a
			href="https://blanche-toile.com/web/tomcat-form-input-garbled">コチラ</a>
	</p>
</body>
</html>