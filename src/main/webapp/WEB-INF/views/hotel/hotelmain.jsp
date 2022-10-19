<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<script src="https://kit.fontawesome.com/4b992414b9.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap" rel="stylesheet">
       <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/hotel/header.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/footer.css">
    <title>Insert title here</title>
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
            position: fixed;
            width: 100%;
            height: 100%;
            display: grid;
            grid-template-rows: 70px 1fr 70px;
            grid-template-columns: 1fr;
        }

        main {
            width: 100%;
            background-color: #EDEDE9;

        }

        section {
            width: 100vw;
            height: 82vh;
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

        #img1,
        #img2,
        #img3,
        #img4,
        #img5 {
            width: 100%;
            height: 100%;
        }

        #img1>img, #img2>img, #img3>img, #img4>img, #img5>img{
            object-fit: cover;
            width: 100%;
            height: 100%;
        }

        .date {
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: center
        }

        #isbx {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            display: none;
        }


        .isbx-toggle {
            display: block !important;
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
                    <p id="selectp">지역을 선택해주세요</p>
                    
                    <!-- <input type="text" placeholder="지역을" id="choicehotel"> -->
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-search" viewBox="0 0 16 16" id="svg">
                        <path
                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                    </svg>
                    <input type="text" id="datepicker1" name="dates">
                    


                </div>

                <script>
                    $(document).ready(function(){
                        var now = new Date();
                        var tom = new Date();
                        tom.setDate(tom.getDate()+1);
                        console.log(now)
                        $('input[name="dates"]').daterangepicker({
                            "startDate": now,
                            "endDate": tom,
                            "minDate": now,
                            "opens": "center",
                            locale: {
		                        format: "YYYY-MM-DD",
		                        daysOfWeek: ["일", "월", "화", "수", "목", "금", "토"],
		                        monthNames: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
	                        }
                        }, function(start, end, label) {
                            console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
                            $('input[name="dates"]').val(start.format("YYYY-MM-DD") + " - " + end.format("YYYY-MM-DD"));
                         });
                    });
                </script>

                <div id="isbx" class="csbx">
                    <p>지역구분</p>
                    <form action="">
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
                <script>
                    var ch = document.getElementById("choicehotel");
                    var svg = document.getElementById("svg");
                    var sbx = document.getElementById("isbx");
                    var p =document.getElementById("selectp");
                    var dp = document.getElementById("datepicker1");
                    svg.addEventListener("click", function () {
                        sbx.classList.toggle("isbx-toggle");
                    });
                    p.addEventListener("click", function(){
                        sbx.classList.toggle("isbx-toggle");
                    });
                    dp.addEventListener("click", function(){
                        sbx.style.display = 'none';
                    })
                </script>
                <div id="hotel_img">
                    <div id="img1">
                        <img src="./hotel/dog1.jpg" alt="">
                    </div>
                    <div id="img2">
                        <img src="./hotel/dog2.jpg" alt="">
                    </div>
                    <div id="img3">
                        <img src="./hotel/dog4.jpg" alt="">
                    </div>
                    <div id="img4">
                        <img src="./hotel/dog5.jpg" alt="">
                    </div>
                    <div id="img5">
                        <img src="./hotel/dog3.jpg" alt="">
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