<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/frame/main/footer.css">


<title>Insert title here</title>
<style>
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
}

nav {
	grid-area: nav;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
	background-color: gray;
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
	background-color: gray;
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

.li{
    margin-left: 30px;
}

.bar-menu { 
    display: none; 
}

button {
	width : 10rem;
}

label {
	line-height : 3rem;
/* 	width : 5rem; */
}
table, td,th{
text-align:center;
border:1px solid black;
}
</style>

</head>
<body>
	<div id="container">
		<header>
		<h1>임시 헤더</h1>
<%--            <%@ include file="../frame/mypage/header.jsp" %> --%>
        </header>
		<nav>
			<h2>관리자 페이지</h2>
		</nav>
		<main>
			<div id="sec1">
				<div id="menu-bar">
				
				<ul>
				<a style="text-decoration:underline" href="${pageContext.request.contextPath}/viser/main"><h2>Main Page</h2></a>
				<h2>쇼핑몰</h2>
					<li><a href="${pageContext.request.contextPath}/viser/CSOrderInfo">고객 주문 정보</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/shop-add">상품 등록</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/modify/home">상품 수정</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/delete/home">상품 삭제</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/notice/delete/공지사항">공지사항 등록/수정/삭제</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/QNA/delete/자주묻는질문">자주묻는질문 등록/수정/삭제</a></li>
				</ul>
				<ul><h2>호텔</h2>
					<li>예약 확인</li>
					<li>이모 저모</li>
				</ul>
			</div>
			</div>
			<div id="sec2">
			<h1>고객 정보</h1>
			<table>
			<tr>
			<th>고유 아이디</th>
			<th>고객명</th>
			<th>고객 아이디</th>
			<th>주소</th>
			<th>우편번호</th>
			<th>폰번호</th>
			<th>성별</th>
			<th>관리자? 고객? Y==관리자</th>
			<th>배송상태</th>
			<th>주문정보 들어가기</th>
			</tr>
			<c:forEach var="list" items="${list}">
			<form action="${pageContext.request.contextPath}/viser/CSOrderInfo/${list.id}">
			<tr>
			<td>${list.id}</td>
			<td>${list.memName}</td>
			<td>${list.memId}</td>
			<td>${list.memAddress}${list.memDetailaddress}</td>
			<td>${list.memOaddress}</td>
			<td>${list.memPhone}</td>
			<td>${list.memGender }</td>
			<td>${list.agree }</td>
			<th><select name="orderStatus" id="orderStatus">
			<option value="배송준비중">배송준비중</option>
			<option value="배송중">배송중</option>
			<option value="배송완료">배송완료</option>
			</select></th>
			<td><button>go go move move</button></td>
		</tr>
		</form>
		</c:forEach>
			</table>
			
			
			
			</div>
		</main>
		<footer>
		<h1>임시 푸터</h1>
<%-- 			<%@ include file="../frame/main/footer.jsp"%> --%>
		</footer>
		</div>
</body>
</html>