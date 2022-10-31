<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	color: rgb(214, 214, 214);
	width: 200px;
}

a:hover {
	color: white;
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
	line-height : 1.5rem;
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
		<h1>임시 헤더</h1>
<%--            <%@ include file="../frame/mypage/header.jsp" %> --%>
        </header>
		<nav>
			<h2>관리자 페이지</h2>
		</nav>
		<main>
			<div id="sec1">
				<div id="menu-bar">
				<ul><h2>쇼핑몰</h2>
					<li><a href="${pageContext.request.contextPath}/viser/proc-add">상품 등록</a></li>
					<li>상품 수정</li>
					<li>상품 삭제</li>
				</ul>
				<ul><h2>호텔</h2>
					<li>예약 확인</li>
					<li>이모 저모</li>
				</ul>
			</div>
			</div>
			<div id="sec2">
			<form id="sec2-form" action="${pageContext.request.contextPath}/viser/add-success">
				<label for="proc_name"><p>상품 이름</p><input type="text" name="productName" id="proc_name"/></label>
				<label for="proc_shop"><p>업체 이름</p><input type="text" name="productShop" id="proc_shop"/></label>
				<label for="proc_image"><p>상품 썸네일</p><input type="text" name="productImage" id="proc_image"/></label>
				<label for="proc_content"><p>상품 이미지</p><input type="text" name="productContent" id="proc_content"/></label>
				<label for="proc_category"><p style="width: 9.6rem;">카테고리</p>
					<select id="proc_category" name="productCategory">
						<option value="choice">카테고리를 선택하세요</option>
						<option value="line">-----------------</option>
						<option value="home">Home</option>
						<option value="Walk">Walk</option>
						<option value="Carrier">Carrier</option>
						<option value="Clothes">Clothes</option>
						<option value="Dining">Dining</option>
						<option value="Grooming">Grooming</option>
						<option value="Toy">Toy</option>
						<option value="Food">Food</option>
					</select>
				</label>
				<label for="proc_price"><p>상품 가격</p><input type="text" name="productPrice"></label>
				
					<button>상품 등록</button>
				
				</form>
			</div>
		</main>
		<footer>
		<h1>임시 푸터</h1>
<%-- 			<%@ include file="../frame/main/footer.jsp"%> --%>
		</footer>
		</div>
</body>
</html>