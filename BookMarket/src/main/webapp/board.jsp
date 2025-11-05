<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<div class = "container py-4" >
		<%@ include file = "menu.jsp" %>
		<h1>자유게시판.</h1>
		<table class = "table text-center text-align px-4">
			<tr class = "border-bottom fw-bold" style = "height : 40px;">
				<td>No.</td><td>제목</td><td>작성자</td>
			</tr>	
			<c:forEach var="no" begin="1" end="10" step="1">
				<tr class = "border-bottom ">
					<td><c:out value = "${no }"/></td>
					<td><c:out value = "제목${no }"/></td>
					<td><c:out value = "홍길동" /></td>
				</tr>
			</c:forEach>
		</table>
		
		<%@ include file = "footer.jsp" %>
	</div>


</body>
</html>