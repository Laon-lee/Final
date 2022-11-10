<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">


<title>Insert title here</title>
<style>
body{
margin:0px;
padding:0px;
overflow-x:hidden;
}
#container {
	margin: 0 auto;
	padding: 0 auto;
	box-sizing: border-box;
	width: 100vw;
	height: 100vh;
	display: grid;
	grid-template-columns: 300px 1fr;
	grid-template-rows: 120px 100px 1fr 120px;
	grid-template-areas: 'header header' 'nav nav' 'main main'
		'footer footer';
}

header {
	grid-area: header;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color:#f1f1f1;
}

nav {
	grid-area: nav;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
	background-color: black;
	color:white;
}
nav h1{
cursor:pointer;
}
nav h1:hover{
opacity:0.9;
color:white;
}
main{
	display: grid;
	grid-area : main;
	grid-template-columns:300px 1fr;
}

#sec1 {
	height: 100%;
	align-items: center;
 	padding-left: 2.4rem; 
	padding-top:4rem;
	border-right : 2px solid black;
}

#sec2-form {
	display: flex;
    flex-direction: column;
    padding-top : 4rem;
    padding-left : 4rem;

}

footer {
	grid-area: footer;
	
}
footer li{
line-height:100%;
}
footer p{
width:100%;
}
li {
	list-style: none;
	line-height: 3.5rem;
	cursor: pointer;
}

a {
	text-decoration: none;
	color: gray;
	width: 200px;
}

a:hover {
	color: black;
}
.bar-menu { 
    display: none; 
}

button {
	width : 10rem;
	margin-top : 2rem;
	margin-left : 5rem;
}

label {
	line-height : 1.6rem;
}

#proc_category {
width :11rem;
 height : 30px;
}

p {
	display : inline-block;
	width : 10rem;
}


input {
	height : 20px;
	border-radius : 5px;
	
}
</style>

</head>
<body>
	<div id="container">
		<header>
        <%@ include file="../frame/viser/top.jsp"%>
        </header>
		<nav>
				<%@ include file="../frame/viser/header.jsp"%>
		</nav>
		<main>
			<div id="sec1">
				<div id="menu-bar">
				<ul>
			
				<h2>쇼핑몰</h2>
				<li><a href="${pageContext.request.contextPath}/viser/main">쇼핑몰 배송 현황</a></li>
					<li style="text-decoration:underline"><a href="${pageContext.request.contextPath}/viser/shop-add">상품 등록</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/modify/home">상품 수정</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/delete/home">상품 삭제</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/notice/delete/공지사항">공지사항 등록/수정/삭제</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/QNA/delete/자주묻는질문">자주묻는질문 등록/수정/삭제</a></li>
				</ul>
				<ul><h2>호텔</h2>
					<li><a href="${pageContext.request.contextPath}/viser/hotelRes">예약 확인</a></li>
					<li>호텔 추가</li>
				</ul>
			</div>
			</div>
			<div id="sec2">
				<form action="${pageContext.request.contextPath}/viser-hotel-resCheck" method="get">
					<thead>
						<tr>
							<td>예약자 이름</td>
							<td>예약자 번호</td>
							<td>예약자 email</td>
							<td>예약 날짜</td>
							<td>예약 상태</td>
						</tr>
					</thead>
				</form>
			</div>
		</main>
		<footer>
		
				<%@ include file="../frame/main/footer.jsp"%>
		</footer>
		</div>
		
		<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script>

		</script>
		
	
		
		
</body>
</html>