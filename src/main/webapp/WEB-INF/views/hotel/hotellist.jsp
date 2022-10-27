
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
	<script>
					/* document.getElementById("selecbtn").addEventListener("click",function(){
						location.href = "${pageContext.request.contextPath}/golist";
					}); */
				
                    $(function () {
                        var now = new Date();
                        var tom = new Date();
                        tom.setDate(tom.getDate() + 1);
                        console.log(now);
                        console.log('${startdate}');
                        console.log('${enddate}');
                        var startdate = new Date('${startdate}');
                        var enddate = new Date('${enddate}');
                        
                        console.log(startdate);
                        console.log(enddate);
                     	
                        //이미 category에 메인페이지에서 선택된 데이터가 배열로 들어있음
                        //해당 val값을 가지고 있는 input을 체크되게 만든다
                        
                        console.log('${category}');
                       for(let f of '${category}') {
                    	   console.log(f);
                    	   if($('.cate').val()==f){
                    		   $(this).prop("checked",true);
                    	   }
                       }
                        
                       	var cateArr = new Array();
                        $('input[name="dates"]').daterangepicker({
                        	"startDate": startdate,
                            "endDate": enddate,
                            "minDate": now,
                            "opens": "center",
                            
                   
                            locale: {
                            	"separator": " ~ ",
                            	 "applyLabel": "적용",
                                 "cancelLabel": "취소",
                                format: "YYYY-MM-DD",
                                daysOfWeek: ["일", "월", "화", "수", "목", "금", "토"],
                                monthNames: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
                   				
                            }
                        }, function (start, end, label) {
                            console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
                            $('input[name="dates"]').val(start.format("YYYY-MM-DD") + " - " + end.format("YYYY-MM-DD"));
                        });
                       
                        $('input[name="dates"]').on('show.daterangepicker', function (ev, picker) {
                        	    $(".cancelBtn").css("float", "right");
                        	 	$(".cancelBtn").css("background-color", "white");
                        	 	$(".cancelBtn").css("color","black");
                        	 	$(".applyBtn").css("background-color", "black");
                        	 	$(".applyBtn").css("color","white");
                        		$(".cancelBtn, .applyBtn").css("border","1px solid black");
                        	 	$(".cancelBtn, .applyBtn").css("cursor","pointer");
                        		$(".cancelBtn, .applyBtn").css("width", "60px");
                        	});
                        	
                        $('.allseo').click(function(){
                        	if($('.allseo').is(':checked')){
                        		$('.seo').prop("checked",true);
                        	} else {
                        		$('.seo').prop("checked",false);
                        	}
                        });
                        
                        $('.allin').click(function(){
                        	if($('.allin').is(':checked')){
                        		$('.in').prop("checked",true);
                        	} else {
                        		$('.in').prop("checked",false);
                        	}
                        });
                        
                        $('.allgyeong').click(function(){
                        	if($('.allgyeong').is(':checked')){
                        		$('.gyeong').prop("checked",true);
                        	} else {
                        		$('.gyeong').prop("checked",false);
                        	}
                        });
                        
                        $('input[name="dates"]').on('apply.daterangepicker', function(ev, picker) {
                            console.log(picker.startDate.format('YYYY-MM-DD'));
                            console.log(picker.endDate.format('YYYY-MM-DD'));
                            /* var end = picker.endDate.format('YYYY-MM-DD');
                            var start = picker.startDate.format('YYYY-MM-DD'); */
                            var end = picker.endDate.format('YYYY-MM-DD');
                            var start = picker.startDate.format('YYYY-MM-DD');
                            console.log("여기스타트"+start);
                            console.log("여기엔드"+end);
                            
                            $("input[name='cate']:checked").each(function(){
                            	console.log(cate);
                            	var cate = $(this).val();
                            	cateArr.push(cate);
                            	
                            });
                            
                            
                            var cateArr2 = cateArr.slice(1);
                            
                    		$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+start+"/"+end+"/"+cateArr2)
                    		
                    		 if($('.allseo').is(':checked') || $('.allin').is(':checked') || $('.allgyeong').is(':checked')) {
                    			$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+start+"/"+end+"/"+cateArr2);
                            } else {
                            	$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+start+"/"+end+"/"+cateArr);
                            }
                    		
                    		
                        });
                        
                       
                        
                        /* var stringcate = '${category}';
                        /* $("input[name='cate']").val(stringcate[i]).prop("checked",true); */
                        /*for(let i=0; i<stringcate.length; i++){
                        	if ($("input[name='cate']").val() == stringcate[i])) {
								$().prop("checked",true);
							} 
                        	
                        } */
                        
                    });
	
				
                </script>
                <!-- <script type="text/javascript">
                	document.getElementById("sbtn").addEventListener("click",function(e){
                		e.preventDefault();
                		let cateArr[] = new Array();
                		
                		let catedata = document.querySelector('input[type=checkbox][name=cate]:checked').value;
                		cateArr.push(catedata);
                		
                		let cateArr2 = cateArr.slice(1);
                		
                		fetch("${pageContext.request.contextPath}/restlist"), {
                			method : "POST",
                			headers : {"Content-Type" : }
                		}
                	})
                </script> -->
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
                <c:forEach var="item" items="${cate}">
                <div class="list">

                    <div id="inner1" class="inner1 inner">
                        <img src="${pageContext.request.contextPath}/image/hotel/dog6.jpg" alt="">
                    </div>
                    <div id="inner2" class="inner2 inner">
                        <p>${item.hotelOpt }</p>
                        <h2>${item.hotelName }</h2>
                        <p>자세히보기</p>
                        <p>2021.12.11~2023.08.31</p>
                        <h1>가격</h1>
                    </div>
                    <div id="innerbtn1" class="innerbtn">
                        <button>RESERVE</button>
                    </div>

                </div>
               
                <c:forEach var="room" items="${list}">
                 <c:if test="${item.hotelName eq room.hotelName}">
                	<div class="option_list" id="option_list1">
                    <table>
                        <tr>
                            <td class="td1">
                                <div class="intr">
                                    <div class="intr_room">
                                        <p>방 이름 </p>
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
                            <td class="td2"><a href="${pageContext.request.contextPath}/godetail/${item.hotelName}">예약하기</a></td>
                        </tr>
                   	</table>
                   	</div>
                   	</c:if>
                </c:forEach>
                
                </c:forEach>
                
                <%-- <c:forEach var="room" items="${list}">
                	<p>${room.hotelName }</p>
                	<p>${room.hotelRoom }</p>
                </c:forEach> --%>
                <%-- <div id="list">

                    <div id="inner1" class="inner">
                        <img src="${pageContext.request.contextPath}/image/hotel/dog6.jpg" alt="">
                    </div>
                    <div id="inner2" class="inner">
                        <p>대형/중형/소형</p>
                        <h2>Smart Choice</h2>
                        <p>자세히보기</p>
                        <p>2021.12.11~2023.08.31</p>
                        <h1>36,000 KRW~</h1>
                    </div>
                    <div id="innerbtn1" class="innerbtn">
                        <button>RESERVE</button>
                    </div>

                </div>
                <div class="option_list" id="option_list1">
                    <table>
                        <tr>
                            <td id="td1">
                                <div id="intr">
                                    <div id="intr_room">
                                        <p>STANDARD</p>
                                        <P>Size : 20.7</P>
                                    </div>
                                    <div id="intr_a">
                                        <a href="#" id="a1">객실 상세보기</a>
                                        <a href="#" id="a2">비교함 담기</a>
                                        <p>36,000 KRW~</p>
                                    </div>
                                    <!-- <div id="intr_price">
                                        36,000 KRW~
                                    </div> -->
                                </div>
                            </td>
                            <td id="td2"><a href="${pageContext.request.contextPath}/godetail">예약하기</a></td>
                        </tr>
                        <tr>
                            <td id="td1">
                                <div id="intr">
                                    <div id="intr_room">
                                        <p>STANDARD</p>
                                        <P>Size : 20.7</P>
                                    </div>
                                    <div id="intr_a">
                                        <a href="#" id="a1">객실 상세보기</a>
                                        <a href="#" id="a2">비교함 담기</a>
                                        <p>36,000 KRW~</p>
                                    </div>
                                    <!-- <div id="intr_price">
                                        36,000 KRW~
                                    </div> -->
                                </div>
                            </td>
                            <td id="td2"><a href="${pageContext.request.contextPath}/godetail">예약하기</a></td>
                        </tr>
                        <tr>
                            <td id="td1">
                                <div id="intr">
                                    <div id="intr_room">
                                        <p>STANDARD</p>
                                        <P>Size : 20.7</P>
                                    </div>
                                    <div id="intr_a">
                                        <a href="#" id="a1">객실 상세보기</a>
                                        <a href="#" id="a2">비교함 담기</a>
                                        <p>36,000 KRW~</p>
                                    </div>
                                    <!-- <div id="intr_price">
                                        36,000 KRW~
                                    </div> -->
                                </div>
                            </td>
                            <td id="td2"><a href="${pageContext.request.contextPath}/godetail">예약하기</a></td>
                        </tr>
                    </table>
                </div>
                <div id="list">

                    <div id="inner1" class="inner">
                        <img src="${pageContext.request.contextPath}/image/hotel/dog6.jpg" alt="">
                    </div>
                    <div id="inner2" class="inner">
                        <p>대형/중형/소형</p>
                        <h2>Smart Choice</h2>
                        <p>자세히보기</p>
                        <p>2021.12.11~2023.08.31</p>
                        <h1>36,000 KRW~</h1>
                    </div>
                    <div id="innerbtn2" class="innerbtn">
                        <button>RESERVE</button>
                    </div>

                </div>
                <div class="option_list" id="option_list2">
                    <table>
                        <tr>
                            <td id="td1">
                                <div id="intr">
                                    <div id="intr_room">
                                        <p>STANDARD</p>
                                        <P>Size : 20.7</P>
                                    </div>
                                    <div id="intr_a">
                                        <a href="#" id="a1">객실 상세보기</a>
                                        <a href="#" id="a2">비교함 담기</a>
                                        <p>36,000 KRW~</p>
                                    </div>
                                    <!-- <div id="intr_price">
                                        36,000 KRW~
                                    </div> -->
                                </div>
                            </td>
                            <td id="td2"><a href="${pageContext.request.contextPath}/godetail">예약하기</a></td>
                        </tr>
                        <tr>
                            <td id="td1">
                                <div id="intr">
                                    <div id="intr_room">
                                        <p>STANDARD</p>
                                        <P>Size : 20.7</P>
                                    </div>
                                    <div id="intr_a">
                                        <a href="#" id="a1">객실 상세보기</a>
                                        <a href="#" id="a2">비교함 담기</a>
                                        <p>36,000 KRW~</p>
                                    </div>
                                    <!-- <div id="intr_price">
                                        36,000 KRW~
                                    </div> -->
                                </div>
                            </td>
                            <td id="td2"><a href="${pageContext.request.contextPath}/godetail">예약하기</a></td>
                        </tr>
                        <tr>
                            <td id="td1">
                                <div id="intr">
                                    <div id="intr_room">
                                        <p>STANDARD</p>
                                        <P>Size : 20.7</P>
                                    </div>
                                    <div id="intr_a">
                                        <a href="#" id="a1">객실 상세보기</a>
                                        <a href="#" id="a2">비교함 담기</a>
                                        <p>36,000 KRW~</p>
                                    </div>
                                    <!-- <div id="intr_price">
                                        36,000 KRW~
                                    </div> -->
                                </div>
                            </td>
                            <td id="td2"><a href="${pageContext.request.contextPath}/godetail">예약하기</a></td>
                        </tr>
                    </table>
                </div> --%>
            </section>
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
        </main>

        <footer>
           <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>

</body>
</html>