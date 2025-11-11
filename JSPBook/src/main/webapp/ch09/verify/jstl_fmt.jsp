<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	    String lang = request.getParameter("language");
	    if(lang == null || lang.isEmpty()) lang = "ko"; // 기본 영어
	    
	    request.setAttribute("lang", lang);
	%>
	<fmt:setLocale value="${lang}" scope="session"/>
	<fmt:setBundle basename="ch09.com.bundle.examBundle" var="msgs"/>


	<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
	
	<form>
	    <p><fmt:message key="id" bundle="${msgs}"/>: <input type="text" name="id"></p>
	    <p><fmt:message key="password" bundle="${msgs}"/>: <input type="password" name="password"></p>
	    <p>
	        <input type="button" value="<fmt:message key='button' bundle='${msgs}'/>">
	    </p>
	</form>
</body>
</html>