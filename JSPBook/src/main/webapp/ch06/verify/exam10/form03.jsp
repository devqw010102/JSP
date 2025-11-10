<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "form03_process.jsp" method = "post">
		오렌지<input type = "checkbox" value = "Orange" name = "fruit">
		사과<input type = "checkbox" value = "Apple" name = "fruit">
		바나나<input type = "checkbox" value = "Banana" name = "fruit">
		<input type = "submit" value = "전송">
	</form>
</body>
</html>