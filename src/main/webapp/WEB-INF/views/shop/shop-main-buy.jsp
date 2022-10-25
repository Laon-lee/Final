<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/4b992414b9.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap"
	rel="stylesheet">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/frame/main/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/frame/shop/header.css">

<title>Document</title>
<style>
* {
	margin: 0 auto;
	padding: 0 auto;
	box-sizing: border-box;
	
}

html {
	scroll-behavior: smooth;
}

body {
	background-color: white;
}

/*승철짱 CSS*/
nav {
	font-family: 'Noto Sans KR', sans-serif;
	margin: 0;
	padding: 0;
}

body {
	height: 100vh;
}

#container {
	display: grid;
	grid-template-rows: 70px 1fr 70px;
}

main {
	width: 100%;
}

#main-box {
	display: flex;
	width: 90%;
	height: 500px;
	justify-items: center;
	align-items: center;
}

#main-pic {
	width: 49%;
	height: 450px;
	background: url("${content.img}") no-repeat center;
	background-size: contain;
}

#main-text {
	width: 49%;
	height: 450px;
	padding: 50px 10px;
}

#main-text>h4, p, button, select {
	margin-left: 9px;
}

#main-text>h4 {
	margin-bottom: 10px;
}

#shop-option {
	width: 60%;
	border-radius: 5px;
	border: 1px solid white;
	height: 30px;
}

#btn1 {
	height: 30px;
	margin-left: 20px;
}

#btn2, #btn3 {
	width: 70%;
	height: 30px;
	margin-left: 20px;
	background-color: rgb(28, 25, 25);
	color: white;
	border-radius: 3px;
	cursor: pointer;
}

#btn4 {
	margin: 10px;
	width: 92.5%;
	height: 30px;
	border: 0px;
	border-radius: 3px;
	background-color: rgb(29, 223, 29);
	color: white;
}

#main-text>h4 {
	margin-top: 20px;
}

#sub-text {
	color: gray;
	font-size: 0.7rem;
}

option {
	border-radius: 2px;
	border: 1px solid white;
}

/* 중간 sub 내욧ㅇ*/
#sub-box {
	width: 90%;
	padding: 10px 10px;
	margin-bottom: 5rem;
}

#sub-pic1, #sub-pic2, #sub-pic3, #sub-pic4 {
	width: 50%;
	height: 450px;
	background: url("${content.img}") no-repeat center;
	margin-top: 40px;
}

#sub-text1, #sub-text2 {
	width: 50%;
	margin-top: 15px;
}

.line {
	width: 80%;
	height: 0%;
	border-top: 2px dotted black;
	padding-bottom: 2rem;
	margin: 0 auto;
}

/* 리뷰를 위한 CSS*/
.review {
	width: 60%;
	margin: 0 auto;
	margin-bottom: 2rem;
}

.review img {
	width: 100px;
	height: 100px;
	margin-left: 20px;
}

.h3 {
	margin-top: 55px;
	margin-bottom: 5px;
	margin-left: 10px;
}

#btn2 {
	margin-top: 45px;
	margin-bottom: 2px;
}

#fixed {
	font-weight: 700;
	display: flex;
	justify-content: center;
	text-align: center;
	position: fixed;
	bottom: 7%;
	right: 3%;
	border: none;
	width: 60px;
	height: 60px;
	background-color: lightgray;
	align-items: center;
}

#main-box {
	border: 1px solid;
	height: 500px;
	width: 70%;
}

#main1 {
	border: 1px solid;
	width: 500px;
	height: 400px;
	right: 10px;
	background:
		url("https://marlonshop.com/web/product/small/202210/48ab597982e07045fb5414b758ae7b62.jpg")
}

#main2 {
	border: 1px solid;
	width: 500px;
}

#main2>h3 {
	font-size: 1.5rem;
}

#p-line {
	    line-height: 7rem;
}


