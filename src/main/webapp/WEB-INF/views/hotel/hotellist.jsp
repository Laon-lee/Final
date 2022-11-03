
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        
        *{
        	box-sizing : border-box;
        }

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

        .list {
        	        width: 65%;
    
    display: flex;
    flex-direction: column;
    height: 100%;
    gap: 4vh;
    padding: 5px 0px;
        }
        
        
        .option_list {
            width: 48%;
            margin-left:52%;
            display: flex;
            flex-direction: row;
          

        }
		
        .option_list {
            display: none;
            
        }

        .inner1 {
            width: 30%;
            

        }

        .inner1>img {
            width: 100%;
    height: 100%;
    object-fit: cover;
        }

        .inner2 {
            width: 65%;
            padding-left: 20px;
                display: flex;
    flex-direction: column;
    justify-content: space-between
        }
        
        .inner2>h2 {
        margin-bottom: 1vh;
    font-size: 2rem;
        }

        .innerbtn {
            display: flex;
            flex-direction: row;
            align-items: center;
			min-width:165px;
            width: 25%;

        }

        .innerbtn>button {
               border: 2px solid gray;
    font-size: 15px;
    color: gray;
    width: 100%;
    height: 40%;
    font-weight: 700;
    gap: 5%;
    background-color: white;
        }

		.innera {
		    width: 100%;
    height: 40%;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: gray;
		
		}
		
		.innera>a {
		color: white;
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
			width: 80%;
    justify-content: space-between;
        }
        
        .intr_a>a{
        	font-size: 14px;
    text-decoration: underline;
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
            height: 100%;
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
        
        .hotelbox{
            display: flex;
    flex-direction: row;
    justify-content: space-around;
    margin: 25px auto;
    width: 65%;
        height: 30vh;
        }
        
        .listbox{
        display: flex;
    flex-direction: row;
    justify-content: space-between;
        height: 35%;
        }
        
        .modal {
            display: flex;
            justify-content: center;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;

        }

        .modalback {
            background-color: rgba(0, 0, 0, 0.6);
            width: 100%;
            height: 100%;
            position: absolute;
        }

        .modalcont {
            text-align: center;
            position: relative;
            background-color: white;
            border-radius: 10px;
            top: 0;
            padding: 10px 25px;
            width: 60%;
            height: 70%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
			margin: 8% auto;
        }

        .hidden {
            display: none;
        }

        .detail{
           border: none;
    background-color: #edede9;
    cursor: pointer;
    border-bottom: 1px solid black;

        }
        
        .close {
           border: none;
    background-color: white;
    cursor: pointer;
    /* border-bottom: 1px solid black; */
    font-weight: bold;
    margin-left: 95%;

    font-size: 20px;

        }
        

        .simg {
            position: absolute;
            width: 100%;
    height: 100%;

            transition: opacity 0.5s ease-in-out;
            opacity: 0;

            filter: alpha(opacity=0.5);
            object-fit: cover;
        }

        .simg:first-child {
            /* display: block; */
            opacity: 1;
        }

        .simg>img {
                width: 80%;
    			height: 85%;
            object-fit: contain;
        }
        
        .album{
        	display: flex;
    flex-direction: row;
    gap: 1vw;
    align-items: center;
    height: 90%;
    width:100%
        }
        
        .prev,.next {
        background-color: white;
    z-index: 3;
    border: none;
    height: 20%;
    width:45px;
    opacity: 0.2;
    
        }
        
        
        
        .imgBox{
        	width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
        }
        button>svg{
        height : 30px;
        width : 30px;
        }
        
        td {
        border : none;
        border-bottom : 1px dotted black;
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
					<a href="#" class="selecbtn" id="asearchbtn">검색</a>
				</div>
				
				
				<!-- <div class="coutbox" id="ioutbox"> -->
					<div id="isbx" class="csbx">
						<p>지역구분</p>
						<form action="" id="bxform">
						<input type="checkbox" name="cate" id="l1" class="allseo" value="서울"><label for="l1">서울전체</label> 
						<input type="checkbox" name="cate" id="l2" class="seo" value="금천구"><label for="l2">금천구</label>
						<input type="checkbox" name="cate" id="l3" class="seo" value="은평구"><label for="l3">은평구</label> 
						<input type="checkbox" name="cate" id="l4" class="seo" value="강남구"><label for="l4">강남구</label>
						<input type="checkbox" name="cate" id="l5" class="seo" value="강서구"><label for="l5">강서구</label>
						<input type="checkbox" name="cate" id="l6" class="seo" value="관악구"><label for="l6">관악구</label>
						<input type="checkbox" name="cate" id="l7" class="seo" value="도봉구"><label for="l7">도봉구</label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="cate" id="l8" class="seo" value="서초구" ><label for="l8">서초구</label>
						<input type="checkbox" name="cate" id="l9" class="seo" value="성동구"><label for="l9">성동구</label>
						<input type="checkbox" name="cate" id="l10" class="seo" value="양천구"><label for="l10">양천구</label> 
						<input type="checkbox" name="cate" id="l11" class="seo" value="용산구"><label for="l11">용산구</label>
						<input type="checkbox" name="cate" id="l12" class="seo" value="서대문구"><label for="l12">서대문구</label>
						<input type="checkbox" name="cate" id="l13" class="seo" value="동대문구"><label for="l13">동대문구</label>
						<input type="checkbox" name="cate" id="l14" class="seo" value="강동구"><label for="l14">강동구</label> <br />
						<input type="checkbox" name="cate" id="l20" class="allgyeong" value="경기"><label for="l20">경기전체</label> 
						<input type="checkbox" name="cate" id="l21" class="gyeong" value="구리시"><label for="l21">구리시</label>
						<input type="checkbox" name="cate" id="l22" class="gyeong" value="남양주시"><label for="l22">남양주시</label> 
						<input type="checkbox" name="cate" id="l23" class="gyeong" value="의정부시"><label for="l23">의정부시</label>
						<input type="checkbox" name="cate" id="l24" class="gyeong" value="포천시"><label for="l24">포천시</label>
						<input type="checkbox" name="cate" id="l25" class="gyeong" value="하남시"><label for="l25">하남시</label><br />
						<input type="checkbox" name="cate" id="l15" class="allin" value="인천"><label for="l15">인천전체</label>
						<input type="checkbox" name="cate" id="l16" class="in" value="연수구"><label for="l16">연수구</label> 
						<input type="checkbox" name="cate" id="l17" class="in" value="부평구"><label for="l17">부평구</label> 
						<input type="checkbox" name="cate" id="l18" class="in" value="남동구"><label for="l18">남동구</label>
						<input type="checkbox" name="cate" id="l19" class="in" value="서구"><label for="l19">서구</label> <br />
						<input type="checkbox" name="cate" id="l26" class="allchung" value="충북"><label for="l26">충북전체</label>
						<input type="checkbox" name="cate" id="l27" class="chung" value="음성군"><label for="l27">음성군</label>
						<input type="checkbox" name="cate" id="l28" class="chung" value="제천시"><label for="l28">제천시</label>
						<input type="checkbox" name="cate" id="l29" class="chung" value="청주시"><label for="l29">청주시</label>
						<input type="checkbox" name="cate" id="l30" class="chung" value="충주시"><label for="l30">충주시</label> 
						</form>
					</div>
				<!-- </div> -->
				<script type="text/javascript">

				window.addEventListener('DOMContentLoaded', function(){
					
					//카테고리 배열 설저
						
						
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
							 startdate = picker.startDate.format('YYYY-MM-DD');
							 enddate = picker.endDate.format('YYYY-MM-DD');
							
						});
						
						
						
						console.log("스타트"+startdate);
						console.log("엔드"+enddate);
				
						let today =  now.getFullYear() + "-" + ((now.getMonth() + 1) > 9 ? (now.getMonth() + 1).toString() : "0" + (now.getMonth() + 1)) + "-" + (now.getDate() > 9 ? now.getDate().toString() : "0" + now.getDate().toString());
	                    let tommorow = tom.getFullYear() + "-" + ((tom.getMonth() + 1) > 9 ? (tom.getMonth() + 1).toString() : "0" + (tom.getMonth() + 1)) + "-" + (tom.getDate() > 9 ? tom.getDate().toString() : "0" + tom.getDate().toString());
	                    
	                    let cateArr = [];
						let cateArr2 = [];
		        
						var startdate = null;
						var enddate=null;
	                    
	                   
	                    
	                   
						
						//지역구 선택 안했으면 글씨 빨간색으로 바뀌는거
						$("#asearchbtn").click(function(){
							
							 $('input[name="cate"]:checked').each(function(){
									var cate=$(this).val();
									cateArr.push(cate);
									cateArr2 = cateArr.slice(1);
								});
							 
							 console.log("cateArr"+cateArr);
			                 console.log("cateArr2"+cateArr2);
							
						if(Array.isArray(cateArr) && cateArr.length === 0) {
							$("#asearchbtn").click(function(){
								$("#selectp").css("color","red");
								$("#selectp").css("fontWeight","900");
								$("#isbx").css("display", "block");
								$("#isbx").css("display", "flex");
							});
						} else { //지역구를 선택한 경우
							
							
								$("#selectp").css("color","black");
								$("#isbx").css("display", "none");
						 		if(startdate!=null){ // 날짜적용선택시
						 			console.log("start" + startdate);
						 			console.log("end"+enddate);
						 			if($('#l1').is(':checked') || $('#l20').is(':checked') || $('#l15').is(':checked') || $('#26').is(':checked')) {
						 				console.log("적용버튼 누르고 all누름");
						 				console.log("cateArr2"+cateArr2);
										$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+startdate+"/"+enddate+"/"+cateArr2);
						 			} else {
						 				console.log("적용버튼 누르고 all 안누름");
						 				console.log("cateArr2"+cateArr);
						 				$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+startdate+"/"+enddate+"/"+cateArr);
						 			}
						 		} else { //날짜 선택 안했을 시 오늘 날짜가 들어감
						 			console.log("today"+today);
						 			console.log("tommorow"+tommorow);
						 			if($('#l1').is(':checked') || $('#l20').is(':checked') || $('#l15').is(':checked') || $('#26').is(':checked')) {
						 				console.log("적용버튼 안 누르고 all누름");
						 				console.log("cateArr2"+cateArr2);
										$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+today+"/"+tommorow+"/"+cateArr2);
						 			} else {
						 				console.log("적용버튼 안 누르고 all안누름");
						 				console.log("cateArr2"+cateArr);
						 				$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+today+"/"+tommorow+"/"+cateArr);
						 			}
						 		}
							
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
                 <c:forEach var="item" items="${hotel}" varStatus="status">
    				<div class="hotelbox">
        				<div id="inner1" class="inner1 inner">
            				<img src="${pageContext.request.contextPath}/image/hotel/dog6.jpg" alt="">
        				</div>

        				<div class="list">
            				<div class="listbox">
                				<div id="inner2" class="inner2 inner">
                    				<p>${item.hotelOpt }</p>
                    				<h2>${item.hotelName }</h2>
                    				<p>${item.hotelAddr}</p>
                    				<!-- <p>2021.12.11~2023.08.31</p> -->
                    				<%-- <h1 class="${item.hotelId}" id="h1">${item.hotelId}</h1> --%>
                    				<!-- <h1>가격</h1> -->
                    				<input type="hidden" name="hidden" id="hidden" value="${item.hotelId }" />
                				</div>
                				<div class="innerbtn">
                    				<button class="realbtn" id="btn${status.index}">객실보기</button>
                    				<div class="innera">
                    					<a href="${pageContext.request.contextPath}/godetail/${item.hotelId}/${startdate}/${enddate}">예약하기</a>
                    				</div>
                				</div>
            				</div>	
            				<div class="option_list" id="${item.hotelId}">
								<table>
                    				<c:forEach var="room" items="${room}">
                        				<c:if test="${item.hotelId == room.hotelId}">
                            				<tr>
                                				<td class="td1">
                                    				<div class="intr">
                                        				<div class="intr_room">
                                            				<P>${room.roomType }견</P>
                                        				</div>
                                        				<div class="intr_a">
                                            				<button class="detail">객실상세보기</button>
															<p>
                                                				<fmt:formatNumber type="currency" value="${room.roomPrice}" />
                                            				</p>
                                        				</div>
                                        			</div>
                                				</td>
                                				
                            				</tr>
                        				</c:if>
		                    		</c:forEach>
		        		        </table>
        		    		</div>
        		    		
        				</div>
					</div>
				</c:forEach>
          					<div class="modal hidden">
                    			<div class="modalback"></div>
								<div class="modalcont">
                        			<button class="close">
                        				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  											<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
										</svg>
                        			</button>
                        			<div class="album">
                            			<button class="prev" style="z-index: 3;" >
                            				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
  												<path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
											</svg>
										</button>
                            			<!-- 움직일 이미지들 -->
                            			<div class=imgBox >
                                		<!-- free url 사진 -->
                                			<div class="simg on"><img src="${pageContext.request.contextPath}/image/hotel/img1.jpg" alt=""></div>
                                			<div class="simg"><img src="${pageContext.request.contextPath}/image/hotel/img2.jpg" alt=""></div>
                                			<div class="simg"><img src="${pageContext.request.contextPath}/image/hotel/img3.jpg" alt=""></div>
                                			<div class="simg"><img src="${pageContext.request.contextPath}/image/hotel/img4.jpg" alt=""></div>
                                			<div class="simg"><img src="${pageContext.request.contextPath}/image/hotel/img5.jpg" alt=""></div>
                            			</div>
                            			<button class="next" style="z-index: 3;" >
                            				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
  												<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
											</svg>
										</button>
                        			</div>
                    			</div>
                			</div>
            </section>
       
                 
        </main>

        <footer>
           <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>
    
        <script>
        window.addEventListener('DOMContentLoaded', function () {
        	let btn = document.getElementsByClassName("realbtn");
            for(let i = 0 ; i < btn.length ; i++){
            	btn[i].addEventListener("click",function(){
            		$(".option_list").eq(i).slideToggle();	
            	});
            };
        	
            
        	
            $(".detail, .close, .modalback").click(function(){
                $(".modal").toggle();
            })

            $(".prev").click(function (e) {
                e.preventDefault();

                // 이미지 현재의 위치
                var imgOn = $(".imgBox").find(".on").index();
                console.log("imgOn"+imgOn);
                // 이미지 총 개수 
                var imgLen = $(".imgBox .simg").length;
                console.log(imgOn)

                // imgBox안의 img 중 imgOn 번째의 on 클래스 삭제 
                $(".imgBox .simg").eq(imgOn).removeClass("on");
                // imgBox안의 img 중 imgOn 번째 숨기기 
                $(".imgBox .simg").eq(imgOn).css("opacity", 0);

                //  이전의 위치로 돌아가야함으로
                imgOn = imgOn - 1;

                if (imgOn < 0) {
                    // 돌아가 위치가 -1일 경우 
                    // 이미지의 마지막으로 돌아간다
                    $(".imgBox .simg").eq(imgLen - 1).css("opacity", 1);
                    $(".imgBox .simg").eq(imgLen - 1).addClass("on");
                } else {
                    // 돌아갈 위치가 -1이 아닌 경우
                    $(".imgBox .simg").eq(imgOn).css("opacity", 1);
                    $(".imgBox .simg").eq(imgOn).addClass("on");
                }
				
          		
            });

            $(".next").click(function (e) {
                e.preventDefault();
                // 위에 동일 
                var imgOn = $(".imgBox").find(".on").index();
                var imgLen = $(".imgBox .simg").length;

                // 위에 동일
                $(".imgBox .simg").eq(imgOn).removeClass("on");
                $(".imgBox .simg").eq(imgOn).css("opacity", 0);

                // 다음의 위치로 알아야 되기 때문에 
                imgOn = imgOn + 1;

                if (imgOn === imgLen) {
                    // 다음의 위치가 총 개수보다 클 경우
                    // 처음의 위치로 돌아간다
                    $(".imgBox .simg").eq(0).css("opacity", 1);
                    $(".imgBox .simg").eq(0).addClass("on");
                } else {
                    // 다음 위치가 있는 경우 
                    $(".imgBox .simg").eq(imgOn).css("opacity", 1);
                    $(".imgBox .simg").eq(imgOn).addClass("on");
                }
                
              
            });
        });
    </script>
</body>
</html>