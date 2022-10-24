<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/4b992414b9.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/shop/header.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/footer.css">
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
body{
    background-color:#e3d5ca;
}

/*승철짱 CSS*/
nav {
      font-family: 'Noto Sans KR', sans-serif;
      margin: 0;
      padding: 0;
    }
    body{
        height:100vh;
    }

    
#container{
	display:grid;
	grid-template-rows:70px 1fr 70px;
	
}
main{
	width:100%;
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
    background-size:contain;
}

#main-text {
    width: 49%;
    height: 450px;
    padding: 50px 10px;
}
#main-text > h4, p ,button, select {
    margin-left: 9px;
}
#main-text > h4 {
  margin-bottom: 10px;
}




#shop-option{
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
    width : 70%;
    height: 30px;
    margin-left: 20px;
    background-color: rgb(28, 25, 25);
    color : white;
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

#main-text > h4 {
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
  margin-bottom : 5rem;
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
.line{
	width:80%;
	height:0%;
	border-top : 2px dotted black;
	padding-bottom : 2rem;
	margin : 0 auto;
}

/* 리뷰를 위한 CSS*/
.review{
	width:60%;
	margin : 0 auto;
	margin-bottom : 2rem;
}
.review img{
	width:100px;
	height:100px;
	margin-left : 20px;
}
.h3{
  margin-top: 55px;
  margin-bottom: 5px;
  margin-left: 10px;
}
#btn2{
  margin-top: 45px;
  margin-bottom: 2px;
}
#fixed{
	font-weight:700;
	display:flex;
	justify-content:center;
	text-align:center;
	position:fixed;
	bottom:7%;
	right:3%;
	border: none;
	width:60px;
	height:60px;
	background-color: lightgray;
	align-items:center;
}

</style>


</head>
<body>
	<div id="fixed">
		<a href="#top">
		TOP
		</a>
	</div>
	<a name="top"></a>
  <div id="container">
 
   <header>
      <%@ include file="../frame/shop/header.jsp" %>
    </header>
	<main>



    <div id="main-box">
        <div id="main-pic">
        </div>

        <div id="main-text">
        <h3>${content.title}</h3>
        <h4>${content.name}</h4>
          <hr />
          
          <br>
          <select id="shop-option">
            <option value="small">small-size</option>
            <option value="medium">medium-size</option>
            <option value="large">large-size</option>
          </select>
          <button id="btn1">선택</button>
          <br>
          <h3 class="h3">Price</h3>
          <p>${content.price}원</p>
          <p>${content.id}</p>
          <br>
          <form action="${pageContext.request.contextPath}/shop/pay/${content.id}">
          <button id="btn2">BUY NOW</button>
        </form>
        <form action="${pageContext.request.contextPath}/shop/orderinfo">
          <button id="btn3">ADD TO CART</button>
        </form><br>
        </div>
      </div>
      
      <div id="sub-box">
        <div id="sub-pic1"></div>
        <div id="sub-text1">
          <h4>${content.content}</h4>
        </div>
        </div>
        
        <div class="line">
        
        </div>
       <div class="review">
       <h4>포이치로, 리뷰 db에 저장된 값을 뿌려준다.구매내역에서 리뷰달기버튼을통해 새로 작성하게함.</h4>
   <h2>review.title</h2>
   <img src="${content.img }" alt="" /><img src="${content.img }" alt="" /><img src="${content.img }" alt="" />
   <p>review.content</p>
   <h3>review.comment</h3>
   </div>
        
      </main>
    <footer>
        <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
</body>
</html>