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
		var regExpPwd = /[a-zA-Z0-9]{3,}/
		
		var pwd = form.pwd.value;
		var pwdCheck = form.pwdCheck.value;
		
		if(pwd != pwdCheck) {
			alert("비밀번호가 일치하지 않습니다.");
			form.pwd.select();
			return;
		}
		
		if(regExpPwd.test(pwd)) {
			alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
			return;
		}
		
		form.submit();
	}
</script>
<body>
	<form name = "loginForm" method = "post">
		<p> 아이디 : <input type = "text" name = "name">
		<p> 비밀번호 : <input type = "text" name = "pwd">
		<p> 비밀번호 확인 : <input type = "text" name = "pwdCheck">
		<p> <input type = "button" value = "전송" onclick = "checkForm()" >
	</form>
</body>
</html>