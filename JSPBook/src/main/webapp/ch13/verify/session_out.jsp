<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Session</title>
</head>
<body>
	<%
		session.invalidate();
		response.sendRedirect("session.jsp");
	%>
</body>
</html>