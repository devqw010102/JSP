<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Locale locale = request.getLocale();
	%>
	
	<p> 언어 : <%= locale.getDisplayLanguage() %>
	<p> 국가 : <%= locale.getDisplayCountry()  %>
</body>
</html>