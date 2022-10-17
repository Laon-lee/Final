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
   #mainA1{
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
    body{
        background-color: #E3D5CA;
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
      padding-top:35px;
      width: 350px;
      height: 70px;
    }
    #nav2 p{
      width:100%;
    }
    #nav2 ul{
      width: 350px;
      margin-right:20px;
      
    }
    #nav2 li {
      box-sizing: border-box;
      width:70px;
      height:70px;
      
    }
    #nav2 li:nth-child(3){
      
    }

    #nav2 a {
      font-size: 20px;
    }

    /* 검색 아이콘 호버 */
    
    #nav2-li-1stdiv {
      margin:20px 0 20px 0;
      padding:50px;
      display: none;
      position: absolute;
      top:4%;
      left: 0px;
      width: 100vw;
      height: 60vh;
      flex-direction: column;
      z-index: 3;
      justify-content: center;
      align-items: center;
      gap:40px;
      background-color: rgb(245, 235, 224);

    }
    .hover-layout1{
        position:absolute;
        top:7%;
        left:0;
        display: none;
        align-items: start;
        width:100vw;
        height:100vh;
        background-color: black;
        opacity: 0.5;
    }
    #nav2-li-1stli:hover div{
      display: flex;
    }
    #nav2-li-2ndli:hover div{
      display: flex;
    }
    #nav2-li-3rdli:hover div{
      display: flex;
    }
    #nav2-li-4thli:hover div{
      display: flex;
    }
    #nav2-searchdiv{
      justify-content: center;
    }
    #nav2-searchdiv button{
      font-size:25px;
    }
    #nav2-li-1stdiv input {
      padding:5px;
      width: 70vw;
      height: 70px;
      font-size:25px;
      outline:none;
    }
    #nav2-li-1stdiv button{
      height:84px;
      width:8vw;
      
    }
    #btns{
      display: flex;
      flex-wrap: wrap;
      flex-direction: row;
      width:60vw;
      height:40vw;
      justify-content: center;
    }
    #btns button {
      margin:15px;
      width:100px;
      height: 30px;
      border: 1px solid gray;
      background-color: #f5ebe0;
      cursor: pointer;
    }
    #nav2-li-2nddiv{
    
      margin:20px 0 20px 0;
      padding:50px;
      display: none;
      position: absolute;
      top:4%;
      right: 0px;
      width: 20vw;
      height: 40vh;
      flex-direction: column;
      z-index: 1;
      justify-content: center;
      align-items: center;
      background-color: rgb(245, 235, 224);
      
    }
    #nav2-li-3rddiv{
      margin:20px 0 20px 0;
      padding:50px;
      display: none;
      position: absolute;
      top:4%;
      right: 0px;
      width: 20vw;
      height: 40vh;
      flex-direction: column;
      z-index: 1;
      justify-content: center;
      align-items: center;
      background-color: rgb(245, 235, 224);
      
    }



    #nav2-li-4thdiv{
      margin:20px 0 20px 0;
      padding:50px;
      display: none;
      position: absolute;
      top:4%;
      right: 0px;
      width: 20vw;
      height: 40vh;
      flex-direction: column;
      z-index: 10;
      justify-content: center;
      align-items: left;
      background-color: rgb(245, 235, 224);
    
    }
    #nav2-li-4thdiv input{
      width:300px;
      height:30px;
    }
    #nav2-li-4thdiv button{ 
      width: 308px;
      height: 40px;
      background-color: black;
      color: white;
      margin-top: 40px;
    }
    #nav2-li-4thdiv h4{
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
    }

    header {
      z-index: 100;
      background-color: #E3D5CA;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: space-between;
      width: 100vw;
      height: 100%;
      
    }
    main {
        margin-top: 20px;
      width: 100%;
      background-color: #E3D5CA;

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
    }
    footer p{
      font-size: 13px;
    }
    footer li{
      margin:0 15px 0 15px;
      height:15px;
    }
    footer ul{
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;
      grid-template-rows: 1fr 1fr;
      
    }
    
    #footer-1stul{
      width:150px;
    }
    #footer-1stul li{
      font-size: 22px;
      font-weight: 900;
      width:150px;
    }
    #social li{
      width:15px;
    }
    html {
      scroll-behavior: smooth;
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
    margin-bottom: 5rem;
   }
   .art3{
    width: 60%;
    margin: 0 auto;
    border-bottom: 2px solid black;
    margin-bottom: 3rem;
   }
   .art4{
    width: 50%;
    margin: 0 auto;
   }
   #mainA1{
    margin-left: 9rem;
   }
  </style>
</head>

<body>

  <div id="container">
    <header>
      <nav id="nav1">
      </nav>
      <div>
        <h1><a id="mainA1">Déng Nuri</a></h1>
      </div>
      <nav id="nav2">
        <ul>
          <li id="nav2-li-1stli">
            <a href="#"><p style="font-size: 16px">Search</p></a>
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
            <a href="#"><p style="font-size: 16px">Login</p></a>
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
              <p style="font-size: 11px; border-bottom:1px solid black; width:130px; margin-top:10px;" >혹시 회원이 아니신가요??</p>
              <a href="#" style="font-size:13px">회원 가입</a>
            </div>
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
          </li>
        </ul>
      </nav>
      
    </header>
   <main>
    <article class="art1">
        
    </article>
    <article class="art2">
        <h2>공지사항</h2>
    </article>
    <article class="art3">
        <h2>택배 지연 안내(vo.title을 이용한다.)</h2>
    </article>
    <article class="art4">
        <p>공지사항 id의 vo.content를 이용한다.</p>
        <p>택배회사의 파업으로 인해 상품 배송이 늦어 지고 있습니다. 이점 죄송하게 생각하며
            항상 최선을 다하는 Déng Nuri가 되겠습니다!!
        </p>
    </article>
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