#size-opt {
	height : 30px;
	width : 90%;
	border : 0.5px solid gray;
	border-radius : 5px;
	color : black;
}
<!-- 헤더 css 임시 -->

	 header {
      z-index: 100;
      background-color: white;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: space-between;
      width: 100vw;
      height: 100%;
    }
	
    nav div {
      width: 100%;
      height: 100%;
    }
	#mainA1{
    font-family: 'Zilla Slab', serif;
    }
    #nav1 {
      padding-top: 35px;
      width: 20vw;
      height: 70px;
    }
	#nav1 ul{
	  margin-left: 20px;
	}
    #nav1 li {
      margin-left: 15px;
    }

    header a {
      cursor: pointer;
    }

    #nav2 {
      padding-top:35px;
      width: 20vw;
      height: 70px;
    }
    #nav2 p{
      width:100%;
    }
    #nav2 ul{
      width: 100%;
      margin-right:20px;
      
    }
    #nav2 li {
      height: 70px;
      margin-left: 15px;
    }

    #nav2 a {
      font-size: 20px;
    }

    /* 검색 아이콘 호버 */
    
    #nav2-li-1stdiv {
      margin:20px 0 20px 0;
      padding:50px;
      display: none;
      position: absolute;
      top:4%;
      left: 0px;
      width: 100vw;
      height: 60vh;
      flex-direction: column;
      z-index: 3;
      justify-content: center;
      align-items: center;
      gap:40px;
      background-color: white;
      }
    .hover-layout1{
        position:absolute;
        top:7%;
        left:0;
        display: none;
        align-items: start;
        width:100vw;
        height:100vh;
        background-color: black;
        opacity: 0.5;
    }
    #nav2-li-1stli:hover div{
      display: flex;
    }
    #nav2-li-2ndli:hover div{
      display: flex;
    }
    #nav2-li-3rdli:hover div{
      display: flex;
    }
    #nav2-li-4thli:hover div{
      display: flex;
    }
    #nav2-searchdiv{
      justify-content: center;
    }
    #nav2-searchdiv button{
      font-size:25px;
    }
    #nav2-li-1stdiv input {
      padding:5px;
      width: 70vw;
      height: 70px;
      font-size:25px;
      outline:none;
    }
    #nav2-li-1stdiv button{
      height:84px;
      width:8vw;
    }
    #btns{
      display: flex;
      flex-wrap: wrap;
      flex-direction: row;
      width:60vw;
      height:40vw;
      justify-content: center;
    }
    #btns button {
      margin:15px;
      width:100px;
      height: 30px;
      border: 1px solid gray;
      background-color: white;
      cursor: pointer;
    }
    #nav2-li-2nddiv{
      margin:20px 0 20px 0;
      padding:50px;
      display: none;
      position: absolute;
      top:4%;
      right: 0px;
      width: 20vw;
      height: 40vh;
      flex-direction: column;
      z-index: 1;
      justify-content: center;
      align-items: center;
      background-color: white;
      }
    #nav2-li-3rddiv{
      margin:20px 0 20px 0;
      padding:50px;
      display: none;
      position: absolute;
      top:4%;
      right: 0px;
      width: 20vw;
      height: 40vh;
      flex-direction: column;
      z-index: 1;
      justify-content: center;
      align-items: center;
      background-color:white;
      }

    #nav2-li-4thdiv{
      margin:20px 0 20px 0;
      padding:50px;
      display: none;
      position: absolute;
      top:4%;
      right: 0px;
      width: 20vw;
      height: 40vh;
      flex-direction: column;
      z-index: 10;
      justify-content: center;
      align-items: left;
      background-color:white;
      }
    #nav2-li-4thdiv input{
      width:300px;
      height:30px;
    }
    #nav2-li-4thdiv button{ 
      width: 308px;
      height: 40px;
      background-color: black;
      color: white;
      margin-top: 40px;
    }
    #nav2-li-4thdiv h4{
      float: left;
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
	/* 헤더 css 끝 */  
</style>


</head>
<body>
	<div id="fixed">
		<a href="#top"> TOP </a>
	</div>
	<a name="top"></a>
	<div id="container">

		<header>
			<%@ include file="../frame/shop/header.jsp"%>
		</header>
		<main>
			<div id="main-box">
				<div id="main1">
					<p>main1</p>
				</div>
				<div id="main2">
					<h3>[콤보] 아이캔터 노-풀 하네스+젠트리쉬</h3>
					<p id="p-line">MADE IN KOREA</p>
					<select id="size-opt">
						<option value="사이즈선택">사이즈를 선택해주세요</option>
						<option value="사이즈선택">----------------------------------------</option>
						<option value="">small</option>
						<option value="">medium</option>
						<option value="">large</option>
					</select>
					<h4>Total</h4>
					<p>{}개</p>
				</div>
			</div>

		</main>
		<footer>
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
	</div>
</body>
</html>