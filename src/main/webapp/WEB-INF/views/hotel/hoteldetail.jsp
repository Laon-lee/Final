
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
   <script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/hotel/header.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/footer.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <title>Document</title>
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

        body {
            position: relative;
            height: 100%;
        }

       
        #container {
            position: relative;
            width: 100%;
            height: 100%;
            display: grid;
            grid-template-rows: 70px 1fr 70px;
            grid-template-columns: 1fr;
            min-height: 100vh;
        }

        header {
            z-index: 100;
            background-color: #EDEDE9;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
            width: 100vw;
            height: 100%;
        }

        main {
            width: 100%;
            background-color: #EDEDE9;

        }

        section {
            width: 100%;
            height: 100%;
        }

        /* img */
        #hotel_img {
            display: grid;
            grid-template-rows: repeat(5, 1fr);
            grid-template-columns: repeat(3, 1fr);
            grid-template-areas: 'img1 img1 img2'
                'img1 img1 img2'
                'img1 img1 img5'
                'img3 img4 img5'
                'img3 img4 img5';
            gap: 10px;
            height: inherit;
            width: 90%;
            margin: 10px auto;
        }

        #img1 {
            grid-area: img1;
            background-color: red;
        }

        img {
            size: inherit;
        }

        #img2 {
            grid-area: img2;
            background-color: yellow;
        }

        #img3 {
            grid-area: img3;
            background-color: green;
        }

        #img4 {
            grid-area: img4;
            background-color: blue;
        }

        #img5 {
            grid-area: img5;
            background-color: purple;
        }

        .date {
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: center
        }

        #list,
        #option_list {
            width: 80%;
            margin: 5px auto;
            display: flex;
            flex-direction: row;
            display: hidden;

        }

        #inner1 {
            width: 25%;
            background-color: red;

        }

        #inner2 {
            width: 65%;
            padding-left: 20px;
        }

        #innerbtn {
            display: flex;
            flex-direction: row;
            align-items: end;

            width: 15%;

        }

        #reservebtn {
            background-color: rgb(24, 24, 24);
            color: whitesmoke;
            width: 100%;
            height: 5vh;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        #intr {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            padding: 5px 20px;
        }

        #intr_a {
            display: flex;
            flex-direction: row;

        }

        td {
            border: 1px solid black;
        }

        #td1 {
            width: 80%;
        }

        #td2 {
            text-align: center;
        }

        #option_list {
            display: none;
        }

        .content {
            width: 80%;
            display: flex;
            flex-direction: column;
            gap: 45px;
            position: relative;
            align-items: center;
        }
		#hotel-img{
			max-width:400px;
			max-height:300px;
		}
		#hotel-img img{
			width:100%;
		}
		#hotel-info{
			display:flex;
			flex-direction:column;
			align-items:center;
		}
		#hotel-info button{
			width: 200px;
    		height: 45px;
    		color: white;
    		font-size: 15px;
    		padding: 10px;
   			background-color: black;
		}
        .detail {
            width: 65vw;
            margin: 5px auto;
            display: grid;
            grid-template-columns: 1fr;
			justify-items: center;

        }
		.c_title{
			display:grid;
			grid-template-columns: 1fr 1fr;
			justify-items:center;
			align-items:center;
			width:100%;
		}
        .c_p {
            width: 100%;
            border-bottom: 1px solid black;
            padding-bottom: 10px;
        }

        .p_cont {
            padding: 10px 0px 20px 0px;
        }

        .price {
            display: flex;
            flex-direction: column;
            gap: 15px;
            border: 1px solid black;
            height: fit-content;
            padding: 4vh 3vw;
            position: sticky;
            left: 70%;
            top: 5%;
        }

        .p_box,
        .total {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .c_review {
            padding-bottom: 5vh;
        }

        #c_img {
            width: 100%;

        }
        
        .date {
            width: 90%;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: space-around;
            height: 5vh;
            padding: 1vh 0;
        }

        

        .indate {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            width: fit-content;
            align-items: center;
            gap: 15px;
        }

        #datepicker1 {
            width: fit-content;
            border: 0;
            background-color: #edede9;
            font-size: 17px;
        }

        /* #selecbtn {
            height: 70%;
            border: 0;
            background-color: black;
            width: 5vw;
            color: white;
        } */
	
		.selecbtn {
            height: 70%;
    border: 0;
    background-color: black;
    width: 5vw;
    color: white !important;
    text-align: center;
            
        }

