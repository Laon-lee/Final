
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
    <script src="./js/jquery-ui-1.13.2.custom/jquery-3.6.1.min.js"></script>
    <title>Document</title>
    <style>
        #mainA1 {
            font-family: 'Zilla Slab', serif;
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
            height: 3000px
        }

        nav div {
            width: 100%;
            height: 100%;
        }

        #nav1 {
            text-align: center;
            width: 200px;
            height: 30px;
        }

        #nav1 li {
            margin-left: 15px;
        }

        header a {
            cursor: pointer;
        }

        #nav2 {
            padding-top: 35px;
            width: 350px;
            height: 70px;
        }

        #nav2 p {
            width: 100%;
        }

        #nav2 ul {
            width: 350px;
            margin-right: 20px;

        }

        #nav2 li {
            box-sizing: border-box;
            width: 70px;
            height: 70px;

        }

        #nav2 li:nth-child(3) {}

        #nav2 a {
            font-size: 20px;
        }

        /* 검색 아이콘 호버 */

        #nav2-li-1stdiv {
            margin: 20px 0 20px 0;
            padding: 50px;
            display: none;
            position: absolute;
            top: 4%;
            left: 0px;
            width: 100vw;
            height: 60vh;
            flex-direction: column;
            z-index: 3;
            justify-content: center;
            align-items: center;
            gap: 40px;
            background-color: rgb(245, 235, 224);

        }

        .hover-layout1 {
            position: absolute;
            top: 7%;
            left: 0;
            display: none;
            align-items: start;
            width: 100vw;
            height: 100vh;
            background-color: black;
            opacity: 0.5;
        }

        #nav2-li-1stli:hover div {
            display: flex;
        }

        #nav2-li-2ndli:hover div {
            display: flex;
        }

        #nav2-li-3rdli:hover div {
            display: flex;
        }

        #nav2-li-4thli:hover div {
            display: flex;
        }

        #nav2-searchdiv {
            justify-content: center;
        }

        #nav2-searchdiv button {
            font-size: 25px;
        }

        #nav2-li-1stdiv input {
            padding: 5px;
            width: 70vw;
            height: 70px;
            font-size: 25px;
            outline: none;
        }

        #nav2-li-1stdiv button {
            height: 84px;
            width: 8vw;

        }

        #btns {
            display: flex;
            flex-wrap: wrap;
            flex-direction: row;
            width: 60vw;
            height: 40vw;
            justify-content: center;
        }

        #btns button {
            margin: 15px;
            width: 100px;
            height: 30px;
            border: 1px solid gray;
            background-color: #f5ebe0;
            cursor: pointer;
        }

        #nav2-li-2nddiv {

            margin: 20px 0 20px 0;
            padding: 50px;
            display: none;
            position: absolute;
            top: 4%;
            right: 0px;
            width: 20vw;
            height: 40vh;
            flex-direction: column;
            z-index: 1;
            justify-content: center;
            align-items: center;
            background-color: rgb(245, 235, 224);

        }

        #nav2-li-3rddiv {
            margin: 20px 0 20px 0;
            padding: 50px;
            display: none;
            position: absolute;
            top: 4%;
            right: 0px;
            width: 20vw;
            height: 40vh;
            flex-direction: column;
            z-index: 1;
            justify-content: center;
            align-items: center;
            background-color: rgb(245, 235, 224);

        }



        #nav2-li-4thdiv {
            margin: 20px 0 20px 0;
            padding: 50px;
            display: none;
            position: absolute;
            top: 4%;
            right: 0px;
            width: 20vw;
            height: 40vh;
            flex-direction: column;
            z-index: 10;
            justify-content: center;
            align-items: left;
            background-color: rgb(245, 235, 224);

        }

        #nav2-li-4thdiv input {
            width: 300px;
            height: 30px;
        }

        #nav2-li-4thdiv button {
            width: 308px;
            height: 40px;
            background-color: black;
            color: white;
            margin-top: 40px;
        }

        #nav2-li-4thdiv h4 {
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

        #container {
            position: fixed;
            width: 100%;
            height: 100%;
            display: grid;
            grid-template-rows: 70px 1fr 70px;
            grid-template-columns: 1fr;
        }

        header {
            z-index: 100;
            background-color: #f5ebe0;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
            width: 100vw;
            height: 100%;
        }

        main {
            width: 100%;
            background-color: #f5ebe0;

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

        #innerbtn>button {
            background-color: rgb(24, 24, 24);
            color: whitesmoke;
            width: 100%;
            height: 30%;
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

        .detail {
            width: 80%;
            margin: 5px auto;
            display: grid;
            grid-template-columns: 4fr 1fr;
            gap: 15px;

        }

        #sec1 {
            z-index: 1;
            transform: translateX(0);
            position: absolute;
            background: url("image/main/반고흐.png") no-repeat;
            background-size: contain;
            background-position: right;
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

        }

        #sec2 div {
            position: absolute;
            left: 4%;
            line-height: 34px;
        }

        #sec2 div h1 {
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
            background-position: 20%;
        }

        #sec3 div {
            position: absolute;
            left: 80%;
            line-height: 34px;
        }

        #sec3 div h1 {
            font-size: 40px;
            margin-bottom: 30px;
        }

        #sec3 button {
            border: none;
            background-color: lightgray;
            font-size: 20px;
            width: 200px;
            height: 40px;
            border-radius: 5%;
            margin-top: 15px;
        }

        #sec4 {
            width: 100vw;
            z-index: 4;
            transform: translateX(101%);
            position: absolute;
            background: url("image/main/호텔섹션.png") no-repeat right;
            background-size: contain;
            background-color: #f5ebe0;
            display: flex;
            align-items: center;
            background-position: 80%;
        }

        #sec4 div {
            position: absolute;
            left: 4%;
            line-height: 34px;
        }

        #sec4 div h1 {
            font-size: 40px;
            margin-bottom: 30px;
        }

        #sec4 button {
            border: none;
            background-color: lightgray;
            font-size: 20px;
            width: 200px;
            height: 40px;
            border-radius: 5%;
            margin-top: 15px;
        }

        footer {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            width: 100%;
            height: 100%;
            background-color: lightgray;
            justify-content: space-around;
            align-items: center;

        }

        footer p {
            font-size: 13px;
        }

        footer li {
            margin: 0 15px 0 15px;
            height: 15px;
        }

        footer ul {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            grid-template-rows: 1fr 1fr;

        }

        #footer-1stul {
            width: 150px;
        }

        #footer-1stul li {
            font-size: 22px;
            font-weight: 900;
            width: 150px;
        }

        #social li {
            width: 15px;
        }

        html {
            scroll-behavior: smooth;
        }
    </style>
