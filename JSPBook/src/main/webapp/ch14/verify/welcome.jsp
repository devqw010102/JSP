<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] c = request.getCookies();
		String id = "";
	
		for(int i = 0; i < c.length; i++) {
			if(c[i].getName().equals("ID")) {
				id = c[i].getValue();
				break;
			}
		}
		
		if(id.equals("")) {
			response.sendRedirect("cookie_out.jsp");
		}
	%>
	
	<h3><%= id %>님 반갑습니다.</h3>
	<p> <a href = "cookie_out.jsp">로그아웃</a>
</body>	
</html>