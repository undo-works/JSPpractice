<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL式～リストとマップから～</title>
</head>
<body>
	<%
		List<String> list = Arrays.asList("text0","text1","test2");
		pageContext.setAttribute("texts",list);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("A001", "value1");
		map.put("B002", "value2");
		map.put("C003", "value3");
		pageContext.setAttribute("maps", map);
		
	%>
	${ texts[1] },
	${ maps.C003 }
	<p>テスト</p>
</body>
</html>