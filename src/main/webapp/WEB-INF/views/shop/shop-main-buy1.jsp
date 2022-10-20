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

body{
    background-color:#e3d5ca;
}

/*header {
    width: 90%;
    border-bottom: 3px solid black;
    background-color:#e3d5ca;
}

#head-logo{
    width: 20%;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100px;s
    
}

#head-icon{
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
    background-color: #e3d5ca;
}

nav > a {
    margin-left: 15px;
}
*/

/*승철짱 CSS*/
nav {
      font-family: 'Noto Sans KR', sans-serif;
      margin: 0;
      padding: 0;
    }
    body{
        height:100vh;
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
    background: url("${pageContext.request.contextPath}/image/shop/NewImg12.jpg") no-repeat center;
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
    width : 45%;
    height: 30px;
    margin-left: 10px;
    background-color: rgb(28, 25, 25);
    color : white;
    border-radius: 3px;
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
}

#sub-pic1, #sub-pic2, #sub-pic3, #sub-pic4 {
  width: 50%;
  height: 450px;
  background: url("imgs/main_pic.png");
  margin-top: 40px;
}

#sub-text1, #sub-text2 {
  width: 50%;
  margin-top: 15px;

}


/* 리뷰를 위한 CSS*/
#review {
  margin-top: 40px;
  width: 90%;
  border-bottom: 3px solid rgb(65, 65, 65);
}

#review > #review-text > h3{
  display: flex;
}

#review > #review-text > h4{
  display: flex;
}

#review-box {
  width: 90%;
  
  display: flex;
  margin: 0 auto;

}

#review-pic1, #review-pic2, #review-pic3, #review-pic4 {
  height: 280px;
  margin-top: 10px;
  width: 24%;
}

#review-pic1 {
  background: url("imgs/제목\ 없음.png");
}

#review-pic2 {
  background: url("imgs/main_pic.png");
}
#review-pic3 {
  background: url("imgs/main_pic.png");
}
#review-pic4 {
  background: url("imgs/main_pic.png");
}

#review-text {
  width: 90%;
  height: 300px;
  display: flex;
  margin: 0 auto;

}

#review-text1, #review-text2, #review-text3, #review-text4 {
  height: 200px;
  margin-top: 10px;
  width: 24%;
}
</style>


</head>
<body>
  <div id="container">
 
   <header>
      <%@ include file="../frame/shop/header.jsp" %>
    </header>




    <div id="main-box">
        <div id="main-pic">
        </div>

        <div id="main-text">
          <h4>뮤니쿤트 Easy Fit All In One</h4>
          <p id="sub-text">이 제품은 1955년 영국에서 시작되어서 어쩌고 저쩌고</p>
          <br>
          <p>이 제품은 사실 중국산이다 멍청이들아</p>
          <p>MADE IN KOREA</p>
          <br>
          <select id="shop-option">
            <option value="small">small-size</option>
            <option value="medium">medium-size</option>
            <option value="large">large-size</option>
          </select>
          <button id="btn1">선택</button>
          <br>
          <h4>Total</h4>
          <p>(진돗) 개</p>
          <br>
          <form action="${pageContext.request.contextPath}/shop/pay">
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
          <h4>프리미엄 구스 다운 베스트, 비스트, 야수</h4>
          <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deleniti nemo accusantium recusandae omnis doloribus asperiores. Provident, perspiciatis qui. Ipsum provident vitae sed quaerat deserunt voluptas libero amet quia omnis placeat!</p>
        </div>
        <div id="sub-pic2"></div>
        <div id="sub-text2">
          <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deleniti nemo accusantium recusandae omnis doloribus asperiores. Provident, perspiciatis qui. Ipsum provident vitae sed quaerat deserunt voluptas libero amet quia omnis placeat!</p>
        </div>
        <div id="sub-pic3"></div>
        
        <div id="sub-pic4"></div>
      </div>
        
      <div id="review">
        <h3>Re:Views</h3>
      </div>
      <div id="review-box">
        <div id="review-pic1"></div>
        <div id="review-pic2"></div>
        <div id="review-pic3"></div>
        <div id="review-pic4"></div>
      </div>
      <div id="review-text">
        <div id="review-text1">
          <h4>제목</h4>
          <p>어머님은 짜장면이 싫다고하셨어</p>

        </div>
        <div id="review-text2">
          <h4>제목</h4>
          <p>어머님은 짜장면이 싫다고하셨어</p>
        </div>
        <div id="review-text3">
          <h4>제목</h4>
          <p>탕수육이 좋다고하셨어</p>
        </div>
        <div id="review-text4">
          <h4>제목</h4>
          <p>또는 깐,, 풍기,,</p>
        </div>
      </div>

    <footer>
        <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
</body>
</html>