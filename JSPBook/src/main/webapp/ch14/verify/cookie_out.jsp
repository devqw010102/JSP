<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] c = request.getCookies();
	
		for(int i = 0; i < c.length; i++) {
			c[i].setMaxAge(0);
			response.addCookie(c[i]);
		}
		
		response.sendRedirect("cookie.jsp");
	%>
</body>
</html>