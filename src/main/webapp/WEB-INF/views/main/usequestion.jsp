<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        nav div {
            width: 100%;
            height: 100%;
        }
		#mainA1 {
            font-family: 'Zilla Slab', serif;
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

       

        main {
            width: 100%;
            background-color: #f5ebe0;
            grid-area: main;
        }

        section {
            width: 70vw;

        }
        .art1{
    width: 80%;
    margin: 0 auto;
    border-top: 2px solid black;
   }
   .art2{
    width: 60%;
    margin: 0 auto;
    height: 50px;
    background-color: black;
    color: white;
    text-align: center;
    margin-bottom: 2rem;
   }
        .art3-Q{
    color: darkcyan;
    font-size: 1.3rem;
    margin-right: 5px;
   }
   #art3-question{
    padding-bottom: 15px;
    border-bottom: 2px solid black;
    font-weight: 600;
    color: rgb(70, 68, 68);
   }
   #art3-content{
    padding-top: 15px;
    padding-bottom: 18px;
    border-bottom: 2px solid black;
    font-weight: 600;
    color: rgb(70, 68, 68);
    
    display: none;
   }
   .display-block{
    display: block !important;
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
       
        #sec2 {
            width:85%;
            margin: 40px;
            display: flex;
            flex-direction: row;
            
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
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        #art2 div{
            width:85%;
        }
        #sec2-div2{
            
        
        }
        #sec2-div2 li {
            display: block;
            font-size: 13px;
            margin-top: 30px;
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

                    <li><a id="mainA3">MyPage</a></li>

                </ul>
            </nav>
            <div>
                <h1><a href="${pageContext.request.contextPath}/gomain"  id="mainA1">Déng Nuri</a></h1>
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
                <article class="art1">
        
                </article>
                <article class="art2">
                    <h2>자주 찾는 질문</h2>
                </article>
                <section id="sec2">
                    <nav>
                        <ul>
                            <li><a href=""  class="li1">주문내역조회</a></li>
                            <li><a href="">회원정보</a></li>
                            <li><a href="">관심상품</a></li>
                            <li><a href="${pageContext.request.contextPath}/usequestion" style="text-decoration: underline;">자주찾는질문</a></li>
                            <li><a href="${pageContext.request.contextPath}/question">문의하기</a></li>
                            <li><a href="">쿠폰</a></li>
                            
                        </ul>
                    </nav>
                    
                    <article id="art2">
                       
                        <div id="art3-question">
                            <span class="art3-Q">Q</span> vo.question
                           </div>
                        
                           <div id="art3-content">
                            vo.content
                           </div>
                           <div id="art3-question">
                            <span class="art3-Q">Q</span> vo.question
                           </div>
                        
                           <div id="art3-content">
                            vo.content
                           </div>
                           <div id="art3-question">
                            <span class="art3-Q">Q</span> vo.question
                           </div>
                        
                           <div id="art3-content">
                            vo.content
                           </div>
                           <div id="art3-question">
                            <span class="art3-Q">Q</span> vo.question
                           </div>
                        
                           <div id="art3-content">
                            vo.content
                           </div>
                           <div id="art3-question">
                            <span class="art3-Q">Q</span> vo.question
                           </div>
                        
                           <div id="art3-content">
                            vo.content
                           </div>
                           <div id="art3-question">
                            <span class="art3-Q">Q</span> vo.question
                           </div>
                        
                           <div id="art3-content">
                            vo.content
                           </div>
                           <div id="art3-question">
                            <span class="art3-Q">Q</span> vo.question
                           </div>
                        
                           <div id="art3-content">
                            vo.content
                           </div>
                           <div id="art3-question">
                            <span class="art3-Q">Q</span> vo.question
                           </div>
                        
                           <div id="art3-content">
                            vo.content
                           </div>
                           <div id="art3-question">
                            <span class="art3-Q">Q</span> vo.question
                           </div>
                        
                           <div id="art3-content">
                            vo.content
                           </div>
                           <div id="art3-question">
                            <span class="art3-Q">Q</span> vo.question
                           </div>
                        
                           <div id="art3-content">
                            vo.content
                           </div>
                            </article>
                            
                          <script>
                            document.getElementById("art3-question").addEventListener("click",function(){
                                document.getElementById("art3-content").classList.toggle("display-block");
                            });
                          </script>
                    </article>
                </section>
                </div>
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