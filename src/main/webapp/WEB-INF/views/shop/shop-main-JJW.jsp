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
  <style>
  
    html,
    body,
    header,
    main,
    footer,
    section,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6,
    p,
    a,
    ul,
    li,
    nav {
      font-family: 'Noto Sans KR', sans-serif;
      margin: 0;
      padding: 0;
    }


    nav div {
      width: 100%;
      height: 100%;
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
	/* 헤더 css 끝 */  

    #container {
      position: relative;
      width: 100%;
      height: 100%;
      display: grid;
      grid-template-rows: 70px 1fr 70px;
      grid-template-columns: 1fr;
    }

    main {
      width: 100%;
      background-color: #f5ebe0;

    }

    section {
      width: 100vw;
      height: 82vh;
    }

  
    .category-menu{
    	
        padding: 15px 0 15px 0;
        border-top: 2px solid black;
        border-bottom: 2px solid black;
        margin-top: 10px;
        margin: 0 auto;
        width: 80%;
        display: flex;
        flex-direction: row;
        justify-content: left;
        gap: 30px;
        text-align: center;
        margin-bottom: 30px;
    }
    .category-menu img{
        margin-top: 10px;
        width: 40px;
        height: 40px;
    }
    .img-header{
        display: flex;
        align-items: center;
        justify-content: center;
       }
       .slide_wrapper{
            position: relative;
            width: 1120px;
            margin: 0 auto;
            height: 300px;
            overflow: hidden;
        }
        li{
            list-style-type: none;
        }
        .slides{
            position: absolute;
            left: 0; top: 0;
            width: 2730px;
            transition: left 0.5s ease-out;
           
            
        }
        .slides li:not(:last-child){
            float: left;
            margin-right: 30px;
        }
        .slides img{
            width: 200px;
            height: 200px;
            
        }
        .controls{
            text-align: center;
            margin-bottom: 30px;
        }
        
        .controls span{
            background: #333;
            color: #fff;
            padding: 10px 20px;
            margin: 0 10px;
        }
        .prev:hover{
            color: antiquewhite;
            cursor: pointer;
        }
        .next:hover{
            color: antiquewhite;
            cursor: pointer;
        }

      footer {
      display: flex;
      flex-direction: row;
      flex-wrap: wrap;
      width: 100%;
      height: 100%;
      background-color: lightgray;
      justify-content: space-around;
      align-items: center;
      padding-bottom: 20px;
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
    article,.new-arr,.New-Arr{
      background-color: #f5ebe0;
    }
    #footer-1stul{
      width:150px;
    }
    #footer-1stul li{
      font-size: 22px;
      font-weight: 900;
      width:150px;
    }
    #social li{
      width:15px;
    }
    html {
      scroll-behavior: smooth;
    }
    .new-arr{
      text-align: center;
    }
    .sh3{
    width: 200px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    margin-bottom: 5px;
   }
   
  </style>
</head>

