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
	grid-template-areas: 'header header' 'nav nav' 'sec1 sec2'
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

#sec1>ul>li:hover>ul {
	display: block;
}

#sec1 {
	grid-area: sec1;
	display: flex;
	background-color: gray;
	height: 100%;
	align-items: center;
	padding-left: 2.4rem;
}

#sec2 {
	grid-area: sec2;
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
</style>

</head>
<body>
	<div id="container">
		<header>
			<h1>Déng Nuri</h1>
		</header>
		<nav>
			<h2>관리자 페이지</h2>
		</nav>
		<main>
			<section id="sec1">
				<ul>
					<li>
						<h2>SHOP 관리</h2>
						<ul class="bar-menu">
							<li><a href="">상품 등록</a></li>
							<li><a href="">상품 수정</a></li>
							<li><a href="">상품 삭제</a></li>
							<li><a href="">주문 확인</a></li>
						</ul>
					</li>
					<li>
						<h2>HOTEL 관리</h2>
						<ul class="bar-menu">
							<li><a href="">예약 확인</a></li>
							<li><a href="">가격 수정</a></li>
						</ul>
					</li>
					<li><h2>BOARD</h2>
						<ul class="bar-menu">
							<li><a href="">고객 정보</a></li>
							<li><a href="">QnA</a></li>
						</ul></li>
				</ul>


			</section>
			<section id="sec2"></section>
		</main>
		<footer>
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
</body>
</html>