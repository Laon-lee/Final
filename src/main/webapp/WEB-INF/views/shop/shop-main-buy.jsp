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

/* 중간 sub 내용*/
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
	bottom: 9%;
	right: 3%;
	border: none;
	width: 60px;
	height: 60px;
	background-color: lightgray;
	align-items: center;
}

/* 메인 박스 css */

#main-box {
	
	height: 500px;
	width: 100%;
	background-color :#D9D9D9;
}

#main1 {
	margin-left : 260px;
	width: 500px;
	height: 400px;
	right: 10px;
	background:
		url("https://marlonshop.com/web/product/small/202210/48ab597982e07045fb5414b758ae7b62.jpg");
	
}

#main2 {
	width: 500px;
	margin-right : 260px;
}

#main2>h3, h4 {
	font-size: 1.2rem;
}

#main2 > h4 {
	line-height : 3.5rem
}

#main2 > button {
	height: 35px;
    border-radius: 5px;
    width: 48%;
    border: none;
    margin-top: 10px;
}

#p-line1 {
	line-height: 7rem;
}
#p-line2 {
	line-height : 3rem;
}
#size-opt {
	height : 30px;
	width : 90%;
	border : 0.5px solid gray;
	border-radius : 5px;
	color : black;
}

/* sub-box, 상태창, 상세상품 설명 */
#sub-box {
	width : 100%;
	height : 1000px;
	display : flex;
}

#status-bar {
	width : 15%;
	height : 200px;
	margin-top : 50px;
	margin-left : 100px;
	padding: 30px 30px;
    line-height: 40px;
	}
#status-bar > div:hover{
	border-right : 2px solid black;
	cursor : pointer;
	font-size  : 1.2rem;
}

#proc-wrapper {
	width :65%;
	height : 100vh;
	margin-right : 200px;
	
}


#prdInfo > p {
	font-size : 0.8rem;
	margin-top : 0.6rem;

}

h5 {
	font-size : 0.9rem;
	line-height : 1.3rem;
}

font {
	size :2;
}

<!-- 헤더 css 임시 -->

	 header {
      z-index: 100;
      background-color: white !important;
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
					<p id="p-line1">MADE IN KOREA</p>
					<select id="size-opt">
						<option value="사이즈선택">사이즈를 선택해주세요</option>
						<option value="사이즈선택">----------------------------------------</option>
						<option value="">small</option>
						<option value="">medium</option>
						<option value="">large</option>
					</select>
					<h4>Total</h4>
					<p in="p-line2">{}개</p>
					<button>BUY NOW</button><button>ADD TO CART</button>
				</div>
			</div>
			<div id ="sub-box">
				<div id="status-bar" class="tab_title">
					<div class="on">Detail</div>
					<div>Information</div>
					<div>Review</div>
					<div>Q&A</div>
				</div>
				<div id="proc-wrapper" class="tab_cont">
					<div class="on" style="display:block;">
						<div>제품 이미지</div>
					</div>
					<div style="display:none;">
						<div id="prdInfo"">
							<h3>상세 결제 정보</h3>
							<p>고액 결제의 경구 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다</p>
							<p>확인과정에서 도난 카드의 사용이나 타인 명의의 주문등 정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다.</p>
							<p>무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면 됩니다.</p>
							<p>주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로 입금을 하셔야 하며 입금되지 않은 주문은 자동취소 됩니다.</p>
							<br />
							<h5>배송방법 :택배</h5>
							<h5>배송 지역 : 전국지역</h5>
							<h5>배송 비용 : 3,500원</h5>
							<h5>배송 기간 : 3일 ~ 7일</h5>
							<h5>배송안내</h5>
							<p>뎅누리샵은 편집샵으로 운영되는 샵으로서 ,브랜드별로 출고지가 상이합니다.</p>
							<p>마찬가지로 여러제품의 교환, 반품을 원하시면 이 또한 마찬가지로 배송비가 가각 부가될 수 있습니다.</p>
							<p>**제품의 무게에 따라 배송비가 다를 수 있습니다.</p>
							<p>**네이베 페이 구매시 : 상품별 출고지/수거지가 상이하여 교환,</p>
							<p>반품은 자동수거가 불가 하므로 고객센터로 문의 부탁드립니다.</p>
							<br />
							<h4>교환 및 반품정보</h4>
							<h5 style="line-height : 2.5rem;">택배회사 : 로젠택배, CJ대한통운</h5>
							<p><b>무상 교환 반품 안내</b></p>
							<p>-배송 중에 파손 및 오염이 된 경우</p>
							<p>-주문한 제품이 아닌 다른 제품이 배송되었을 경우</p>
							<p>-제품에 구조적인 문제가 있는 경우</p>
							<p>-쿠션 패브릭의 변색과 찢어짐 등의 품질 불량</p>
							<br />
							<p><b>유상교환/반품</b></p>
							<p>상품 수령후 7일 이내 소비자 단순 변심 및 주문 오류에 의한 교환 및 반품</p>
							<p>(배송비 고객부탐/제품 및 포장 상태가 재판매 가능한 상태여야 함.)</p>
							<p>**반품시 포장 불량으로 인한 파손은 고객님이 부담하셔야합니다.</p>
							<br />
							<p><b>*교환,반품을 원하실 경우 수령을로부터 7일 이내에 연락을 해주셔야 처리가 가능하며,</b></p>
							<p><b>경과시 처리가 불가합니다.(미사용이라도 7일이 지나면 접수가 불가능합니다.)</b></p>
							<br />
							<p><b>교환 및 반품이 불가능한 경우</b></p>
							<p>-교환/반품 요청 기간이 지난 경우</p>
							<p>-상품의 포장이 손상되었거나 텍, 라벨이 제거된 경우</p>
							<p>-사용 흔적이 남아 있거나, 이물질에 의한 오염이 된 경우</p>
							<p>-고객 부주의에 의한 제품 파손 및 손상이 있는 경우</p>
							<p>-구매자의 사용 등에 의해 상품 가치가 감소한 경우</p>
							<p>-주문 제작된 상품일 경우</p>
						</div>
					</div>
					<div style="display:none;" >
						<div id="prdReview">
							<div class="board">
								<h3>REVIEW</h3>
								<p class="desc">상품의 사용후기를 적어주세요</p>
								<p class="nodata">게시물이 없습니다.</p>
							</div>
						</div>
					</div>
					<div style="display:none">
						<div class="board">
							<h3>Q&A</h3>
							<p>상품에 대해 궁금한 점을 해결해 드립니다.</p>
							<p class="nodata">게시물이 없습니다.</p>
						</div>
					</div>
					
				</div>
			</div>

		</main>
		<footer>
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		$(document).ready(function(){
			$(".tab_title div").click(function(){
				var idx=$(this).index();
				$(".tab_title div").removeClass("on");
				$(".tab_title div").eq(idx).addClass("on");
				$(".tab_cont > div").hide();
				$(".tab_cont > div").eq(idx).show();
			})
		});
	</script>
</body>
</html>