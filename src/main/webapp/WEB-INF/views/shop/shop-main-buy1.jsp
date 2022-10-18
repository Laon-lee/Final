<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

    /* 헤더 관련 css*/
	 header {
      z-index: 100;
      background-color: #f5ebe0;
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
      text-align: center;
      width: 200px;
      height: 30px;
    }

    #nav1 li {
      margin-left: 15px;
    }

    header a {
      cursor: pointer;
    }

    #nav2 {
      padding-top:35px;
      width: 350px;
      height: 70px;
    }
    #nav2 p{
      width:100%;
    }
    #nav2 ul{
      width: 350px;
      margin-right:20px;
      
    }
    #nav2 li {
      box-sizing: border-box;
      width:70px;
      height:70px;
      
    }
    #nav2 li:nth-child(3){
      
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
      background-color: rgb(245, 235, 224);

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
      background-color: #f5ebe0;
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
      background-color: rgb(245, 235, 224);
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
      background-color: rgb(245, 235, 224);
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
      background-color: rgb(245, 235, 224);
    
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
	/* 헤더 끝*/



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
    background: url("imgs/제목\ 없음.png");
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


/* 푸터를 위한 css*/
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
    footer p{
      font-size: 13px;
    }
    footer li{
      margin:0 15px 0 15px;
      height:15px;
    }
    footer ul{
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;
      grid-template-rows: 1fr 1fr;
      
    }
    #footer-1stul{
      width:150px;
    }
    #footer-1stul li{
      font-size: 22px;
      font-weight: 900;
      width:150px;
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
  <div id="container">
   <!-- <header>
        <div id="head-logo">
        <h1><a href="#">Déng Nuri</a></h1>
    </div>
        <div id="head-icon">
            <img src="" alt="">ㅇㅇ
            <img src="" alt="">ㅅㅅ
            <img src="" alt="">ㄹㄹ
            <img src="" alt="">ㅁㅁ
        </div>
    </header>

    <nav>
        <a href="#" id="nav-1">홈</a>
        <a href="#" id="nav-2">줄</a>
        <a href="#" id="nav-3">캐리어</a>
        <a href="#" id="nav-4">옷</a>
        <a href="#" id="nav-5">밥</a>
        <a href="#" id="nav-6">목욕</a>
        <a href="#" id="nav-7">장난감</a>
        <a href="#" id="nav-8">큰개</a>
        <a href="#" id="nav-9">밥</a>

    </nav>
    -->

   <header>
      <nav id="nav1">
        <ul>
          <li><a id="mainA2">About Us</a></li>
          <li><a id="mainA3">Shop</a></li>
          <li><a id="mainA4">Hotel</a></li>
        </ul>
      </nav>
      <div>
        <h1><a id="mainA1">Déng Nuri</a></h1>
      </div>
      <nav id="nav2">
        <ul>
          <li id="nav2-li-1stli">
            <a href="#"><p style="font-size: 16px">Search</p></a>
            <div id="hover-layout1" class="hover-layout1">
                
            </div>
            <div id="nav2-li-1stdiv">
              <div id="nav2-searchdiv">
                <input type="text" placeholder="검색하실 물품을 적어주세요"><button>검색</button>
              </div>
              <h2>아래 품목도 검색해보세요.</h2>              
              <div id="btns">
                <button type="button">사료</button>
                <button type="button">영양제</button>
                <button type="button">산책줄</button>
                <button type="button">집</button>
                <button type="button">의류</button>
                <button type="button">장난감</button>
                <button type="button">사료</button>
                <button type="button">영양제</button>
                <button type="button">산책줄</button>
                <button type="button">집</button>
                <button type="button">의류</button>
                <button type="button">장난감</button>
              </div>
              
            </div>
          </li>
          <li id="nav2-li-2ndli">
            <a href="#">
              <p style="font-size: 16px">Notice</p>
            </a>
            <div id="hover-layout2" class="hover-layout1">
                
            </div>
            <div id="nav2-li-2nddiv">
              <h2>알림받아라 인마</h2>
            </div>
          </li>
          <li id="nav2-li-3rdli">
            <a href="#">
              <p style="font-size: 16px;">Wish-List</p>
            </a>
            <div id="hover-layout3" class="hover-layout1">
              
            </div>
            <div id="nav2-li-3rddiv">
              <h2>니가 좋아하는거다!</h2>
            </div>
          </li>
          <c:if test="${sessionScope.user != null}">
          <li id="nav2-li-mypage">
            <a href="${pageContext.request.contextPath}/mypage">
              <p style="font-size: 16px;">MyPage</p>
            </a>
          </li>
          </c:if>
          <li id="nav2-li-4thli">
           <c:if test="${sessionScope.user == null}">
            <a href="#"><p style="font-size: 16px">Login</p></a>
            <div id="hover-layout4" class="hover-layout1">
                
            </div>
            <div id="nav2-li-4thdiv">
              <h4>로그인</h4>
              <br>
              <form action="${pageContext.request.contextPath}/login">
                <h6>아이디</h6>
                <input type="text" name="userid" id="userid">
                <h6>비밀번호</h6>
                <input type="password" name="password" id="password"><br>
                <button>Login</button>
              </form>
              <p style="font-size: 11px; border-bottom:1px solid black; width:130px; margin-top:10px;" >혹시 회원이 아니신가요??</p>
              <a href="${pageContext.request.contextPath}/membership" style="font-size:13px">회원 가입</a>
            </div>
          	</c:if>
          	<c:if test="${sessionScope.user != null}">
          		<a href="${pageContext.request.contextPath}/logout"><p style="font-size: 16px">Logout</p></a>
          	</c:if>
          </li>
        </ul>
      </nav>
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
          <button id="btn2">BUY NOW</button><button id="btn3">ADD TO CART</button><br>
          <button id="btn4">다른 구매 방법</button>
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
            <li><a href="#"><img src="https://i.ibb.co/LrVMXNR/social-fb.png" alt=""></a></li>
            <li><a href="#"><img src="https://i.ibb.co/vJvbLwm/social-twitter.png" alt=""></a></li>
            <li><a href="#"><img src="https://i.ibb.co/b30HMhR/social-linkedin.png" alt=""></a></li>
          </ul>
    </footer>
  </div>
</body>
</html>