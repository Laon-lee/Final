
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
          

        }
		
		.list {
		height:25vh;}
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
					<a href="#" class="selecbtn" id="asearchbtn">검색</a>
				</div>
				
				
				<!-- <div class="coutbox" id="ioutbox"> -->
					<div id="isbx" class="csbx">
						<p>지역구분</p>
						<form action="" id="bxform">
							<label for="l1"><input type="checkbox" name="cate" id="l1" class="allseo" value="서울">서울전체</label> 
						<label for="l2"><input type="checkbox" name="cate" id="l2" class="seo" value="금천구">금천구</label>
						<label for="l3"><input type="checkbox" name="cate" id="l3" class="seo" value="은평구">은평구</label> 
						<label for="l4"><input type="checkbox" name="cate" id="l4" class="seo" value="강남구">강남구</label>
						<label for="l5"><input type="checkbox" name="cate" id="l5" class="seo" value="강서구">강서구</label>
						<label for="l6"><input type="checkbox" name="cate" id="l6" class="seo" value="관악구">관악구</label>
						<label for="l7"><input type="checkbox" name="cate" id="l7" class="seo" value="도봉구">도봉구</label><br />
						<label for="l8"><input type="checkbox" name="cate" id="l8" class="seo" value="서초구">서초구</label>
						<label for="l9"><input type="checkbox" name="cate" id="l9" class="seo" value="성동구">성동구</label>
						<label for="l10"><input type="checkbox" name="cate" id="l10" class="seo" value="양천구">양천구</label> 
						<label for="l11"><input type="checkbox" name="cate" id="l11" class="seo" value="용산구">용산구</label>
						<label for="l12"><input type="checkbox" name="cate" id="l12" class="seo" value="서대문구">서대문구</label>
						<label for="l13"><input type="checkbox" name="cate" id="l13" class="seo" value="동대문구">동대문구</label>
						<label for="l14"><input type="checkbox" name="cate" id="l14" class="seo" value="강동구">강동구</label> <br />
						<label for="l20"><input type="checkbox" name="cate" id="l20" class="allgyeong" value="경기">경기전체</label> 
						<label for="l21"><input type="checkbox" name="cate" id="l21" class="gyeong" value="구리시">구리시</label>
						<label for="l22"><input type="checkbox" name="cate" id="l22" class="gyeong" value="남양주시">남양주시</label> 
						<label for="l23"><input type="checkbox" name="cate" id="l23" class="gyeong" value="의정부시">의정부시</label>
						<label for="l24"><input type="checkbox" name="cate" id="l24" class="gyeong" value="포천시">포천시</label>
						<label for="l25"><input type="checkbox" name="cate" id="l25" class="gyeong" value="하남시">하남시</label><br />
						<label for="l15"><input type="checkbox" name="cate" id="l15" class="allin" value="인천">인천전체</label>
						<label for="l16"><input type="checkbox" name="cate" id="l16" class="in" value="연수구">연수구</label> 
						<label for="l17"><input type="checkbox" name="cate" id="l17" class="in" value="부평구">부평구</label> 
						<label for="l18"><input type="checkbox" name="cate" id="l18" class="in" value="남동구">남동구</label>
						<label for="l19"><input type="checkbox" name="cate" id="l19" class="in" value="서구">서구</label> 
						<label for="l26"><input type="checkbox" name="cate" id="l26" class="allchung" value="충북">충북전체</label>
						<label for="l27"><input type="checkbox" name="cate" id="l27" class="chung" value="음성군">음성군</label>
						<label for="l28"><input type="checkbox" name="cate" id="l28" class="chung" value="제천시">제천시</label>
						<label for="l29"><input type="checkbox" name="cate" id="l29" class="chung" value="청주시">청주시</label>
						<label for="l30"><input type="checkbox" name="cate" id="l30" class="chung" value="충주시">충주시</label> 
						</form>
					</div>
				<!-- </div> -->
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
                <div class="list">

                    <div id="inner1" class="inner1 inner">
                        <img src="${pageContext.request.contextPath}/image/hotel/dog6.jpg" alt="">
                    </div>
                    <div id="inner2" class="inner2 inner">
                        <p>${item.hotelOpt }</p>
                        <h2>${item.hotelName }</h2>
                        <p>${item.hotelAddr}</p>
                        <p>2021.12.11~2023.08.31</p>
                        <h1 class="${item.hotelId}" id="h1">${item.hotelId}</h1>
                        <h1>가격</h1>
                        <input type="hidden" name="hidden"  id="hidden" value="${item.hotelId }"/>
                    </div>
                    <div class="innerbtn" >
                        <button class="realbtn" id="btn${status.index}">객실보기</button>
                        <a href="${pageContext.request.contextPath}/godetail/${item.hotelId}/${startdate}/${enddate}">예약하기</a>
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
                                        <p>${room.roomName }</p>
                                        <P>${room.roomType }견</P>
                                    </div>
                                    <div class="intr_a">
                                        <a href="#" class="a1">객실 상세보기</a>
                                       
                                        <p><fmt:formatNumber type="currency" value="${room.roomPrice}"/></p>
                                    </div>
                                    <!-- <div id="intr_price">
                                        36,000 KRW~
                                    </div> -->
                                </div>
                            </td>
                            <td class="td2"><a href="${pageContext.request.contextPath}/godetail/${item.hotelName}/${room.roomName}/${startdate}/${enddate}">예약하기</a></td>
                        </tr>
                        	</c:if>
                        	 
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
    <script>
    let btn = document.getElementsByClassName("realbtn");
    for(let i = 0 ; i < btn.length ; i++){
    	btn[i].addEventListener("click",function(){
    		$(".option_list").eq(i).slideToggle();	
    	});
    };
	
           
	    	<%--$(function(){
	    		
	    		let btnarr = new Array();
	    		let listarr = new Array();
	    		
	    		let btnid = $(".realbtn").attr("id");
        	    let listid = $(".option_list").attr("id");
	    		
	    		$('.realbtn').each(function (i, item){
	    			//let hidden = $(this).val();
	    			let btn = $(this).attr("id");
	    			
	    			btnarr.push(btn);
	    			
	    			console.log("i"+i);
	    			console.log("btnarr[i]"+btnarr[i]);
	    			
	    			
	    			
	    			
	    		})
	    		
	    		$(".option_list").each(function(j,items){
	    			let list = $(this).attr("id");
	    			listarr.push(list);
	    			console.log("i"+j);
	    			console.log("listarr[i]"+listarr[j]);
	    		})
	    		
	    		for(let i = 0; i <btnarr.length; i++){
	    			
	    				$(".realbtn").click(function(){
	            			
	            			
	    					if(listarr[i] == btnid) {
	        					console.log("forlistid"+listarr);
	        					$("#11").slideToggle();
	        				}
	        	    })
	    			
	    		}
	    		
	    		
        	    
        	    
        	    console.log("listid"+listid);
        	    
        		
       
           })--%>

        </script>
</body>
</html>