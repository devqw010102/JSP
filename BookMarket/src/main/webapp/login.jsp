<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class = "container py-4">
		<%@ include file = "menu.jsp" %>
		<h1>로그인 페이지 입니다.</h1>

		<form>
		  <div class="mb-3">
		    <label class="form-label">ID</label>
		    <input type="text" class="form-control" id="inputId" value = "">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputPassword1" class="form-label">Password</label>
		    <input type="password" class="form-control" id="inputPassword" value = "">
		  </div>
		  <button type="submit" class="btn btn-primary">Login</button>
		  <button type="submit" class="btn btn-primary">Sign in</button>
		</form>
		<%@ include file = "footer.jsp" %>
	</div>
</body>
</html>

