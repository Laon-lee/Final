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
            height: 100vh;
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
            font-size: 23px;
            font-weight: 900;
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
            position: relative;
            width: 100%;
            height: 100%;
            display: grid;
            grid-template-rows: 70px 1fr 70px;
            grid-template-columns: 1fr;
            grid-template-areas: 'header' 'main' 'footer';
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
            grid-area: header;
        }

        main {
            width: 100%;
            background-color: #f5ebe0;
            grid-area: main;
        }

        section {
            width: 70vw;

        }





        li {
            list-style-type: none;
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
            padding-bottom: 20px;
            grid-area: footer;
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

        button {
            cursor: pointer;
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

        .category-menu {
            padding: 15px 0 15px 0;
            border-top: 2px solid black;
            border-bottom: 2px solid black;
            margin-top: 10px;
            width: 100%;
            display: flex;
            flex-direction: row;
            justify-content: left;
            gap: 30px;
            text-align: center;
        }

        .category-menu a {
            font-size: 13px;
        }

        .category-menu img {
            margin-top: 10px;
            width: 40px;
            height: 40px;
        }

        .line {

            height: 1vh;
            width: 80%;

        }

        #main-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        #artcontainer{
            display: flex;
            flex-direction: column;
            
            width:50vw;
        }
        #sec1 {
            display: flex;
            flex-direction: column;

            align-items: center;
        }

        #sec2 {
            margin: 40px;
            display: flex;
            flex-direction: row;
            flex: 1fr 4fr;
        }

        #sec2 nav {
            flex: 1;
            padding: 0 30px 0 0;
            border-right: 1px solid black;
        }

        #sec2 nav li {
            margin: 0 0 10px 0;
            font-size: 20px;
            ;
            list-style-type: none;
            display: block;
        }
        #sec2-div1{
            
        }
        #sec2-div1 ul {
            width: 100%;
            background-color: #f5ebe0;
            font-size: 20px;
        }
        #sec2-div1 li {
            padding:10px
        }
        .selected{
            background-color: black;
            color:white;
        }
        #art2 {
            flex:5;
            width:70vw;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #sec2-div2{
            
        
        }
        #sec2-div2 li {
            display: block;
            font-size: 13px;
        }
        #sec2-div2-sel{
            padding:10px;
            height: 25px;
            border:5px solid white;
        }
        #sec2-div3{
            margin-top:20px;
        }
        #sec2-div3-table1{
            border-collapse: collapse;
            width:100%;
        }
        #sec2-div3-table1 td{
            text-align: center;
            border:1px solid black;
        }
        #sec2-div3-table2{
            border-collapse: collapse;
            
        }
        #sec2-div3-table2 td{
            text-align: center;
            
        }
    </style>
</head>

<body>

    <div id="container">
        <header>
            <nav id="nav1">
                <ul>

                    <li><a id="mainA3">Shop</a></li>

                </ul>
            </nav>
            <div>
                <h1><a href="${pageContext.request.contextPath}/gomain">Déng Nuri</a></h1>
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
                        <a href="#">
                            <p style="font-size: 16px">Login</p>
                        </a>
                        <div id="hover-layout4" class="hover-layout1">

                        </div>
                        <div id="nav2-li-4thdiv">
                            <h4>로그인</h4>
                            <br>
                            <form action="">
                                <h6>아이디</h6>
                                <input type="text" name="" id="">
                                <h6>비밀번호</h6>
                                <input type="password" name="" id=""><br>
                                <button>Login</button>
                            </form>
                            <p style="font-size: 11px; border-bottom:1px solid black; width:130px; margin-top:10px;">혹시
                                회원이 아니신가요??</p>
                            <a href="#" style="font-size:13px">회원 가입</a>
                        </div>

                    </li>
                </ul>
            </nav>

        </header>

        <main>
            <div id="main-container">
                <section id="sec1">

                    <div class="category-menu">
                        <li><a href=""><img src="./image/shop/Home.png" alt=""><br>Home</a></li>
                        <li><a href=""><img src="./image/shop/Walk.png" alt=""><br>Walk</a></li>
                        <li><a href=""><img src="./image/shop/Carrier.png" alt=""><br>Carrier</a></li>
                        <li><a href=""><img src="./image/shop/Clothes.png" alt=""><br>Clothes</a></li>
                        <li><a href=""><img src="./image/shop/Dining.png" alt=""><br>Dining</a></li>
                        <li><a href=""><img src="./image/shop/Grooming.png" alt=""><br>Grooming</a></li>
                        <li><a href=""><img src="./image/shop/Toy.png" alt=""><br>Toy</a></li>
                        <li><a href=""><img src="./image/shop/Big Dog.png" alt=""><br>Big Dog</a></li>
                        <li><a href=""><img src="./image/shop/Food.png" alt=""><br>Food</a></li>
                    </div>

                </section>
                <section id="sec2">
                    <nav>
                        <ul>
                            <li><a href="">주문내역조회</a></li>
                            <li><a href="">회원정보</a></li>
                            <li><a href="">관심상품</a></li>
                            <li><a href="">적립금</a></li>
                            <li><a href="">쿠폰</a></li>
                            <li><a href="">게시물 관리</a></li>
                            <li><a href="">배송 주소록 관리</a></li>
                        </ul>
                    </nav>
                    <article id="art2">
                        <div id="artcontainer">
                            <div id="sec2-div1">
                                <ul>
                                    <li class="selected">주문내역조회(0)</li>
                                    <li>취소/반품/교환 내역(0)</li>
                                </ul>
                            </div>
                            <div id="sec2-div2">
                                <form action="">
                                    <div id="sec2-div2-sel">
                                        <select name="orderstatus" id="orderstatus">
                                            <option value="">전체 주문처리상태</option>
                                            <option value="">입금전</option>
                                            <option value="">배송준비중</option>
                                            <option value="">배송중</option>
                                            <option value="">배송완료</option>
                                            <option value="">취소</option>
                                            <option value="">교환</option>
                                            <option value="">반품</option>

                                        </select>
                                    </div>
                                    <ul>
                                        <li>- 기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
                                        <li>- 주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
                                    </ul>
                                </form>

                            </div>
                            <div id="sec2-div3">
                                주문 상품 정보
                                <table id="sec2-div3-table1">
                                    <tr>
                                        <td>주문일자<br>[주문번호]</td>
                                        <td>이미지</td>
                                        <td>상품정보</td>
                                        <td>수량</td>
                                        <td>상품구매금액</td>
                                        <td>주문처리상태</td>
                                        <td>취소/교환/반품</td>
                                    </tr>
                                    <tr>
                                        <td colspan="7">주문 내역이 없습니다.</td>
                                    </tr>
                                </table>
                                <table id="sec2-div3-table2">
                                    <tr>
                                        <td>
                                            <<</td>
                                        <td>
                                            <</td>
                                        <td>1</td>
                                        <td>></td>
                                        <td>>></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </article>
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