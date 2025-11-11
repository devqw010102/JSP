<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type = "text/javascript">
	function checkForm() {

		var form = document.loginForm;
		
		if(form.id.value == "") {
			alert("아이디를 입력해주세요.");
			return false;
		}
		
		if(form.pwd.value.includes(form.id.value)) {
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			return false;
		}
		
		form.submit();
	}
</script>
<body>
	<form name = "loginForm" action = "validation_process.jsp" method = "post">
		<p> 아이디 : <input type = "text" name = "id">
		<p> 비밀번호 : <input type = "text" name = "pwd">
		<p><input type = "button" value = "전송" onclick = "checkForm()">
	</form>
</body>
</html>