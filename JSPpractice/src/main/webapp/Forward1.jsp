<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>タイトル</title>
</head>
<body>

	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String kana= request.getParameter("kana");
	String character = request.getParameter("character");
	String prefecture = request.getParameter("prefecture");
	String mail = request.getParameter("mail");
	String job = request.getParameter("job");
	String color = request.getParameter("color");
	String colorOther = request.getParameter("colorOther");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String memo = request.getParameter("memo");
%>
	<p>
		名前：<%= name %></p>
	<p>
		カナ：<%= kana%></p>
	<p>
		性別：<%= character %></p>
	<p>
		在住都道府県：<%= prefecture %></p>
	<p>
		メールアドレス：<%= mail %></p>
	<p>
		仕事：<%= job %></p>
	<p>
		好きな色：<%= color %></p>
	<p>
		色その他：<%= colorOther %></p>
	<p>
		生年月日：<%= year %>年<%= month %>月<%= day %>日
	</p>
	<p>
		お問い合わせ：<%= memo %></p>
</body>
</html>