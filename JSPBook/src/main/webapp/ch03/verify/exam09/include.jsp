<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.util.Calendar" %>
<html>
<head>
	<title>Directives Tag</title>
</head>
<body>

	<%@ include file = "header.jsp" %>
	<%
		out.println("현재 시간 : " + Calendar.getInstance().getTime());
	%>
</body>
</html>