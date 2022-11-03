<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/header.css?11">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/footer.css">
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
		#sec2-div3-table1 img{
			width:100px;
			height:100px;
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
            height:500px;
        }

          #sec2 nav ul{
            position: relative;
            top: 28%;
            
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
                             <li><a href="${pageContext.request.contextPath}/mypage" style="text-decoration: underline">주문내역조회</a></li>
                            <li><a href="${pageContext.request.contextPath}/userinfo">회원정보</a></li>
                            <li><a href="${pageContext.request.contextPath}/wish">장바구니</a></li>
                            <li><a href="${pageContext.request.contextPath}/usequestion/자주묻는질문">자주묻는질문</a></li>
                            <li><a href="${pageContext.request.contextPath}/question">문의하기</a></li>
                           
              
                        </ul>
                    </nav>
                    <article id="art2">
                        <div id="artcontainer">
                            <div id="sec2-div1">
                                <ul>
                                    <li class="selected">예약내역조회( ${fn:length(list)})</li>
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
                                    
                                </form>

                            </div>
                            <div id="sec2-div3">
                                주문 상품 정보
                                <table id="sec2-div3-table1">
                                    <tr>
                                        <td><h3>예약일자</h3></td>
                                        <td><h3>이미지</h3></td>
                                        <td><h3>호텔정보</h3></td>
                                        <td><h3>예약자 연락처</h3></td>
                                        <td><h3>예약자 이메일</h3></td>
                                        <td><h3>결제금액</h3></td>
                                        <td><h3>주문처리상태</h3></td>
                                    </tr>
                                    
                                    <c:forEach var="item" items="${list}">
                                    <tr>
                                    	<fmt:parseDate value="${item.resStart }" var="strPlanDate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
										<fmt:parseDate value="${item.resEnd }" var="endPlanDate" pattern="yyyy-MM-dd"/>
										<fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
                                     	<td>${item.resStart} ~ ${item.resEnd}</td>
                                        <td>호텔 사진!!</td>
                                        <td>호텔명: ${item.hotelName}
                                        	객실정보: ${item.roomName}[${item.roomType}]
                                        </td>
                                        <td>${item.memPhone}</td>
                                        <td>${item.memEmail}</td>
                                        <td>${(item.roomPrice* (endDate - strDate))*1.1}원</td>
                                        <td>${item.resStatus}</td>
                                    </tr>
                                    </c:forEach>
                                </table>
                               
                            </div>
                        </div>
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