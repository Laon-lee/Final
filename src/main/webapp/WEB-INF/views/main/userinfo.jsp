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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/footer.css">
    <style>
       *{
          box-sizing: border-box;
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

        button {
            cursor: pointer;
        }
        html {
            scroll-behavior: smooth;
        }

        

        .line {

            height: 1vh;
            width: 80%;

        }

        #main-container {
            height:100%;
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
            padding: 0 20px 0 0;
            border-right: 1px solid black;
        }

           #sec2 nav ul{
            position: relative;
            top: 25%;
            
        }
        #sec2 nav li {
            margin: 0 0 20px 0;
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
        
        
      .art2container {
                width: 85%;
                display: flex;
                flex-direction: column;
                gap: 5vh;
            }

    
            .totalinfo {
                width: 85%;
                border: 3px solid black;
                padding: 20px;
               
                color: black;
               border-radius: 5px;
            }

    

    
			input {
 			width : 25%;
 			height : 30px;
 			border-radius : 5px;
 			border : none;
 			padding-left: 13px;
 			margin-bottom:20px;
            margin-right: 8px;
 			}
            label{
                width: 200px;
                display: inline-block;
            }
            .h1{
                width: 85%;
                border-radius: 5px;
                border: 3px solid #ccc;
                text-align: center;
                color: black;
                font-size: 30px;
            }
            .h3{
                display: inline-block;
            }
            .btn1{
                margin-top: 40px;
              margin-left: 150px;
                width: 25%;
                height: 30px;
                border-radius: 10px;
                background-color: white;
                color: black;
               
                font-weight: 600;
                font-size: 17px;
            }
            .btn1:hover,.btn2:hover{
                background-color: gainsboro;
                display: inline;
            }
            .btn2{
                
              margin-left: 150px;
                width: 25%;
                height: 30px;
                border-radius: 10px;
                background-color: white;
                color: black;
               
                font-weight: 600;
                font-size: 17px;
            }
            span{
                opacity: 0.5;
            }
    </style>
</head>

<body>

    <div id="container">
        <header>
           <%@ include file="../frame/mypage/header.jsp" %>
        </header>

        <main>
            <div id="main-container">
                
                <section id="sec2">
                
                    <nav>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/mypage" >주문내역조회</a></li>
                            <li><a href="${pageContext.request.contextPath}/userinfo"  style="text-decoration: underline">회원정보</a></li>
                            <li><a href="${pageContext.request.contextPath}/wish">장바구니</a></li>
                            <li><a href="${pageContext.request.contextPath}/usequestion/자주묻는질문">자주묻는질문</a></li>
                            <li><a href="${pageContext.request.contextPath}/question">문의하기</a></li>
                            <li><a href="${pageContext.request.contextPath}/coupon">쿠폰</a></li>
                        </ul>
                    </nav>
                    <article id="art2">
                   <div class="art2container">
                   <h2>회원정보수정</h2>
                       <div class="totalinfo">
                        <h4>저희 쇼핑몰을 이용해주셔서 감사합니다. ${list.memName}님은 [관리자]입니다.</h4>
                        </div>
                        <h1 class="h1">기본정보</h1>
                        <div class="detailinfo">
                       
                       <form action="${pageContext.request.contextPath}/userupdate">
 						<label for="memId"><h3 class="h3">아이디</h3></label>
 						<input type="text" name="memId" id="memId" value="${list.memId}" readonly>
                        <br>
                        
                        <label for="password"><h3 class="h3">비밀번호 변경</h3></label>
                        <input type="password" name="password" id="password" placeholder="변경할 비밀번호"  pattern=".{4,16}" required>
                        <span>(영문 대소문자/숫자, 4~16자)</span><br>
                           
                                          
                        <label for="memPw"><h3 class="h3">비밀번호 확인</h3></label>
                        <input type="password" name="memPw" id="memPw" placeholder="비밀번호 확인"  pattern=".{8,16}" required><br>
                                           
                                          
                        <label for="memName"><h3 class="h3">이름</h3></label>
                        <input type="text" name="memName" id="memName" value="${list.memName}"><br>
                                               
          
   						<label for="memOaddress"><h3 class="h3">우편번호</h3></label>
                     	<input type="text" name="memOaddress" id="memOaddress" value="${list.memOaddress}"><br>
                                                  
                        
                        <label for="memAddress"><h3 class="h3">기본주소</h3></label>
                        <input type="text" name="memAddress" id="memAddress" value="${list.memAddress}"> <br>
                        
                        <label for="memDetailaddress"><h3 class="h3">상세주소</h3></label>
                        <input type="text" name="memDetailaddress" id="memDetailaddress" value="${list.memDetailaddress}"><br>
                        
                        <label for="memPhone"><h3 class="h3">휴대전화</h3></label>
                        <input type="text" name="memPhone" id="memPhone" value="${list.memPhone}"><br>
                       
                        <label for="memEmail"><h3 class="h3">이메일</h3></label>
                        <input type="text" name="memEmail" id="memEmail" value="${list.memEmail}"><br>
                        <button class="btn1">회원정보수정</button>
                    </form>
                   
                    </article>
                </section>
                </div>
        </main>


        <footer>
            <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>
</body>

</html>