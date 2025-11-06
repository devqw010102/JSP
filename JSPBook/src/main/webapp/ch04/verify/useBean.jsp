<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<jsp:useBean id = "bean" class = "ch04.com.dao.GuGuDan" />
	<%
		for(int i = 1; i < 10; i++) {
			out.println("5 * " + i + " = " + bean.process(i));			
	
	%>
	<br>
	<%
		}
	%>
	
	
	
</body>
</html>