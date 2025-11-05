<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>

</head>
<body>
	<table border = "1">
		<c:forEach var = "no" begin = "1" end = "5" step = "1">
			<tr>
				<td>1</td><td>2</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>