<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/bbs6/content">
		<label for="userid">아이디 : <input type="text" id="userid" name="userid" /></label><br />
		<label for="password">비밀번호 : <input type="password" id="password" name="password" /></label><br />
		<button>가자!!</button>
	
	</form>
</body>
</html>