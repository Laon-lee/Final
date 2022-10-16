<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {
	margin: 0 auto;
	padding: 0 auto;
	box-sizing: border-box;
}

body {
	background-color: #F5EBE0;
}

header {
	width: 90%;
	border-bottom: 3px solid black;
	background-color: #F5EBE0;
}

#head-logo {
	width: 20%;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100px;
	s
}

#head-icon {
	display: flex;
	position: relative;
	width: 25%;
	left: 400px;
	bottom: 45px;
}

nav {
	width: 90%;
	height: 100px;
	padding: 10px 10px;
	margin-top: 10px;
	gap: 10px;
	display: flex;
	justify-content: space-between;
	background-color: #F5EBE0;
}

#art1 {
	width: 90%;
	height: 300px;
	display: flex;
	justify-content: center;
	background: url("imgs/main_pic.png") no-repeat;
	background-size: 100%;
}

#art1>h2 {
	text-align: center;
	justify-content: center;
}

#art2 {
	width: 90%;
	height: 100px;
	display: flex;
	justify-content: center;
	align-items: center;
}

#art3 {
	width: 90%;
	height: 130px;
	display: flex;
	justify-content: center;
}

#art4 {
	width: 90%;
	height: 150px;
	display: flex;
	justify-content: center;
	margin-top: 10px;
}

#item-box1 {
	width: 19%;
	background: url("imgs/main_pic.png") no-repeat;
	background-size: 100%;
}

#item-box2 {
	width: 19%;
	background: url("imgs/main_pic.png") no-repeat;
	background-size: 100%;
}

#item-box3 {
	width: 19%;
	background: url("imgs/main_pic.png") no-repeat;
	background-size: 100%;
}

#item-box4 {
	width: 19%;
	background: url("imgs/main_pic.png") no-repeat;
	background-size: 100%;
}

#item-box5 {
	width: 19%;
	background: url("imgs/main_pic.png") no-repeat;
	background-size: 100%;
}

#text-box1 {
	width: 19%;
	padding: 10px 10px;
}

#text-box2 {
	width: 19%;
	padding: 10px 10px;
}

#text-box3 {
	width: 19%;
	padding: 10px 10px;
}

#text-box4 {
	width: 19%;
	padding: 10px 10px;
}

#text-box5 {
	width: 19%;
	padding: 10px 10px;
}

div>p {
	font-size: 0.7rem;
	line-height: 1.3rem;
}

footer {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	width: 100%;
	height: 100px;
	background-color: lightgray;
	justify-content: space-around;
	align-items: center;
}

footer p {
	font-size: 13px;
}

footer li {
	margin: 0 15px 0 15px;
	height: 15px;
}

footer ul {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr;
	grid-template-rows: 1fr 1fr;
}

#footer-1stul {
	width: 150px;
}

#footer-1stul li {
	font-size: 22px;
	font-weight: 900;
	width: 150px;
}

li {
	display: inline-block;
	list-style-type: none;
}

a {
	text-decoration: none;
	color: black;
}

a:visited {
	color: black;
}
</style>


</head>
<body>
	<header>
		<div id="head-logo">
			<h1>
				<a href="#">Déng Nuri</a>
			</h1>
		</div>
		<div id="head-icon">
			<img src="" alt="">ㅇㅇ <img src="" alt="">ㅅㅅ <img src=""
				alt="">ㄹㄹ <img src="" alt="">ㅁㅁ
		</div>
	</header>

	<nav>
		<a href="#" id="nav-1">홈</a> <a href="#" id="nav-2">줄</a> <a href="#"
			id="nav-3">캐리어</a> <a href="#" id="nav-4">옷</a> <a href="#"
			id="nav-5">밥</a> <a href="#" id="nav-6">목욕</a> <a href="#" id="nav-7">장난감</a>
		<a href="#" id="nav-8">큰개</a> <a href="#" id="nav-9">밥</a>

	</nav>

	<a href="#">

		<article id="art1"></article>
	</a>
	<article id="art2">
		<h2>New Arrivals</h2>
	</article>
	<article id="art3">
		<div id="item-box1">
			<a href="#"></a>
		</div>


		<div id="item-box2"></div>
		<div id="item-box3"></div>
		<div id="item-box4"></div>
		<div id="item-box5"></div>
	</article>
	<article id="art4">
		<div id="text-box1">
			<a href="#"><h4>제품1</h4></a> <br>
			<p>제품1이지롱</p>
			<p>2천 만원</p>
		</div>

		<div id="text-box2">
			<a href="#"><h4>제품2</h4></a> <br>
			<p>제품2이지롱</p>
			<p>1억 2천 만원</p>
		</div>

		<div id="text-box3">
			<a href="#"><h4>제품3</h4></a> <br>
			<p>제품3이지롱</p>
			<p>2천 8백 만원</p>

		</div>

		<div id="text-box4">
			<a href="#"><h4>제품4</h4></a> <br>
			<p>제품4이지롱</p>
			<p>3억 2천만원</p>
		</div>

		<div id="text-box5">
			<a href="#"><h4>제품5</h4></a> <br>
			<p>제품5이지롱</p>
			<p>9억 2천 7백 만원</p>
		</div>
	</article>
	<footer>
		<ul id="footer-1stul">
			<li><a href="#">Déng Nuri</a></li>
		</ul>
		<ul>
			<li>
				<p>대표 : 김송이</p>
			</li>
			<li>
				<p>전화번호 : 010-1234-5678</p>
			</li>
			<li>
				<p>이메일 : abcde@abcdef.com</p>
			</li>
			<li>
				<p>팩스번호 : 02-1234-5678</p>
			</li>
			<li>
				<p>영업시간 : 00:00~23:59</p>
			</li>
			<li>
				<p>주소 : 서울특별시 구로구 구디동123-4</p>
			</li>
		</ul>
		<ul id="social">
			<li><a href="#"><img
					src="https://i.ibb.co/LrVMXNR/social-fb.png" alt=""></a></li>
			<li><a href="#"><img
					src="https://i.ibb.co/vJvbLwm/social-twitter.png" alt=""></a></li>
			<li><a href="#"><img
					src="https://i.ibb.co/b30HMhR/social-linkedin.png" alt=""></a></li>
		</ul>
	</footer>
</body>
</html>