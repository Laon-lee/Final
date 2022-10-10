<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/bbs4_1/content">
	<label for="userid"></label>id : <input type="text" id="userid" name="userid" />
	<label for="pw"></label>p/w : <input type="password" id="password" name="password" />
	<button>login</button>
</form>
</body>
</html>