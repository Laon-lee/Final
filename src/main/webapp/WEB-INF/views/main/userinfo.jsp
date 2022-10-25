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
                gap: 8vh;
            }

            .art2container>h2 {
                width: 100%;
                text-align: right;
                border-top: 2px solid black;
                padding-top: 3px;
            }


            .totalinfo {
                width: 85%;
                border: 1px solid gray;
                display: flex;
                flex-direction: row;
                align-items: center;
                padding: 10px;
                gap: 5%;
                margin: 0 auto;

            }

            .totalimg {
                height: 8vh;
            }

            .totalimg>img {
                height: 100%;
            }

            .detailinfo,
            .addinfo {
                width: 85%;
                margin: 0 auto;
            }

            .detailinfo>p,
            .addinfo>p {
                padding-bottom: 1vh;
                margin-bottom: 3vh;
                border-bottom: 1px solid black;
            }

            .infotable {
                font-size: 0.8rem;
                width: 100%;
            }

            .binfotd1 {
                width: 20%;
                padding: 9px 0px;
            }

            .binfotd2>input {
                width: 15vw;
            }

            .idpw {
                display: flex;
                flex-direction: row;
                gap: 1vw;
                padding: 9px 0px;

            }

            #addrnum,
            #basicaddr,
            #detailaddr {
                display: flex;
                flex-direction: row;
                gap: 1vw;
                padding: 2px 0px;
            }

            #addrnum>input {
                width: 7vw;
            }

            #basicaddr>input,
            #detailaddr>input {
                width: 22vw;
            }

            .numb {
                width: 4.5vw;
            }

            .infonum>input {
                width: 6vw;
            }

            #tdbirth {
                display: flex;
                flex-direction: row;
                padding: 9px 0px;

            }

            #tdbirth>input {
                width: 5vw;
            }

            #tdbirth>span {
                padding-right: 1vw;
            }

            input {
                border: 1px solid grey;
                border-radius: 2px;

            }

            .btnbox {
                width: 100%;
                display: flex;
                flex-direction: row;
                justify-content: flex-end;
                margin: 0 auto;

            }

            .inbox {
                display: flex;
                flex-direction: row;
                width: 68%;
                justify-content: space-between;
            }

            .inbox>button,
            .inbtnbox>button {
                border: none;
                width: 7vw;
                height: 4vh;
            }

            .inbtnbox {
                display: flex;
                flex-direction: row;
                gap: 1vw;
            }

            #okbtn {
                background-color: black;
                color: white;

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
                                    <div class="totalimg">
                                        <img src="./hotel/회원프사.png" alt="">
                                    </div>
                                    <p>저희 쇼핑몰을 이용해주셔서 감사합니다. ${username}님은 [${grade}]입니다.</p>
                                </div>
                                <div class="detailinfo">
                                    <p>기본정보</p>
                                    <div class="basicinfo">

                                        <table class="infotable">
                                            <tr class="binfotr">
                                                <td class="binfotd1">아이디</td>
                                                <td class="binfotd2 idpw" id="tdid"> <input type="text" value="아이디">
                                                    <p>(영문소문자/숫자, 4~16자)</p>
                                                </td>
                                            </tr>
                                            <tr class="binfotr">
                                                <td class="binfotd1">비밀번호</td>
                                                <td class="binfotd2 idpw" id="tdpw"><input type="text">
                                                    <p>(영문 대소문자/숫자, 4~16자)</p>
                                                </td>
                                            </tr>
                                            <tr class="binfotr">
                                                <td class="binfotd1">비밀번호 확인</td>
                                                <td class="binfotd2" id="tdpwc"><input type="text"></td>
                                            </tr>
                                            <tr class="binfotr">
                                                <td class="binfotd1">이름</td>
                                                <td class="binfotd2" id="tdname"><input type="text" value="${username}">
                                                </td>
                                            </tr>
                                            <tr class="binfotr">
                                                <td class="binfotd1" style="vertical-align: top">주소</td>
                                                <td class="binfotd2" id="tdaddr">
                                                    <div id="addrnum">
                                                        <input type="text" name="" id=""><button>우편번호</button>
                                                    </div>
                                                    <div id="basicaddr">
                                                        <input type="text">
                                                        <p>기본주소</p>
                                                    </div>
                                                    <div id="detailaddr">
                                                        <input type="text" name="" id="">
                                                        <p>나머지주소(선택입력가능)</p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="binfotr">
                                                <td class="binfotd1">일반전화</td>
                                                <td class="binfotd2 infonum" id="tdnum">
                                                    <select name="senum" id="senum" class="numb">
                                                        <option value="02">02</option>
                                                        <option value="031">031</option>
                                                        <option value="032">032</option>
                                                        <option value="033">033</option>
                                                        <option value="041">041</option>
                                                        <option value="042">042</option>
                                                        <option value="043">043</option>
                                                        <option value="044">044</option>
                                                        <option value="051">051</option>
                                                        <option value="052">052</option>
                                                        <option value="053">053</option>
                                                        <option value="054">054</option>
                                                        <option value="055">055</option>
                                                        <option value="061">061</option>
                                                        <option value="062">062</option>
                                                        <option value="063">063</option>
                                                        <option value="064">064</option>
                                                        <option value="0502">0502</option>
                                                        <option value="0503">0503</option>
                                                        <option value="0504">0504</option>
                                                        <option value="0505">0505</option>
                                                        <option value="0506">0506</option>
                                                        <option value="0507">0507</option>
                                                        <option value="070">070</option>
                                                        <option value="010">010</option>
                                                        <option value="011">011</option>
                                                        <option value="016">016</option>
                                                        <option value="017">017</option>
                                                        <option value="018">018</option>
                                                        <option value="019">019</option>
                                                        <option value="0508">0508</option>
                                                    </select>
                                                    - <input type="text">
                                                    - <input type="text">
                                                </td>
                                            </tr>

                                            <tr class="binfotr">
                                                <td class="binfotd1">휴대전화</td>
                                                <td class="binfotd2 infonum" id="tdaddnum">
                                                    <select name="senum" id="seaddnum" class="numb">

                                                        <option value="010">010</option>
                                                        <option value="011">011</option>
                                                        <option value="016">016</option>
                                                        <option value="017">017</option>
                                                        <option value="018">018</option>
                                                        <option value="019">019</option>

                                                    </select>
                                                    - <input type="text">
                                                    - <input type="text">
                                                </td>
                                            </tr>
                                            <tr class="binfor">
                                                <td class="binfotd1">이메일</td>
                                                <td class="binfotd2"><input type="text" name="" id=""></td>
                                            </tr>

                                        </table>

                                    </div>
                                </div>
                                <div class="addinfo">
                                    <p>추가정보</p>
                                    <div class="basicinfo">

                                        <table class="infotable">
                                            <tr class="binfotr">
                                                <td class="binfotd1">생년월일</td>
                                                <td class="binfotd2" id="tdbirth">
                                                    <input type="text"><span>년</span>
                                                    <input type="text" name="" id=""><span>월</span>
                                                    <input type="text" name="" id=""><span>일</span>
                                                    <label for="lift"><input type="radio" name="" id="lift">양력</label>
                                                    <label for="lunar"><input type="radio" name="" id="lunar">음력</label>

                                                </td>
                                            </tr>
                                            <tr class="binfotr">
                                                <td class="binfotd1">지역</td>
                                                <td class="binfotd2">
                                                    <select name="region" id="region">
                                                        <option value="선택">선택</option>
                                                        <option value="경기">경기</option>
                                                        <option value="서울">서울</option>
                                                        <option value="인천">인천</option>
                                                        <option value="강원">강원</option>
                                                        <option value="충남">충남</option>
                                                        <option value="충북">충북</option>
                                                        <option value="대전">대전</option>
                                                        <option value="경북">경북</option>
                                                        <option value="경남">경남</option>
                                                        <option value="대구">대구</option>
                                                        <option value="부산">부산</option>
                                                        <option value="울산">울산</option>
                                                        <option value="전북">전북</option>
                                                        <option value="전남">전남</option>
                                                        <option value="광주">광주</option>
                                                        <option value="세종">세종</option>
                                                        <option value="제주">제주</option>
                                                        <option value="해외">해외</option>
                                                    </select>

                                                </td>
                                            </tr>
                                        </table>
                                    </div>

                                </div>
                                <div class="btnbox">
                                    <div class="inbox">
                                        <div class="inbtnbox">
                                            <button id="okbtn">회원정보수정</button>
                                            <button id="cbtn">취소</button>
                                        </div>
                                        <button id="tbtn">탈퇴하기</button>
                                    </div>
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