
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
            height: 3000px
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
        .option_list {
            width: 80%;
            margin: 5px auto;
            display: flex;
            flex-direction: row;
            height: 25vh;

        }

        .option_list {
            display: none;
        }

        #inner1 {
            width: 25%;
            background-color: red;

        }

        #inner1>img {
            width: 100%;
    height: 100%;
    object-fit: cover;
        }

        #inner2 {
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


        
    </style>
</head>

<body>
    <div id="container">
        <header>
           <%@ include file="../frame/hotel/header.jsp" %>
        </header>
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
        <main>
            <section>
                <div class="date">
                    <input type="text" id="datepicker1">

                </div>
                <div id="list">

                    <div id="inner1" class="inner">
                        <img src="./hotel/dog6.jpg" alt="">
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
                            <td id="td2">예약하기</td>
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
                            <td id="td2">예약하기</td>
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
                            <td id="td2">예약하기</td>
                        </tr>
                    </table>
                </div>
                <div id="list">

                    <div id="inner1" class="inner">
                        <img src="./hotel/dog6.jpg" alt="">
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
                            <td id="td2">예약하기</td>
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
                            <td id="td2">예약하기</td>
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
                            <td id="td2">예약하기</td>
                        </tr>
                    </table>
                </div>
            </section>
        </main>

        <footer>
           <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>

</body>
</html>