<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.time.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice03_01</title>
</head>
<body>
	<p>一番目のJSP</p>
	<hr>
	<p>日付・時間の表示</p>
	<%
		LocalDateTime local = LocalDateTime.now();
		out.println(local.getYear()+"年"+local.getMonthValue()+"月"+local.getDayOfMonth()+"日");
		
		String horse;
		int hour;
		if(local.getHour() < 12 ){
			horse = "午前"; 
			hour = local.getHour();
		}else{
			horse = "午後";
			hour = local.getHour() - 12;
		}
		
		out.println(horse+hour+"時"+local.getMinute()+"分");
	%>
	<hr>
	<p>繰り返し処理</p>
	<table>
		<%
			for(int i=1; i<=5; i++){
		%>
		<tr>
			<%
			for(int j=1; j<=5; j++){
		%>
			<td>
				<% out.print(i*j); %>
			</td>
			<% } %>
		</tr>
		<% } %>
	</table>
	<hr>
	<p>宣言部~変数やメソッドを定義~</p>
	<%!
		int num = 0;
		String method(){
			String str = "numの値は、再読み込みで変わる" + "「" + Integer.toString(num) + "」";
			return str;
		}
	%>

	<%
		num++;
		out.println(method());
	%>
	<hr>
	<p>EL式の使用</p>
	<%
		List<String> list = Arrays.asList("要素1","要素2","要素3");
		pageContext.setAttribute("samples", list);
	%>
</body>
</html>