<body>

  <div id="container">
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
    
    <main>
    	
        <div class="category-menu">
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/Home.png" alt=""><br>Home</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/Walk.png" alt=""><br>Walk</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/Carrier.png" alt=""><br>Carrier</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/Clothes.png" alt=""><br>Clothes</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/Dining.png" alt=""><br>Dining</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/Grooming.png" alt=""><br>Grooming</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/Toy.png" alt=""><br>Toy</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/Big Dog.png" alt=""><br>Big Dog</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/Food.png" alt=""><br>Food</a></li>
        </div>
    	
        <article class="sec1">
            <div class="img-header">
                <a href="${pageContext.request.contextPath}/shop/list"><img class="slide1" id="imgSlide" src="image/shop/EventImg1.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/shop/list"><img class="slide1" id="imgSlide" src="image/shop/EventImg2.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/shop/list"><img class="slide1" id="imgSlide" src="image/shop/EventImg3.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/shop/list"><img class="slide1" id="imgSlide" src="image/shop/EventImg4.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/shop/list"><img class="slide1" id="imgSlide" src="image/shop/EventImg5.jpg" alt=""></a>
                </div>
        </article>
    </main>
    <script>
      
    var index = 0;   //이미지에 접근하는 인덱스
    window.onload = function(){
        slideShow();
    }
    
    function slideShow() {
    var i;
    var x = document.getElementsByClassName("slide1");  //slide1에 대한 dom 참조
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";   //처음에 전부 display를 none으로 한다.
    }
    index++;
    if (index > x.length) {
        index = 1;  //인덱스가 초과되면 1로 변경
    }   
    x[index-1].style.display = "block";  //해당 인덱스는 block으로
    setTimeout(slideShow, 4000);   //함수를 4초마다 호출
}
    </script>
     <div class="New-Arr">
      <h1 class="new-arr">New Arrivals</h1>
    </div>
    <article class="art2">
      <div class="slide_wrapper">
        <ul class="slides">
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg1.jpg" alt=""><h3 class="sh3">모즈펫 강아지 패딩 하네스 일체형</h3><h4>16,900</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg2.jpg" alt=""><h3 class="sh3">올인원 레인코트 반려견 애견 비옷 소형견 애견의류</h3><h4>8,400</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg3.jpg" alt=""><h3 class="sh3">대형견 반사 패딩 하네스 겨울옷 강아지의류 3XL</h3><h4>21,390</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg4.jpg" alt=""><h3 class="sh3">막스플레이 벨로아 트레이닝 롬퍼 백 아이보리 면스판 조거 올인원 이탈리안 그레이 하운드 아이쥐옷</h3><h4>52,000</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg5.jpg" alt=""><h3 class="sh3">인터라켄 올인원 강아지 윈드브레이커 바람막이 우의</h3><h4>39,900</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg6.jpg" alt=""><h3 class="sh3">펫스츄리 강아지 앞섬방지 앞고리 이지워크 하네스 가슴줄 중형견 대형견</h3><h4>14,000</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg7.jpg" alt=""><h3 class="sh3">도담펫 강아지 LED 자동리드줄 플렉시리드줄 플렉시자동줄 애견 산책 줄</h3><h4>10,400</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg8.jpg" alt=""><h3 class="sh3">대형견 중형견 겨울 니트 모자 베이지</h3><h4>9,900</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg9.jpg" alt=""><h3 class="sh3">펫모드 스카이켄넬 250 강아지켄넬 애견캐리어</h3><h4>69,900</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg10.jpg" alt=""><h3 class="sh3">고급 강아지 이동식 캐리어 (블랙)(대)</h3><h4>19,800</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg11.jpg" alt=""><h3 class="sh3">강아지 신발 운동화 여름 사계절 산책 외출 방수 애견 반려견</h3><h4>31,000</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="image/shop/NewImg12.jpg" alt=""><h3 class="sh3">강아지조끼 수면조끼 천연소재 알러지케어</h3><h4>15,900</h4></a></li>
        </ul>
    </div>
   <div class="controls">
        <span class="prev">prev</span>
        <span class="next">next</span>
    </div>
    </article>
    <script>
      var slides = document.querySelector('.slides'),
  slide = document.querySelectorAll('.slides li'),
  currentIdx = 0,
  slideCount = slide.length,
  prevBtn = document.querySelector('.prev'),
  slideWidth = 200,
  slideMargin = 30,
  nextBtn = document.querySelector('.next');

  slides.style.width = (slideWidth + slideMargin)*slideCount - slideMargin + 'px';

  function moveSlide(num){
      slides.style.left = -num * 230 + 'px';
      currentIdx = num;
  }
  nextBtn.addEventListener('click' , function(){
      if(currentIdx < slideCount - 5){
      moveSlide(currentIdx + 1);
  } else{
      moveSlide(0);
  }
  });
  prevBtn.addEventListener('click' , function(){
      if(currentIdx > 0){
          moveSlide(currentIdx - 1);
      }else{
          moveSlide(slideCount -5);
      }
  })
  </script>
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