<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Session</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("userID");
	
		if(id == null || id.equals("")) {
			response.sendRedirect("session_out.jsp");
		}
	%>
	
	<p> <%= id %>님 반갑습니다.
	<p><a href = "session_out.jsp">로그아웃</a>
</body>
</html>