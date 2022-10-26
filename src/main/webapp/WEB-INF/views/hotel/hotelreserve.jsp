
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
            min-height: 86vh;

        }

        section {
            width: 100%;
            height: 100%;
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
        
        #reservebtn {
            background-color: rgb(24, 24, 24);
            color: whitesmoke;
            width: 100%;
            height: 5vh;
        }
        
        .reserveinfo {
            width: 80%;
            margin: 5px auto;
            display: grid;
            grid-template-columns: 4fr 1.3fr;


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
                        <p id="selectp">지역을 선택해주세요</p>

                        <!-- <input type="text" placeholder="지역을" id="choicehotel"> -->
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-search" viewBox="0 0 16 16" id="svg">
                            <path
                                d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                        </svg>
                    </div>
                    <input type="text" id="datepicker1" name="dates" readonly>
                    <!-- <button class="selecbtn">검색</button> -->
                    <a href="#" class="selecbtn">검색</a>
                </div>

                <script>
                    /* document.getElementById("selecbtn").addEventListener("click",function(){
                        location.href = "${pageContext.request.contextPath}/golist";
                    }); */

                    $(document).ready(function () {
                        var now = new Date();
                        var tom = new Date();
                        tom.setDate(tom.getDate() + 1);
                        console.log(now)
                        $('input[name="dates"]').daterangepicker({
                            "startDate": now,
                            "endDate": tom,
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

                        $('input[name="dates"]').on('show.daterangepicker', function (ev, picker) {
                            $(".cancelBtn").css("float", "right");
                            $(".cancelBtn").css("background-color", "white");
                            $(".cancelBtn").css("color", "black");
                            $(".applyBtn").css("background-color", "black");
                            $(".applyBtn").css("color", "white");
                            $(".cancelBtn, .applyBtn").css("border", "1px solid black");
                            $(".cancelBtn, .applyBtn").css("cursor", "pointer");
                            $(".cancelBtn, .applyBtn").css("width", "60px");
                        });



                        $('input[name="dates"]').on('apply.daterangepicker', function (ev, picker) {
                            console.log(picker.startDate.format('YYYY-MM-DD'));
                            console.log(picker.endDate.format('YYYY-MM-DD'));
                            var end = picker.endDate.format('YYYY-MM-DD');
                            var start = picker.startDate.format('YYYY-MM-DD');
                            console.log("여기스타트" + start);
                            console.log("여기엔드" + end);
                            $(".selecbtn").attr("href", "${pageContext.request.contextPath}/golist/" + start + "/" + end)
                        });


                    });


                    console.log(document.getElementsByName("dates").values);
                </script>
                <!-- <div class="coutbox" id="ioutbox"> -->
                <div id="isbx" class="csbx">
                    <p>지역구분</p>
                    <form action="" id="bxform">
                        <label for="1"><input type="checkbox" name="" id="1">서울전체</label>
                        <label for="2"><input type="checkbox" name="" id="2">강남구</label>
                        <label for="3"><input type="checkbox" name="" id="3">강북구</label>
                        <label for="4"><input type="checkbox" name="" id="4">동작구</label>
                        <label for="5"><input type="checkbox" name="" id="5">경기전체</label>
                        <label for="6"><input type="checkbox" name="" id="6">고양시</label>
                        <label for="7"><input type="checkbox" name="" id="7">김포시</label>
                        <label for="8"><input type="checkbox" name="" id="8">남양주시</label>
                        <label for="9"><input type="checkbox" name="" id="9">성남시</label>
                        <label for="10"><input type="checkbox" name="" id="10">의정부시</label>
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

                    svg.addEventListener("click", function () {
                        isbx.classList.toggle("clicked");

                    });

                    date.addEventListener("click", function () {

                        if (isbx.className = "clicked") {
                            isbx.classList.toggle("clicked");
                        }
                    });



                </script>

                <div class="reservecont">
                	<div class="reserveinfo">
                		<h2>호텔이름</h2>
                		<p>옵션</p>
                		<div class="dogtype">
                		<form action="">
                			<label for="1"><input type="radio" name="" id="1" />대형</label>
                			<label for="2"><input type="radio" name="" id="2" />중형</label>
                			<label for="3"><input type="radio" name="" id="3" />소형</label>
                		</form>
                		</div>
                		<div class="meminfo">
                			<label for="name">예약자 명<input type="text" name="" id="name" /></label>
                			<label for="phone">전화번호<input type="text" name="" id="phone" /></label>
                			<label for="email">이메일<input type="text" name="" id="email" /></label>
                			<p>요청사항</p>
                			<textarea name="" id="req" cols="20" rows="5"></textarea>
                			
                		</div>
                	</div>
					 <div class="price">
                        <div class="p_box">
                            <p>객실1</p>
                            <h1>39,600KRW</h1>
                            <p>2022.10.29</p>
                            <p>${room.hotelPrice }</p>
                            <p>세금</p>
                            <p>3,600</p>
                        </div>
                        <div class="total">
                            <p>+세금(10%)</p>
                            <h1>총 예약금액 39,600KRW</h1>
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