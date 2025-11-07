<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Board" %>
<jsp:useBean id = "boardDAO" class = "dao.BoardRepository" scope = "session" />
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
	<title>도서 목록</title>
</head>
<body>
	<div class = "container py-4" >
		<%@ include file = "menu.jsp" %>

		<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
			<div class = "container-fluid py-5">
				<h1 class = "display-5 fw-bold">도서 자유게시판</h1>
				<p class = "col-md-8 fs-4">Board</p>
			</div>
		</div>
		
		<table class = "table text-center text-align">
			<tr class = "border-bottom">
				<th class ="col">No.</th><th class ="col text-start">제목</th><th>작성자</th><th>작성일자</th>
			</tr>	
			<%
				ArrayList<Board> listOfBoard = boardDAO.getAllBoard();
				request.setAttribute("listOfBoard", listOfBoard);
			%>
			
			<c:forEach items = "${listOfBoard}" var = "board" varStatus = "status">
				<tr class = "border-bottom">
					<td><c:out value = "${status.count }"/></td>
					<td class = "text-start"><a href = "./boardDetail.jsp?id=${board.getBoardNo() }"> <c:out value = "${board.getTitle()}" /></a>	</td>
					<td><c:out value = "${board.getName()}" /></td>
					<td><c:out value = "${board.getDate()}" /></td>
				</tr>

			</c:forEach>
		</table>
		
		<%@ include file = "footer.jsp" %>
	</div>


</body>
</html>