.isbx-toggle {
	display: block !important;
}
/*  #ioutbox {
           display: none;
            width: 90%;
            margin: 0 auto;
            padding-bottom: 1vh;
        }
 */
        .outbox {
            display: block !important;
            width: 90%;
            margin: 0 auto;
        }

        #bxform>label {
            padding: 0px 5px;
        }
        
        .clicked {
        	display : block !important;
        	display : flex !important;
        	
        }
        #isbx {
            display: flex;
            flex-direction: row;
            justify-content: left;
            width: 70%;
            gap: 4vw;
            margin: 0 auto;
            display:none;

        }
        #selectp{
        	cursor:default;
        }
        .c_info{
        	width: 100%;
			display: grid;
			grid-template-rows: 55px 1fr;
        }
        #nav{
        	background-color: gray;
        	color:white;
        	display: flex;
    		justify-content: space-around;
    		position:sticky;
    		top:0;
    		z-index:10;
        }
        #nav div{
        	padding-top:14px;
        	width: 25%;
    		text-align: center;
    		cursor:pointer;
        }
        #info-container li{
        	display:block;
        }
        .info-container-div{
        	margin:30px;
        }
        .on{
        	background-color: black;
        }
        .fadeIn {
			animation: fadeIn 1.5s ease-out forwards;
		}
		
		@keyframes fadeIn { 
			0%{
				opacity: 0;
			}
			100%{
				opaciry:1;
			}
		}
		#notice-title{
			margin-bottom:15px
		}
		#notice-content{
			margin-left:10px;
		}
		.room-list{
			position:relative;
			margin:10px 0 10px 20px;
			border-bottom: 2px dashed black;
		}
		.room-list-div{
			padding: 10px 0;
		}
		.material-symbols-outlined{
			float:left;
			padding-top:5px;
			margin-right:10px;
		}
		.room-info{
			font-size:25px;
		}
		.room-type{
			margin-left:10px;
			font-weight: 400;
			font-size: 16px;
		}
		.room-price{
			position:absolute;
			top: 30px;
			right:13px;
			float:right;
			font-size:23px;
			font-weight:400;
		}
		.room-content{
			margin-left:20px;
		}
		.review-box, .qna-box{
			position:relative;
			margin:20px 20px 0 20px;
		}
		.review-write, .qna-title{
			font-size:18px;
		}
		.review-roomname{
			font-size:13px;
			color:gray;
			margin-left:5px;
		}
		.qna-writer{
			margin-left:5px;
		}
		.review-date, .qna-date{
			position:absolute;
			right:25px;
			top:20px;
			float:right;
		}
		.review-content, .qna-content{
			padding:10px;
		}
		#review-count, #qna-count{
			color: blue;
		}
		
    </style>
</head>

