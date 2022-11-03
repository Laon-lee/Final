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


.grid-container{
	display:grid;
	grid-template-columns: 1fr;
	text-align:center;
}
#id,#productId{
width:20px;
text-align:center;
}
#receiverName{
width:50px;
text-align:center;
}
#receiverAddress1{
width:60px;
text-align:center;
}
#receiverAddress2{
width:100px;
text-align:center;
}
#receiverAddress3{
width:70px;
text-align:center;
padding-top: 3px;
}
#productName{
width:200px;
 white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
#productPrice{
width:70px;
text-align:center;
}
#productCount{
width:15px;
text-align:center;
}
#orderPrice{
width:70px;
text-align:center;
}
#orderStatus{
width:70px;
text-align:center;
}
input{
border:none;
background-color:black;
color: white;
height:30px;
cursor:pointer;
border-radius:5px;
margin-right:1rem;
}
input:hover{
background-color:white;
color: black;
}
label{
margin-right:1rem;
font-weight:600;
}
span{
display:inline-block;

height:40px;
padding-bottom:10px;
border-radius:10px;
}
button{
border-radius:10px;
background-color:black;
color:white;
width:350px;
height:40px;
cursor:pointer;
font-size:1rem;
font-weight:bold;
}
button:hover{
background-color:white;
color:black;
}
img{
width:100px;
height:100px;
margin-bottom:-50px;
}
p{

text-align:left;
border:1px solid darkgray;
}
.CSInfo h1{
width:82%;
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
				<a href="${pageContext.request.contextPath}/viser/main"><h2>Main Page</h2></a>
				<h2>쇼핑몰</h2>
					<li><a style="text-decoration:underline" href="${pageContext.request.contextPath}/viser/CSOrderInfo">고객 주문 정보</a></li>
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
				<div class="grid-container">
				<div class="CSInfo">
				<h1>고객 정보</h1>
				<c:forEach var="list" items="${list}">
				<form action="${pageContext.request.contextPath}/modify/CS/info">
				<p> <span><label>고객 고유 번호 :</label><input type="text" name="id" id="id" value="${list.id}" readonly/> </span>
					<span><label>고객 이름 :</label><input type="text" name="receiverName" id="receiverName" value="${list.receiverName}"/></span>
					<span><label>우편번호 :</label><input type="text" name="receiverAddress1" id="receiverAddress1" value="${list.receiverAddress1}"/></span>
					
					<span><label>배송지 :</label><input type="text" name="receiverAddress2" id="receiverAddress2" value="${list.receiverAddress2}"/>
					<input type="text" value="${list.receiverAddress3}" name="receiverAddress3" id="receiverAddress3"/></span>
					<span><label for="">상품 고유 번호 :</label><input type="text" id="productId" name="productId" value="${list.productId}" readonly/></span>
					<span><label for="">상품 이름 :</label><input type="text" id="productName" name="productName" value="${list.productName}" readonly/></span>
					<span><label for="">상품 이미지 :</label><img src="${list.productImage}" alt="" /></span>
					<span><label for="">상품 가격 :</label><input type="text" id="productPrice" name="productPrice" value="${list.productPrice}"/></span>
					<span><label for="">상품 수량 :</label><input type="text" id="productCount" name="productCount" value="${list.productCount}"/></span>
					<span><label for="">가격*수량 :</label><input type="text" id="orderPrice" name="orderPrice" value="${list.orderPrice}"/></span>
					<span><label for="">배송 상태 :</label><input type="text" id="orderStatus" name="orderStatus" value="${list.orderStatus}"/></span>
					
					<span><label>배송시 주의사항 :</label><input type="text" value="${list.orderMsg}"/> </span>
					<button>정보수정</button>
						</p>
					</form>
			
				</c:forEach>
				</div>

				</div>
				
			</div>
		</main>
		<footer>
		<h1>임시 푸터</h1>
<%-- 			<%@ include file="../frame/main/footer.jsp"%> --%>
		</footer>
		</div>
</body>
</html>