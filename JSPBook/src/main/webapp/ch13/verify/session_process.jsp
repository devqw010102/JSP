<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Session</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		
		if(user_id != null) {
			session.setAttribute("userID", user_id);
			response.sendRedirect("welcome.jsp");	
		}
	%>
	
</body>
</html>