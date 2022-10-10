<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#container {
	display: flex;
}

#content-box {
	margin: auto;
	width: 500px;
	height: 500px;
	border: 1px solid black;
	align-items: center;
	/* 	justify-content : center; */
	margin-top: 10%;
	border-radius: 5px;
}

#box {
	margin : auto;
	align-items : center;
}

</style>
<style>
</style>
</head>
<body>

	<div id="container">
		<div id="content-box">
			<form action="${pageContext.request.contextPath}/bbs3_1/content" method="get">
				<div id="box">
					<label for="id">아이디</label><input type="text" id="id" name="userid" placeholder="아이디치라"/>
					<label for="pw">비번</label><input type="password" id="pw" name="password" placeholder="비번치라"/>
					<button>비번</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>