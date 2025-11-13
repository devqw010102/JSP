<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.Board" %>
<%@ page import = "dao.BoardRepository" %>
<!DOCTYPE html>
<html>
<head>
<title>게시판 상세페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class = "container py-4">
		<%@ include file = "menu.jsp" %>
		
		<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
			<div class = "container-fluid py-5">
				<h1 class = "display-5 fw-bold">게시판 상세페이지</h1>
				<p class = "col-md-8 fs-4">BoardDetail</p>
			</div>
		</div>
		
		<%
			String id = request.getParameter("id");
			BoardRepository dao = BoardRepository.getInstance();
			Board board = dao.getBoardById(id);
		%>
		
		<table class = "table table-striped">
			<tr>
				<th colspan='2'><%= id %></th>
			</tr>
			<tr>
				<th class = "col-1 text-start">제목</th>
				<td><%= board.getTitle() %> </td>
			</tr>
			<tr>
				<th class = "col">내용</th>
				<td>
					<p> <%= board.getDetail() %></p>
					<% if(board.getFilename() != null){ %>
					<img src = "./resources/boardImages/<%= board.getFilename() %>" style = "width : 100px; height : 100px " />
					<% } %>
				</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%= board.getName() %></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><%= board.getDate() %></td>
			</tr>
		</table>
		
		<div class = "row align-items-md-stretch">
			<div class = "col-md-12">
				<a href = "./board.jsp" class = "btn btn-secondary">게시판 목록 &raquo;</a>
			</div>
		</div>
		<jsp:include page = "footer.jsp" />
	</div>
</body>
</html>