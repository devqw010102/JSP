<%@ page contentType = "text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "dto.Book" %>
<%@ page import = "dao.BookRepository" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- <link rel = "stylesheet" href = "./resources/css/bootstrap.min.css" /> -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
	<title>도서 목록</title>
</head>
<body>
	<div class = "container py-4">
		<%@ include file = "menu.jsp" %>
		
		<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
			<div class = "container-fluid py-5">
				<h1 class = "display-5 fw-bold">도서목록</h1>
				<p class = "col-md-8 fs-4">BookList</p>
			</div>
		</div>
		
		<%
			BookRepository dao = BookRepository.getInstance();
			ArrayList<Book> listOfBooks = dao.getAllBooks();
			
			
			// ArrayList에 있는 listOfBooks 변수를 forEach에 사용 못하는 이유는
			// listOfBooks 변수가 지역변수이기 때문에, ${listOfBooks}에 인식하지 못함
			// ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
			
			// 따라서 아래와 같이 request로 저장하여 ${listOfBooks}에서도 사용할 수 있게 해야함.
			// JSTL forEach로 변경하기 위해서 setAttribute로 배열에 있는 데이터를
			// 안전하게 book.jsp로 가져와야 함
			
			// request.setAttribute("listOfBooks", listOfBooks);
		%>
		
		<div class = "col-md-4">
			<p> <a href = "./addBook.jsp" class = "btn btn-primary" role = "button">도서 등록 &raquo;</a>
		</div>
		
		<div class = "row align-items-md-stretch text-center">
			<%
				for(int i = 0; i < listOfBooks.size(); i++) {
					Book book = listOfBooks.get(i);	
			%>
			<div class = "col-md-4">
				<div class = "h-100 p-2">
					<img src = "./resources/images/<%= book.getFilename() %>" style = "width : 250px; height : 350px" />
					<h5><b><%= book.getName() %></b></h5>
					<p> <%= book.getAuthor() %>
					<br><%= book.getPublisher() %> | <%= book.getReleaseDate() %>
					<p> <%= book.getDescription().length() > 60 
        					? book.getDescription().substring(0, 60) + "" : book.getDescription() %>
					</p>
					<p> <%= book.getUnitPrice() %>원
					<p> <a href = "./book.jsp?id=<%=book.getBookId() %>" class = "btn btn-secondary" role = "button">상세 정보 &raquo;</a>
				</div>		
			</div>
			
			<%
				}
			%>
			<!--  
			<c:forEach var = "book" items = "${listOfBooks }">
				<div class = "col-md-4">
					<div class = "h-100 p-2">
						<h5><b>${book.name }</b></h5>
						<p>${book.author }</p>
						<br> ${book.publisher } | ${book.releaseDate }
						<p>${book.description.substring(0, 60) }...</p>
						<p>${book.unitPrice }원
					</div>
				</div>
			</c:forEach>
			-->
		</div>
		<%@ include file = "footer.jsp" %>
	</div>
</body>
</html>