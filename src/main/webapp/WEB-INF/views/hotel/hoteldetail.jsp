
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

        }

        section {
            width: 100%;
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

        #reservebtn {
            background-color: rgb(24, 24, 24);
            color: whitesmoke;
            width: 100%;
            height: 5vh;
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

        .content {
            width: 85%;
            display: flex;
            flex-direction: column;
            gap: 45px;
            position: relative;
        }

        .detail {
            width: 80%;
            margin: 5px auto;
            display: grid;
            grid-template-columns: 4fr 1.3fr;


        }

        .c_p {
            width: 100%;
            border-bottom: 1px solid black;
            padding-bottom: 10px;
        }

        .p_cont {
            padding: 10px 0px 20px 0px;
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

        .c_review {
            padding-bottom: 5vh;
        }

        #c_img {
            width: 100%;

        }
        
    </style>
</head>

<body>
    <div id="container">
        <header>
            <%@ include file="../frame/hotel/header.jsp" %>
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
                            <p class="c_p">option</p>
                            <p class="p_cont">조식 제공, extra bed 제공</p>
                        </div>
                        <div class="c_info">
                            <p class="c_p">information</p>
                            <p class="p_cont">강아지들 재방문률 95%

                                품격있는 애견 호텔 저희 비숑프라자를 방문 해주셔서 너무 감사합니다.

                                항상 감사하는 마음으로 최고의 품질, 최고의 서비스를 제공하게습니다.

                                애견들을 사람처럼, 사람들을 애견처럼 </p>
                            <img src="https://www.mypetplus.co.kr/upload/201701261318010.jpg" alt="" id="c_img">
                        </div>
                        <div class="c_review">
                            <p class="c_p">review</p>
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
                            <button id="reservebtn">회원예약</button>
                        </div>
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