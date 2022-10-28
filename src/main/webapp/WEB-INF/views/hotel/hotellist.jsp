
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
     <%-- <script src="${pageContext.request.contextPath}/hotel/jquery-3.6.1.min.js"></script> --%>
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

       
        main {
            width: 100%;
            background-color: #EDEDE9;
            min-height: 86vh;

        }

        section {
            width: 100vw;
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

        .list,
        .option_list {
            width: 80%;
            margin: 20px auto;
            display: flex;
            flex-direction: row;
            height: 25vh;

        }

        .option_list {
            display: none;
        }

        .inner1 {
            width: 25%;
            background-color: red;

        }

        .inner1>img {
            width: 100%;
    height: 100%;
    object-fit: cover;
        }

        .inner2 {
            width: 65%;
            padding-left: 20px;
        }

        .innerbtn {
            display: flex;
            flex-direction: row;
            align-items: end;

            width: 15%;

        }

        .innerbtn>button {
            background-color: rgb(24, 24, 24);
            color: whitesmoke;
            width: 100%;
            height: 23%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        .intr {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            padding: 5px 20px;
        }

        .intr_a {
            display: flex;
            flex-direction: row;

        }

        td {
            border: 1px solid black;
        }

        .td1 {
            width: 80%;
        }

        .td2 {
            text-align: center;
        }

        .option_list {
            display: none;
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
        
        <main>
            <section>
            	<div class="date">
					<div class="indate">
						<p id="selectp">지역을 선택해주세요 </p>

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
					<a href="#" class="selecbtn" id="sbtn">검색</a>
				</div>
				
				
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
						</form>
					</div>
				<!-- </div> -->
				<script type="text/javascript">
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
                    
                    svg.addEventListener("click", function () {
                    	isbx.classList.toggle("clicked");
                    	
                    });
                    
                    date.addEventListener("click", function () {
                    	
                    	if(isbx.className="clicked"){
                    		isbx.classList.toggle("clicked");
                    	}
                    });
                    

                </script>
                <c:forEach var="item" items="${hotel}">
                <div class="list">

                    <div id="inner1" class="inner1 inner">
                        <img src="${pageContext.request.contextPath}/image/hotel/dog6.jpg" alt="">
                    </div>
                    <div id="inner2" class="inner2 inner">
                        <p>${item.hotelOpt }</p>
                        <h2>${item.hotelName }</h2>
                        <p>자세히보기</p>
                        <p>2021.12.11~2023.08.31</p>
                        <h1>${item.hotelId}</h1>
                        <h1>가격</h1>
                    </div>
                    <div class="innerbtn" id="${item.hotelId }">
                        <button>RESERVE</button>
                    </div>

                </div>
               
               
                	<div class="option_list" id="option_list1">
                    <table>
                     <c:forEach var="room" items="${room}">
                 <c:if test="${item.hotelId == room.hotelName}">
                        <tr>
                            <td class="td1">
                                <div class="intr">
                                    <div class="intr_room">
                                        <p>${room.roomName }</p>
                                        <P>Size : 20.7</P>
                                    </div>
                                    <div class="intr_a">
                                        <a href="#" class="a1">객실 상세보기</a>
                                        <a href="#" class="a2">비교함 담기</a>
                                        <p>가격</p>
                                    </div>
                                    <!-- <div id="intr_price">
                                        36,000 KRW~
                                    </div> -->
                                </div>
                            </td>
                            <td class="td2"><a href="${pageContext.request.contextPath}/godetail/${item.hotelName}/${room.roomNamd}">예약하기</a></td>
                        </tr>
                        	</c:if>
                        	 <script>
            $(document).ready(function () {

                $("#innerbtn1").click(function () {

                    $("#option_list1").slideToggle();

                });
                $("#innerbtn2").click(function () {

                    $("#option_list2").slideToggle();

                });

            });
        </script>
                </c:forEach>
                   	</table>
                   	</div>
                   
                
                </c:forEach>
                
               
            </section>
           
        </main>

        <footer>
           <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>

</body>
</html>