<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
</head>
<body>
	<c:forEach var="n" begin = "0" end = "10" step = "2">
		<c:out value = "${n }"/>
	</c:forEach>
</body>
</html>