</head>

<body>
    <div id="container">
        <header>
            <nav id="nav1">
                <ul>
                    <li><a id="mainA2">About Us</a></li>
                    <li><a id="mainA3">Shop</a></li>
                    <li><a id="mainA4">Hotel</a></li>
                </ul>
            </nav>
            <div>
                <h1><a id="mainA1">Déng Nuri</a></h1>
            </div>
            <nav id="nav2">
                <ul>
                    <li id="nav2-li-1stli">
                        <a href="#">
                            <p style="font-size: 16px">Search</p>
                        </a>
                        <div id="hover-layout1" class="hover-layout1">

                        </div>
                        <div id="nav2-li-1stdiv">
                            <div id="nav2-searchdiv">
                                <input type="text" placeholder="검색하실 물품을 적어주세요"><button>검색</button>
                            </div>
                            <h2>아래 품목도 검색해보세요.</h2>
                            <div id="btns">
                                <button type="button">사료</button>
                                <button type="button">영양제</button>
                                <button type="button">산책줄</button>
                                <button type="button">집</button>
                                <button type="button">의류</button>
                                <button type="button">장난감</button>
                                <button type="button">사료</button>
                                <button type="button">영양제</button>
                                <button type="button">산책줄</button>
                                <button type="button">집</button>
                                <button type="button">의류</button>
                                <button type="button">장난감</button>
                            </div>

                        </div>
                        <!-- nav 호버 -->
                        <!-- <script>
            document.getElementById("#hover-layout1").addEventListener("mouseover",function(){
                document.getElementById("#hover-layout1").style.display=none;
            })
        </script> -->
                    </li>
                    <li id="nav2-li-2ndli">
                        <a href="#">
                            <p style="font-size: 16px">Notice</p>
                        </a>
                        <div id="hover-layout2" class="hover-layout1">

                        </div>
                        <div id="nav2-li-2nddiv">
                            <h2>알림받아라 인마</h2>
                        </div>
                    </li>
                    <li id="nav2-li-3rdli">
                        <a href="#">
                            <p style="font-size: 16px;">Wish-List</p>
                        </a>
                        <div id="hover-layout3" class="hover-layout1">

                        </div>
                        <div id="nav2-li-3rddiv">
                            <h2>니가 좋아하는거다!</h2>
                        </div>
                    </li>
                    <li id="nav2-li-4thli">
                        <c:if test="${sessionScope.user == null}">
                            <a href="#">
                                <p style="font-size: 16px">Login</p>
                            </a>
                            <div id="hover-layout4" class="hover-layout1">

                            </div>
                            <div id="nav2-li-4thdiv">
                                <h4>로그인</h4>
                                <br>
                                <form action="${pageContext.request.contextPath}/login">
                                    <h6>아이디</h6>
                                    <input type="text" name="userid" id="userid">
                                    <h6>비밀번호</h6>
                                    <input type="password" name="password" id="password"><br>
                                    <button>Login</button>
                                </form>
                                <p
                                    style="font-size: 11px; border-bottom:1px solid black; width:130px; margin-top:10px;">
                                    혹시 회원이 아니신가요??</p>
                                <a href="${pageContext.request.contextPath}/membership" style="font-size:13px">회원 가입</a>
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.user != null}">
                            <a href="${pageContext.request.contextPath}/logout">
                                <p style="font-size: 16px">Logout</p>
                            </a>
                        </c:if>
                    </li>
                </ul>
            </nav>
            <script>
                const div1 = document.getElementById("nav2-li-1stdiv");
                const div2 = document.getElementById("nav2-li-2nddiv");
                const div3 = document.getElementById("nav2-li-3rddiv");
                const div4 = document.getElementById("nav2-li-4thdiv");
                const back1 = document.querySelector("#hover-layout1");
                const back2 = document.querySelector("#hover-layout2");
                const back3 = document.querySelector("#hover-layout3");
                const back4 = document.querySelector("#hover-layout4");
                const li1 = document.getElementById("nav2-li-1stli");
                const li2 = document.getElementById("nav2-li-2ndli");
                const li3 = document.getElementById("nav2-li-3rdli");
                const li4 = document.getElementById("nav2-li-4thli");
              // div1.addEventListener("mouseleave",function(){
              //   div1.style.display="none";
              //   back1.style.display="none";
              // })
              // div2.addEventListener("mouseleave",function(){
              //   div2.style.display="none";
              //   back2.style.display="none";
              // })
              // div3.addEventListener("mouseleave",function(){
              //   div3.style.display="none";
              //   back3.style.display="none";
              // })
              // div4.addEventListener("mouseleave",function(){
              //   div4.style.display="none";
              //   back4.style.display="none";
              // })
              // li1.addEventListener("mouseover",function(){
              //   div1.style.display="flex";
              //   back1.style.display="flex";
              // })
              // li2.addEventListener("mouseover",function(){
              //   div2.style.display="flex";
              //   back2.style.display="flex";
              // })
              // li3.addEventListener("mouseover",function(){
              //   div3.style.display="flex";
              //   back3.style.display="flex";
              // })
              // li4.addEventListener("mouseover",function(){
              //   div4.style.display="flex";
              //   back4.style.display="flex";
              // })

            //   document.querySelector("#hover-layout1").addEventListener("mouseover",function(){
            //     document.getElementById("nav2-li-1stdiv").style.display="none";
            //     document.querySelector("#hover-layout1").style.display="none";
            //   });
            //   document.querySelector("#hover-layout2").addEventListener("mouseover",function(){
            //     document.getElementById("nav2-li-2nddiv").style.display="none";
            //     document.querySelector("#hover-layout2").style.display="none";
            //   });
            //   document.querySelector("#hover-layout3").addEventListener("mouseover",function(){
            //     document.getElementById("nav2-li-3rddiv").style.display="none";
            //     document.querySelector("#hover-layout3").style.display="none";
            //   });
            //   document.querySelector("#hover-layout4").addEventListener("mouseover",function(){
            //     document.getElementById("nav2-li-4thdiv").style.display="none";
            //     document.querySelector("#hover-layout4").style.display="none";
            //   });



            //   document.getElementById("nav2-li-1stli").addEventListener("mouseover",function(){
            //     document.getElementById("nav2-li-1stdiv").style.display="flex";
            //     document.querySelector("#hover-layout1").style.display="flex";
            //   });
            //   document.getElementById("nav2-li-2ndli").addEventListener("mouseover",function(){
            //     document.getElementById("nav2-li-2nddiv").style.display="flex";
            //     document.querySelector("#hover-layout2").style.display="flex";
            //   });
            //   document.getElementById("nav2-li-3rdli").addEventListener("mouseover",function(){
            //     document.getElementById("nav2-li-3rddiv").style.display="flex";
            //     document.querySelector("#hover-layout3").style.display="flex";
            //   });
            //   document.getElementById("nav2-li-4thli").addEventListener("mouseover",function(){
            //     document.getElementById("nav2-li-4thdiv").style.display="flex";
            //     document.querySelector("#hover-layout4").style.display="flex";
            //   });
            // </script>
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
                    <input type="text" id="datepicker1">

                </div>
               <div class="detail">
                    <div class="content">
                        <div class="c_title">
                            <h1>SMARTCHOICE</h1>
                            <P>DELUXE / 2DOGS / STANDARD VIEW</P>
                        </div>
                        <div class="c_option">
                            <p>조식 제공, extra bed 제공</p>
                        </div>
                        <div class="c_info">
                            <p>강아지들 재방문률 95%

                                품격있는 애견 호텔 저희 비숑프라자를 방문 해주셔서 너무 감사합니다.
                                
                                항상 감사하는 마음으로 최고의 품질, 최고의 서비스를 제공하게습니다.
                                
                                애견들을 사람처럼, 사람들을 애견처럼 </p>
                        </div>
                        <div class="c_review">
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
                            <h1>39,600KRW</h1>
                            <p>2022.10.29</p>
                            <p>36,000</p>
                            <p>세금</p>
                            <p>3,600</p>
                        </div>
                        <div class="total">
                            <p>+세금(10%)</p>
                            <h1>총 예약금액 39,600KRW</h1>
                            <button>회원예약</button>
                        </div>
                    </div>
               </div>
                
            </section>
        </main>

        <footer>
            <ul id="footer-1stul">
                <li><a href="#">Déng Nuri</a></li>
            </ul>
            <ul>
                <li>
                    <p>대표 : 김송이</p>
                </li>
                <li>
                    <p>전화번호 : 010-1234-5678</p>
                </li>
                <li>
                    <p>이메일 : abcde@abcdef.com</p>
                </li>
                <li>
                    <p>팩스번호 : 02-1234-5678</p>
                </li>
                <li>
                    <p>영업시간 : 00:00~23:59</p>
                </li>
                <li>
                    <p>주소 : 서울특별시 구로구 구디동123-4</p>
                </li>
            </ul>
            <ul id="social">
                <li><a href="#"><img src="https://i.ibb.co/LrVMXNR/social-fb.png" alt=""></a></li>
                <li><a href="#"><img src="https://i.ibb.co/vJvbLwm/social-twitter.png" alt=""></a></li>
                <li><a href="#"><img src="https://i.ibb.co/b30HMhR/social-linkedin.png" alt=""></a></li>
            </ul>
        </footer>
    </div>

</body>

</html>