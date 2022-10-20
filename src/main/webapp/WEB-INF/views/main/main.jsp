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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/footer.css">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=fyiyg55rlb"></script>
  <title>Document</title>
  <style type="text/css">		 
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

    body {
      position: relative;
      height: 3000px
    }


    #container {
      position: fixed;
      width: 100%;
      height: 100%;
      display: grid;
      grid-template-rows: 7vh 86vh 7vh;
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

    #sec1 {
      z-index: 1;
      transform: translateX(0);
      position: absolute;
      background: url("image/main/메인.jpg") no-repeat;
      background-size: contain;
      background-position:right;
      
    }

    #sec2 {
      z-index: 2; 
      transform: translateX(101%);
      position: absolute;
      background: url("image/main/메인섹션.png") no-repeat center right;
      background-size: contain;
      background-color: #f5ebe0;
      display: flex;
      align-items: center;
      background-position: 80%;
      border-left: 2px dashed gray;
      
    }
    #map{
    	margin-left:-4%;
    }
    #sec2 div{
      position: absolute;
      left:4%;
      line-height: 34px;
    }
    #sec2 div h1{
      font-size: 40px;
      margin-bottom: 30px;
    }

    #sec3 {
      z-index: 3;
      transform: translateX(101%);
      position: absolute;
      background: url("image/main/임시배경.png") no-repeat right;
      background-size: contain;
      background-color: #f5ebe0;
      display: flex;
      align-items: center;
      background-position: 80%;
      border-left: 2px dashed black;
    }
    #sec3 div{
      position: absolute;
      left:4%;
      line-height: 34px;
    }
    #sec3 div h1{
      font-size: 40px;
      margin-bottom: 30px;
    }
    #sec3 button{
      border:none;
      background-color: lightgray;
      font-size: 20px;
      width:200px;
      height:40px;
      border-radius: 5%;
      margin-top: 15px;
    }
    #sec4 {
      width:100vw;
      z-index: 4;
      transform: translateX(101%);
      position: absolute;
      background: url("image/main/호텔섹션.png") no-repeat right;
      background-size: contain;
      background-color: #f5ebe0;
      display: flex;
      align-items: center;
      background-position: 80%;
      border-left: 2px dashed black;
    }
    #sec4 div{
      position: absolute;
      left:4%;
      line-height: 34px;
    }
    #sec4 div h1{
      font-size: 40px;
      margin-bottom: 30px;
    }
    #sec4 button{
      border:none;
      background-color: lightgray;
      font-size: 20px;
      width:200px;
      height:40px;
      border-radius: 5%;
      margin-top: 15px;
    }
    
    html {
      scroll-behavior: smooth;
    }
  	
  </style>
</head>

<body>
  <div id="container">
    <header>
      <%@ include file="../frame/main/header.jsp" %>
    </header>
    <main>
      <section id="sec1">
        <div>
          
        </div>
      </section>
      <section id="sec2">
        <div id="sec2-div1">
          <h1>About Us</h1>
          <p>소중한 것을 더 소중하게 여길게요</p>
          <p>내곁에 그대 있는 거</p>
          <p>그대와 함께 할 수 있는 모든것</p>
          <p>그댈 지키겠단 약속 꼭 지킬게요</p><br>
          <div id="map" style="width:400px;height:400px;"></div>

			<script>
				var mapOptions = {
   				 center: new naver.maps.LatLng(37.478909798053834, 126.88135430793452),
    			zoom: 18
				};
				
				var map = new naver.maps.Map('map', mapOptions);
				
				var marker = new naver.maps.Marker({
				    position: new naver.maps.LatLng(37.478909798053834, 126.88135430793452),
				    map: map
				});
			</script>
        </div>
      </section>
      <section id="sec3">
        <div id="sec3-div1">
          <form action="${pageContext.request.contextPath}/goshop">
          	<h1>Shop</h1>
          	<p>품격있는 쇼핑</p>
          	<p>우리집 막둥이를 위한 선물</p>
          	<p>싸다싸</p>
          	<p>사장이 미쳤어요</p>
          	<button>Go Shopping</button>
          </form>
        </div>
      </section>
      <section id="sec4">
        <div id="sec4-div1">
        <form action="${pageContext.request.contextPath}/gohotel">
          <h1>Hotel</h1>
          <p>품격있는 호텔</p>
          <p>우리집 막둥이를 위한 호텔</p>
          <p>싸다싸</p>
          <p>사장이 미쳤어요</p>
          <button>Go Hotel</button>
            </form>
        </div>
        
      </section>

    </main>
    <footer>
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
  <script>
    const sec1 = document.getElementById("sec1");
    const sec2 = document.getElementById("sec2");
    const sec3 = document.getElementById("sec3");
    const sec4 = document.getElementById("sec4");
    window.addEventListener("scroll", function () {
      // 스크롤 상단의 위치를 가져오기
      let winScroll = document.documentElement.scrollTop; //스크롤바가 밑에 닿았을때 스크롤바 윗부분부터 천장까지의 길이
      // 스크롤 전체 길이를 뺀 나머지 높이를 가져오기
      let height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
      //스크롤 전체 높이                         //화면에 보이는 길이
      // 전체 화면 높이에 대한 퍼센트 추출
      let percent = (winScroll / height) * 100;
      console.log(winScroll);
      console.log(((200 - (percent * 3))<0)?0:(200 - percent * 3));
      // progress-bar에 width 적용
      function fnscroll (a){
       /*  if(a<0){
          return a=0;
        }else{ */
          return a;
        /* }  */
      }
      document.getElementById("sec1").style.transform = "translateX(" + fnscroll((0 - (percent * 3))) + "%)";
      document.getElementById("sec2").style.transform = "translateX(" + fnscroll((100 - (percent * 3))) + "%)";
      document.getElementById("sec3").style.transform = "translateX(" + fnscroll((200 - (percent * 3))) + "%)";
      document.getElementById("sec4").style.transform = "translateX(" + fnscroll((300 - (percent * 3))) + "%)";
    });
    const a1 = document.getElementById("mainA1");
    const a2 = document.getElementById("mainA2");
    const a3 = document.getElementById("mainA3");
    const a4 = document.getElementById("mainA4");
    let height = document.documentElement.scrollHeight - document.documentElement.clientHeight
    a1.addEventListener("click", function () {
      document.documentElement.scrollTop = 0;
    });
    a2.addEventListener("click", function () {
      document.documentElement.scrollTop = (height / 3) * 1;
    });
    a3.addEventListener("click", function () {
      document.documentElement.scrollTop = (height / 3) * 2;
    });
    a4.addEventListener("click", function () {
      document.documentElement.scrollTop = (height / 3) * 3;
    });
  </script>
</body>

</html>