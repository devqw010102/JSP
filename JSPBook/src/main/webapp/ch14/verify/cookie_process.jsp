<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Cookie</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.equals("admin") && pwd.equals("1234")) {
			Cookie ckId = new Cookie("ID", id);
			response.addCookie(ckId);
			
			response.sendRedirect("welcome.jsp");
		}
		else {
			response.sendRedirect("welcome.jsp");
		}
	%>
</body>
</html>