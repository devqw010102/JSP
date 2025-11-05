<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.lang.Math" %>
<html>
<head>
	<title>Directives Tag</title>
</head>
<body>
	<%	out.println("현재 날짜 : " + new Date()); %> 
	<br>
	<% out.println("5의 제곱 : " + Math.pow(5, 2)); %>
</body>
</html>