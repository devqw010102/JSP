<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel = "stylesheet" href = "./resources/css/bootstrap.min.css" />
	<title>게시판 글 등록</title>
</head>
<body>
	<div class = "container py-4" >
		<%@ include file = "menu.jsp" %>
		
		<div class = "p-5 mb04 bg-body-tertiary rounded-3">
			<div class = "container-fluid py-5">
				<h1 class = "display-5 fw-bold">글쓰기</h1>
				<p class = "col-md-8 fs-4">Board Write</p>
			</div>
		</div>
		
		<div class = "row align-items-md-streetch">
			<form name = "newBoard" action = "./processAddBoard.jsp" class = "form-horizontal" method = "post" enctype = "multipart/form-data">
				<div class = "mb-3 row">
					<label class = "col-sm-2">No</label>
					<div class = "col-sm-3">
						<input type = "text" id = "boardId" name = "boardId" class = "form-control">
					</div>
				</div>	
				<div class = "mb-3 row">
					<label class = "col-sm-2">제목</label>
					<div class = "col-sm-3">
						<input type = "text" id = "title" name = "title" class = "form-control">
					</div>
				</div>	
				<div class = "mb-3 row">
					<label class = "col-sm-2">내용</label>
					<div class = "col-sm-3">
						<textarea id = "detail" name = "detail" cols = "50" rows = "2" class = "form-control" > </textarea>
					</div>
				</div>
				<!--  첨부파일(이미지) -->
				<div class = "mb-3 row">
					<label class = "col-sm-2">첨부파일</label>
					<div class = "col-sm-5">
						<input type = "file" name = "boardImage" class = "form-control">
					</div>
				</div>
				<div class = "mb-3 row">
					<label class = "col-sm-2">작성자</label>
					<div class = "col-sm-3">
						<input type = "text" id = "name" name = "name" class = "form-control">
					</div>
				</div>
				<div class = "mb-3 row">
					<div class = "col-sm-offset-2 col-sm-10">
						<input type = "submit" class = "btn btn-primary" value = "글쓰기 " />
						<input type = "button" class = "btn btn-secondary" value = "게시판목록 &raquo;" onclick="history.back()" />  
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>