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

    
    #container {
      position: relative;
      width: 100%;
      height: 100%;
      display: grid;
      grid-template-rows: 7vh 86vh 7vh;
      grid-template-columns: 1fr;
    }

    main {
      width: 100%;
      background-color: #e3d5ca;

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
       .img-header img{
       width : 80%;
      margin-left : 10%;
      margin-bottom : 50px;
       }
       .slide_wrapper{
            position: relative;
            width: 1240px;
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
            width: 3060px;
            transition: left 0.5s ease-out;
           
            
        }
        .slides li:not(:last-child){
            float: left;
            margin-right: 60px;
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

     
    article,.new-arr,.New-Arr{
      background-color: #e3d5ca;
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
      <%@ include file="../frame/shop/header.jsp" %>
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
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg1.jpg" alt=""><h3 class="sh3">모즈펫 강아지 패딩 하네스 일체형</h3><h4>16,900</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg1.jpg" alt=""><h3 class="sh3">모즈펫 강아지 패딩 하네스 일체형</h3><h4>16,900</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg1.jpg" alt=""><h3 class="sh3">모즈펫 강아지 패딩 하네스 일체형</h3><h4>16,900</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg2.jpg" alt=""><h3 class="sh3">올인원 레인코트 반려견 애견 비옷 소형견 애견의류</h3><h4>8,400</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg3.jpg" alt=""><h3 class="sh3">대형견 반사 패딩 하네스 겨울옷 강아지의류 3XL</h3><h4>21,390</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg4.jpg" alt=""><h3 class="sh3">막스플레이 벨로아 트레이닝 롬퍼 백 아이보리 면스판 조거 올인원 이탈리안 그레이 하운드 아이쥐옷</h3><h4>52,000</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg5.jpg" alt=""><h3 class="sh3">인터라켄 올인원 강아지 윈드브레이커 바람막이 우의</h3><h4>39,900</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg6.jpg" alt=""><h3 class="sh3">펫스츄리 강아지 앞섬방지 앞고리 이지워크 하네스 가슴줄 중형견 대형견</h3><h4>14,000</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg7.jpg" alt=""><h3 class="sh3">도담펫 강아지 LED 자동리드줄 플렉시리드줄 플렉시자동줄 애견 산책 줄</h3><h4>10,400</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg8.jpg" alt=""><h3 class="sh3">대형견 중형견 겨울 니트 모자 베이지</h3><h4>9,900</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg9.jpg" alt=""><h3 class="sh3">펫모드 스카이켄넬 250 강아지켄넬 애견캐리어</h3><h4>69,900</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg10.jpg" alt=""><h3 class="sh3">고급 강아지 이동식 캐리어 (블랙)(대)</h3><h4>19,800</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg11.jpg" alt=""><h3 class="sh3">강아지 신발 운동화 여름 사계절 산책 외출 방수 애견 반려견</h3><h4>31,000</h4></a></li>
            <li><a href="${pageContext.request.contextPath}/shop/main/buy"><img src="image/shop/NewImg12.jpg" alt=""><h3 class="sh3">강아지조끼 수면조끼 천연소재 알러지케어</h3><h4>15,900</h4></a></li>
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
  slideMargin = 60,
  nextBtn = document.querySelector('.next');

  slides.style.width = (slideWidth + slideMargin)*slideCount - slideMargin + 'px';

  function moveSlide(num){
      slides.style.left = -num * 260 + 'px';
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
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
</body>
</html>