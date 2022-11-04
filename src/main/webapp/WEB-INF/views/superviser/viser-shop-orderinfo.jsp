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
input{
width:80px;
border:none;
text-align:center;
background-color:black;
color:white;
cursor:pointer;
}
button{
cursor:pointer;
background-color:black;
color:white;
width:50px;
height:50px;
}

.grid-container{
	display:grid;
	
	grid-template-columns: 1fr;
	text-align:center;
}
table{
width:100%;
height:100px;
font-size:12px;
border:1px solid black;
 overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
th,td{
border:1px solid black;
}
.black{
background-color:black;
color:white;
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

img{
width:75px;
height:75px;

}

.CSInfo h1{
width:82%;
}
#pid{
border:none;
background-color:white;
color:black;
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
				<h1>배송 상태</h1>
				<c:forEach var="list" items="${list}">
				<form action="${pageContext.request.contextPath}/viser/CSOrderModify">
				<table>
				<tr>
				<th>고유 번호</th>
				<th>고객명</th>
				<th>주소</th>
				<th>우편번호</th>
				<th>폰번호</th>
				<th>상품 고유 번호</th>
				<th>상품 이름</th>
				<th>상품 이미지</th>
				<th>상품 가격</th>
				<th>상품 수량</th>
				<th>가격 * 수량</th>
				<th class="black">배송 상태</th>
				<th>배송시 주의사항</th>
				<th class="black">배송 상태 수정</th>
				</tr>
				<tr>
				<th>${list.id}</th>
				<th>${list.receiverName}</th>
				<th>${list.receiverAddress2}${list.receiverAddress3}</th>
				<th>${list.receiverAddress1}</th>
				<th>${list.receiverPhone}</th>
				<th><input type="text" name="productId" id="pid" value="${list.productId}"/></th>
				<th>${list.productName}</th>
				<th><img src="${list.productImage}" alt="" /></th>
				<th>${list.productPrice}</th>
				<th>${list.productCount}</th>
				<th>${list.orderPrice}</th>
				<th class="black"><input type="text" name="orderStatus" value="${list.orderStatus}" /></th>
				<th>${list.orderMsg }</th>
				<th class="black"><button>수정</button></th>
				</tr>
				</form>
				</table>
			
					
			
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