<body>
    <div id="container">
        <header>
            <%@ include file="../frame/hotel/header.jsp" %>
        </header>
        <script>
            $(document).ready(function () {

                $("#innerbtn").click(function () {

                    $("#option_list").slideToggle();

                });

            });
        </script>
        <main>
            <section>
               <div class="date">
					<div class="indate">
						<p id="selectp">지역을 선택해주세요</p>

						<!-- <input type="text" placeholder="지역을" id="choicehotel"> -->
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"
							id="svg">
                            <path
								d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                        </svg>
					</div>
					<input type="text" id="datepicker1" name="dates" readonly>
					<!-- <button class="selecbtn">검색</button> -->
					<a href="#" id= "asearchbtn"class="selecbtn">검색</a>
				</div>
				
				<script type="text/javascript">

				window.addEventListener('DOMContentLoaded', function(){
					
					document.getElementById("asearchbtn").addEventListener("click",function(){ 
						
						var jjjcateArr = [];
						var jjjcateArr2 = [];
						
						const jjjchecked = document.querySelectorAll('input[name="cate"]:checked');
						jjjchecked.forEach((item)=>{
							var jjjcate = item.value;
						 	jjjcateArr.push(jjjcate);
						 	jjjcateArr2 = jjjcateArr.slice(1);
						});
						
						console.log(jjjcateArr);
						console.log("slice"+jjjcateArr2);
						
	                    if(Array.isArray(jjjcateArr) && jjjcateArr.length === 0){
	                    	document.getElementById("selectp").style.color="red";
	                    	document.getElementById("selectp").style.fontWeight = "900";
	                    	document.getElementById("isbx").style.display = "block";
	                    	document.getElementById("isbx").style.display = "flex";
	                    }else {
	                    	document.getElementById("selectp").style.color="black";
	                    	document.getElementById("isbx").style.display = "none";
	                     	if(document.getElementById("1").checked || document.getElementById("20").checked || document.getElementById("15").checked || document.getElementById("26").checked) {
	                    	 	console.log("slice"+jjjcateArr2);
	                			location.href = "${pageContext.request.contextPath}/golist/${startdate}/${enddate}/"+jjjcateArr2; 	
	                    	} else {
	                    	 	console.log("여기에오나1"+jjjcateArr);
	                    	 	console.log("여기에오나2"+jjjcateArr2);
	                    	 	location.href = "${pageContext.request.contextPath}/golist/${startdate}/${enddate}/"+jjjcateArr;
	                     	}
	                    }
	                    
					});
					
					
					//카테고리 배열 설저
					let cateArr = [];
					let cateArr2 = [];
	            
					let now = new Date();
					let tom = new Date();
										
					tom.setDate(tom.getDate()+1);
					
					$('input[name="dates"]').daterangepicker({
						 "startDate": "${startdate}",
                            //시작날짜
                         "endDate": "${enddate}",
                            //종료날짜
                         "minDate": now,
                            //최소지정날짜
                         "opens": "center",
 
                         locale: {
                           	//기타 설정
                            "separator": " ~ ",
                            	//구분자
                           	"applyLabel": "적용",
                            	 //버튼 라벨
                            "cancelLabel": "취소",
                            format: "YYYY-MM-DD",
                            daysOfWeek: ["일", "월", "화", "수", "목", "금", "토"],
                            monthNames: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
                        }
                    });
					
					$('input[name="dates"]').on('show.daterangepicker', function() {
						$(".cancelBtn").css("float", "right");
                 	 	$(".cancelBtn").css("background-color", "white");
                 	 	$(".cancelBtn").css("color","black");
                 	 	$(".applyBtn").css("background-color", "black");
                 	 	$(".applyBtn").css("color","white");
                 		$(".cancelBtn, .applyBtn").css("border","1px solid black");
                 	 	$(".cancelBtn, .applyBtn").css("cursor","pointer");
                 		$(".cancelBtn, .applyBtn").css("width", "60px");
					});

					$('input[name="dates"]').on('apply.daterangepicker', function(ev, picker) {
						 //datepicker에서 적용버튼을 클릭했을 때
						 var startdate = picker.startDate.format('YYYY-MM-DD');
						 var enddate = picker.endDate.format('YYYY-MM-DD');
						 
						$('input[name="cate"]:checked').each(function(){
							var cate=$(this).val();
							cateArr.push(cate);
							cateArr2 = cateArr.slice(1);
						});
						 
						console.log("in"+cateArr);
						 
						if(Array.isArray(cateArr) && cateArr.length === 0) {
							$("#asearchbtn").click(function(){
								$("#selectp").css("color","red");
								$("#selectp").css("fontWeight","900");
								$("#isbx").css("display", "block");
								$("#isbx").css("display", "flex");
							});
						} else {
							$("#asearchbtn").click(function(){
								$("#selectp").css("color","black");
								$("#isbx").css("display", "none");
						 		$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+startdate+"/"+enddate+"/"+cateArr);	
							});	
						}
						 
					});
					 
				});	
					
					
                   
	
                </script>
            
           <script type="text/javascript">
			$('.allseo').click(function(){
             	if($('.allseo').is(':checked')){
             		$('.seo').prop("checked",true);
             	} else {
             		$('.seo').prop("checked",false);
             	};
             });
             
             $('.allin').click(function(){
             	if($('.allin').is(':checked')){
             		$('.in').prop("checked",true);
             	} else {
             		$('.in').prop("checked",false);
             	};
             });
             
             $('.allgyeong').click(function(){
             	if($('.allgyeong').is(':checked')){
             		$('.gyeong').prop("checked",true);
             	} else {
             		$('.gyeong').prop("checked",false);
             	};
             });
             
             $('.seo').click(function(){
             	if($('.allseo').is(':checked')){
             		$('.allseo').prop("checked", false);
             	};
             	
             	if($('.seo:checked').length == $('.seo').length){
                 	$('.allseo').prop("checked",true);
                 };
             });
             
             $('.in').click(function(){
             	if($('.allin').is(':checked')){
             		$('.allin').prop("checked", false);
             	};
             	
             	if($('.in:checked').length == $('.in').length){
                 	$('.allin').prop("checked",true);
                 };
             });
             
             $('.gyeong').click(function(){
             	if($('.allgyeong').is(':checked')){
             		$('.allgyeong').prop("checked", false);
             	};
             	
             	if($('.gyeong:checked').length == $('.gyeong').length){
                 	$('.allgyeong').prop("checked",true);
                 };
             });
			
			</script>
				<!-- <div class="coutbox" id="ioutbox"> -->
					<div id="isbx" class="csbx">
					<p>지역구분</p>
					<form action="" id="bxform">
						<label for="1"><input type="checkbox" name="cate" id="1" class="allseo" value="서울">서울전체</label> 
						<label for="2"><input type="checkbox" name="cate" id="2" class="seo" value="금천구">금천구</label>
						<label for="3"><input type="checkbox" name="cate" id="3" class="seo" value="은평구">은평구</label> 
						<label for="4"><input type="checkbox" name="cate" id="4" class="seo" value="강남구">강남구</label>
						<label for="5"><input type="checkbox" name="cate" id="5" class="seo" value="서초구">서초구</label> 
						<label for="6"><input type="checkbox" name="cate" id="6" class="seo" value="서대문구">서대문구</label>
						<label for="7"><input type="checkbox" name="cate" id="7" class="seo" value="강동구">강동구</label><br /> 
						<label for="8"><input type="checkbox" name="cate" id="8" class="allin" value="인천">인천전체</label>
						<label for="9"><input type="checkbox" name="cate" id="9" class="in" value="연수구">연수구</label> 
						<label for="10"><input type="checkbox" name="cate" id="10" class="in" value="남동구">남동구</label>
						<label for="11"><input type="checkbox" name="cate" id="11" class="allgyeong" value="경기">경기전체</label> 
						<label for="12"><input type="checkbox" name="cate" id="12" class="gyeong" value="성남시">성남시</label>
						<label for="13"><input type="checkbox" name="cate" id="13" class="gyeong" value="김포시">김포시</label> 
						<label for="14"><input type="checkbox" name="cate" id="14" class="gyeong" value="용인시">용인시</label>
						<label for="15"><input type="checkbox" name="cate" id="15" class="gyeong" value="시흥시">시흥시</label>
						<!-- <button id="sbtn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"
							id="svg">
                            <path
								d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                        </svg></button> -->
					</form>
				</div>
				<!-- </div> -->
	
                <script>
                    var p = document.getElementById("selectp");
                    var svg = document.getElementById("svg");
                    var iob = document.getElementById("ioutbox");
					var isbx = document.getElementById("isbx");
                    var date = document.getElementById("datepicker1");
					var div = document.getElementById("datepicker1").firstChild;
                    
                    p.addEventListener("click", function () {
                    	isbx.classList.toggle("clicked");    
                    });
                    
                    /*svg.addEventListener("click", function () {
                    	isbx.classList.toggle("clicked");
                    	
                    });*/
                    
                    date.addEventListener("click", function () {
                    	
                    	if(isbx.className="clicked"){
                    		isbx.classList.toggle("clicked");
                    	}
                    });
                    

                </script>
                <div class="detail">
                    <div class="content">
                        <div class="c_title">
                        	<div id="hotel-img">
                        		<img src="https://www.qplace.kr/content/images/2021/09/9-14.jpg">
                        	</div>
                        	<div id="hotel-info">
                        		<div>
                            		<h1>${hotel[0].hotelName}</h1><br>
                            		<p>상세주소: ${hotel[0].hotelAddr }</p>
                            		<p>전화번호: ${hotel[0].hotelTel}</p><br>
                            	</div>
                            	<div>
                            		<button>RESERVATION</button>
                            	</div>
                            </div>
                        </div>
                        <div class="c_info">
                            <div id="nav">
								<div class="on">Information</div>
								<div>Notice</div>
								<div id="review">Review</div>
								<div id="qna">Q&A</div>
                            </div>
                            <div id="info-container">
                            	<div style="display: block;" class="info-container-div">
                            		<div>
                            			<h1>객실정보</h1>
                            		</div>
                            		<ul>
                            		<c:forEach var="item" items="${hotel}">
                            			<li class="room-list">
                            				<div class="room-list-div">
                            					
                            					<p class="room-info"><span class="material-symbols-outlined">pets</span> ${item.roomName}
                            						<span class="room-price"><fmt:formatNumber value="${item.roomPrice}" pattern="#,###" /> KRW</span>
                            					</p>
                            					
                            					<p class="room-content"><span class="room-type">[${item.roomType}견 전용]</span> ${item.roomContent}</p>
                            				</div>
                            			</li>
                            		</c:forEach>
                            		</ul>
                            	</div>
                            	<div style="display: none;" class="info-container-div">
                            		<div id="notice-title"><h1>유의사항</h1></div>
                            		<div id="notice-content">
                            			<p>☑ 1년 이내 5가지 접종(종합, 코로나, 켄넬코프, 인플루엔자, 광견병) 받지 않은 반려견은 입실이 제한됩니다.<br>
										   ※ 접종기록은 접종병원명이 꼭 필요하므로 증빙 자료는 미리 준비해주세요.</p>
										<p>☑ 1살 미만의 반려견인 경우 항체 검사가 필수 입니다. (단, 1살 이상 시 재접종 기록 확인)</p>
										<p>☑ 생리,건강문제 또는 공격성이 강해 타 고객의 이용에 피해가 되는 반려견 일 경우 입실이 제한됩니다.</p>
                            		</div>
                            	</div>
                            	<div style="display: none;" class="info-container-div">
                            		<h1>Review</h1>
                            		<p>호텔의 방문후기를 작성해주세요</p><hr/>
                            		&nbsp;&nbsp;<h3>후기 <span id="review-count"></span>개</h3>
                            		<div id="review-container">
                            			
                            			
                            		</div>
                            	</div>
                            	<div style="display: none;" class="info-container-div">
                            		<h1> Q&A</h1>
                            		<p>궁금한 사항은 이곳에 작성해주세요</p><hr/>
                            		&nbsp;&nbsp;<h3>문의 <span id="qna-count"></span>개</h3>
                            		<div id="qna-container">
                            			
                            			
                            		</div>
                            	</div>
                            	
                            	
                            </div>
							<script type="text/javascript">
									<%-- nav div 클릭 hide/block 효과 --%>
									$("#nav div").click(function(){
										var idx=$(this).index();
										$("html").animate({scrollTop : 0}, 0);
										$("#nav> div").removeClass("on");
										$("#nav> div").eq(idx).addClass("on");
					
										$("#info-container> div").hide();
										$("#info-container> div").removeClass("fadeIn")
										$("#info-container> div").eq(idx).addClass("fadeIn");
										$("#info-container> div").eq(idx).show();
									})
									
									function formatDate(date) {
		                            	var d = new Date(date),
		                            	month = '' + (d.getMonth() + 1),
		                            	day = '' + d.getDate(),
		                            	year = d.getFullYear();

		                            	if (month.length < 2) month = '0' + month;
		                             	if (day.length < 2) day = '0' + day;
										return [year, month, day].join('. ');
		                            }
									
									<%-- 호텔 리뷰 불러오기--%>
									$("#review").click(function(){
										let hotelId = ${hotel[0].hotelId};
										
										fetch("${pageContext.request.contextPath}/gethotelreview", {
		                                    method: "POST",
		                                    headers: { "Content-Type": "application/json" },
		                                    body: JSON.stringify({ hotelId })
		                                }).then(response => response.json())
		                                    .then(data => {
		                                    	$("#review-container").empty();
		                                        document.getElementById("review-count").innerText = data.length;
		                                        for (let review of data) {
		                                    			const div = document.createElement("div");
		                                    			div.setAttribute("class","review-box")

		                                    			const p1 = document.createElement("p");
		                                    			const strong = document.createElement("strong");
		                                    			strong.setAttribute("class","review-writer");
		                                    			strong.innerText = review.memId;

		                                    			const sp1 = document.createElement("span");
		                                    			sp1.setAttribute("class","review-roomname");
		                                    			sp1.innerText= '['+review.hotelreviewRoomname+']';

		                                    			const sp2 = document.createElement("span");
		                                    			sp2.setAttribute("class","review-date");
		                                    			sp2.innerText= formatDate(review.hotelreviewDate);

		                                    			p1.append(strong);
		                                    			p1.append(sp1);
		                                    			p1.append(sp2);

		                                    			const p2 = document.createElement("p");
		                                    			p2.setAttribute("class","review-content")
		                                    			p2.innerText = review.hotelreviewContent;
		                                    			
		                                    			const hr = document.createElement("hr");
		                                    			div.append(p1);
		                                    			div.append(p2);
		                                    			div.append(hr);
		                                    			const container = document.getElementById("review-container");
		                                    			container.append(div);
		                                        }
		                                    }).catch(error => {
		                                        console.log("error");
		                                    });
									})
									
									
									<%-- 호텔 문의 불러오기--%>
									$("#qna").click(function(){
										let hotelId = ${hotel[0].hotelId};
										console.log(hotelId);
										fetch("${pageContext.request.contextPath}/gethotelqna", {
		                                    method: "POST",
		                                    headers: { "Content-Type": "application/json" },
		                                    body: JSON.stringify({ hotelId })
		                                }).then(response => response.json())
		                                    .then(data => {
		                                    	$("#qna-container").empty();		                           
		                                        
		                                        document.getElementById("qna-count").innerText = data.length;
		                                        for (let qna of data) {
		                                    			const div = document.createElement("div");
		                                    			div.setAttribute("class","qna-box")

		                                    			const p1 = document.createElement("p");
		                                    			const strong = document.createElement("strong");
		                                    			strong.setAttribute("class","qna-title");
		                                    			strong.innerText = '[문의] '+qna.hotelqnaTitle;

		                                    			const sp1 = document.createElement("span");
		                                    			sp1.setAttribute("class","qna-writer");
		                                    			sp1.innerText= 'by. '+qna.memId;

		                                    			const sp2 = document.createElement("span");
		                                    			sp2.setAttribute("class","qna-date");
		                                    			sp2.innerText= formatDate(qna.hotelqnaDate);

		                                    			p1.append(strong);
		                                    			p1.append(sp1);
		                                    			p1.append(sp2);

		                                    			const p2 = document.createElement("p");
		                                    			p2.setAttribute("class","qna-content")
		                                    			p2.innerText = qna.hotelqnaContent;
		                                    			
		                                    			const hr = document.createElement("hr");
		                                    			div.append(p1);
		                                    			div.append(p2);
		                                    			div.append(hr);
		                                    			const container = document.getElementById("qna-container");
		                                    			container.append(div);
		                                        }

		                                    }).catch(error => {
		                                        console.log("error");
		                                    });
									})
							</script>		
                        </div>
                        
                    </div>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <%-- <div class="price">
                        <div class="p_box">
                            <p>${room.roomName}</p>
                            <fmt:parseDate value="${startdate}" var="start" pattern="yyyy-MM-dd"/>
							<fmt:parseNumber value="${start.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
							<fmt:parseDate value="${enddate }" var="end" pattern="yyyy-MM-dd"/>
							<fmt:parseNumber value="${end.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
                            
                            
                            <h1><fmt:formatNumber value="${room.roomPrice * (endDate - strDate)}"/>KRW</h1>
                            <p>${startdate} ~ ${enddate} <br>
                            <span>${endDate - strDate} 박</span>
                            
                            		<c:if test="${(endDate - strDate)==0}"><span>당일 이용 예약</span></c:if>
                            		<c:if test="${(endDate - strDate)!=0}"><span>${endDate - strDate} 박</span></c:if>
                             </p>
                            
                            <p>세금</p>
                            <p><fmt:parseNumber var="price" integerOnly="true" value="${room.roomPrice * (endDate - strDate) * 0.1}"/>
                            <fmt:formatNumber  value="${price}"/>KRW
                            </p>
                        </div>
                        <div class="total">
                            <p>+세금(10%)</p>
                            <h1>총 예약금액 <fmt:formatNumber value="${room.roomPrice * (endDate - strDate)  + price }" pattern="#,#00" />KRW</h1>
                            <button id="reservebtn">회원예약</button>
                        </div>
                        
                        <script type="text/javascript">
                        	document.getElementById("reservebtn").addEventListener("click",function(){
                        		location.href = "${pageContext.request.contextPath}/goreserve"
                        		
                        	})
                        </script>
                    </div>
                </div> --%>
				</div>
            </section>
        </main>
        <footer>
            <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>

</body>
</html>