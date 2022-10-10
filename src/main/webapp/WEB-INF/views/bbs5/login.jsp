<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/bbs5/content">
	<label for="userid">아이디<input type="text" name="userid"/></label><br />
	<label for="password">비번 : <input type="password" name="pass"/></label><br />
	<button>가자!! 이쿠조!!</button>
</form>
</body>
</html>