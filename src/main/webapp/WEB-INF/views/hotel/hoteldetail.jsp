
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            width: 85%;
            display: flex;
            flex-direction: column;
            gap: 45px;
            position: relative;
        }

        .detail {
            width: 80%;
            margin: 5px auto;
            display: grid;
            grid-template-columns: 4fr 1.3fr;


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
					<a href="#" class="selecbtn">검색</a>
				</div>
				
				<script>
				window.addEventListener('DOMContentLoaded', function(){
					//카테고리 배열 설저
					var cateArr = [];
					var cateArr2 = cateArr.slice(1);
					//datepicker 설정
					
					let now = new Date();
					let tom = new Date();
										
					tom.setDate(tom.getDate()+1);
					
					$('input[name="dates"]').daterangepicker({
						 "startDate": now,
                            //시작날짜
                         "endDate": tom,
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
						 });
						 
						 console.log("in"+cateArr);
						 console.log("in2"+cateArr2);
						 
						 if($('.allseo').is(':checked') || $('.allin').is(':checked') || $('.allgyeong').is(':checked')) {
                     		$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+startdate+"/"+enddate+"/"+cateArr2);
                         } else {
                           	$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+startdate+"/"+enddate+"/"+cateArr);        
                         }
						 
					 });
					 
					 document.getElementById("asearchbtn").addEventListener("click",function(){
						 var jcateArr = [];
						 var jcateArr2 = jcateArr.slice(1);
						 
						 const jchecked = document.querySelectorAll('input[name="cate"]:checked');
						 jchecked.forEach((item)=>{
							 var jcate = item.value;
						 	jcateArr.push(jcate);
						 });
						 
						 console.log(jcateArr);
						 
						 var today =  now.getFullYear() + "-" + ((now.getMonth() + 1) > 9 ? (now.getMonth() + 1).toString() : "0" + (now.getMonth() + 1)) + "-" + (now.getDate() > 9 ? now.getDate().toString() : "0" + now.getDate().toString());
	                     var tommorow = tom.getFullYear() + "-" + ((tom.getMonth() + 1) > 9 ? (tom.getMonth() + 1).toString() : "0" + (tom.getMonth() + 1)) + "-" + (tom.getDate() > 9 ? tom.getDate().toString() : "0" + tom.getDate().toString());
	                     //오늘 날짜와 내일 날짜 출력
	                     if(document.getElementById("1").checked || document.getElementById("8").checked || document.getElementById("11").checked) {
	                			location.href = "${pageContext.request.contextPath}/golist/"+today+"/"+tommorow+"/"+jcateArr2;   	
	                     } else {
	                    	 location.href = "${pageContext.request.contextPath}/golist/"+today+"/"+tommorow+"/"+jcateArr;
	                     }
	                     //daterangepicker를 사용하지 않았으면 오늘 날짜와 내일 날짜가 들어감
	                     
	          
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
                            <h1>${hotel.hotelName}</h1>
                            <P>${room.roomType}견 전용</P>
                        </div>
                        <div class="c_option">
                            <p class="c_p">option</p>
                            <p class="p_cont">조식 제공, extra bed 제공</p>
                        </div>
                        <div class="c_info">
                            <p class="c_p">information</p>
                            <p class="p_cont">강아지들 재방문률 95%

                                품격있는 애견 호텔 저희 비숑프라자를 방문 해주셔서 너무 감사합니다.

                                항상 감사하는 마음으로 최고의 품질, 최고의 서비스를 제공하게습니다.

                                애견들을 사람처럼, 사람들을 애견처럼 </p>
                            <img src="https://www.mypetplus.co.kr/upload/201701261318010.jpg" alt="" id="c_img">
                        </div>
                        <div class="c_review">
                            <p class="c_p">review</p>
                            <table>
                                <tr>
                                    <th>견종</th>
                                    <th>닉네임</th>
                                    <th>투숙일</th>
                                    <th>내용</th>
                                </tr>
                                <tr>
                                    <td>비숑</td>
                                    <td>홍길동</td>
                                    <td>2022.10.17~2022.10.18</td>
                                    <td>어쩌구저쩌구</td>
                                </tr>
                                <tr>
                                    <td>비숑</td>
                                    <td>홍길동</td>
                                    <td>2022.10.17~2022.10.18</td>
                                    <td>어쩌구저쩌구</td>
                                </tr>
                                <tr>
                                    <td>비숑</td>
                                    <td>홍길동</td>
                                    <td>2022.10.17~2022.10.18</td>
                                    <td>어쩌구저쩌구</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="price">
                        <div class="p_box">
                            <p>객실1</p>
                            <h1><fmt:formatNumber type="currency" value="${room.roomPrice}"/></h1>
                            <p>2022.10.29</p>
                            
                            <p>세금</p>
                            <p><fmt:parseNumber var="price" integerOnly="true" value="${room.roomPrice * 0.1}"/>
                            <fmt:formatNumber type="currency" value="${price}"/>
                            </p>
                        </div>
                        <div class="total">
                            <p>+세금(10%)</p>
                            <h1>총 예약금액 <fmt:formatNumber value="${room.roomPrice + price }" pattern="#,#00" />KRW</h1>
                            <button id="reservebtn">회원예약</button>
                        </div>
                        
                        <script type="text/javascript">
                        	document.getElementById("reservebtn").addEventListener("click",function(){
                        		location.href = "${pageContext.request.contextPath}/goreserve"
                        		
                        	})
                        </script>
                    </div>
                </div>

            </section>
        </main>
        <footer>
            <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>

</body>
</html>