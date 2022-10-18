<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

<style>
* {
    margin: 0 auto;
    padding: 0 auto;
    box-sizing: border-box;
}

body{
    background-color:#e3d5ca;
}
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
        height:100vh;
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
      font-size:23px;
      font-weight:900;
      margin-left: 15px;
    }
header {
   z-index: 100;
      background-color: #e3d5ca;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: space-between;
      width: 100vw;
      height: 100%;
      grid-area:header;
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

    /*메인*/
    main {
        display: flex;
        width: 90%;
        align-items: center;
        justify-content: center;
    }

    #art1 {
        display: flex;
        width: 60%;
        height: 50px;
        background-color: #7F7F7F;
        justify-content: center;
        align-items: center;
        color: white;

    }

    #art2 {
        width: 60%;
        height: 350px;
        border-bottom: 1px solid black;
    }

    #art2 > label {
      margin: auto;
    }
    #art3 {
        width: 60%;
        height: 250px;
        border-bottom: 1px solid black;

    }

    #art4 {
        width: 60%;
        height: 270px;
        border-bottom: 1px solid black;
    }

    #art5 {
        width: 60%;
        height: 220px;
        border-bottom: 1px solid black;
    }

    #art6 {
        width: 60%;
        height: 80px;
        border-bottom: 1px solid black;
    }

    #art7 {
        width: 60%;
        height: 180px;
        
    }

    #art4-img{
      display: flex;
    width: 20%;
    float: left;
    height: 140px;
    margin: 15px 20px;
    background: url("imgs/main_pic.png");
    }
    #art4-text{
      width: 60%;
      margin: 15px 30px;
      display: inline;
    }
    #art4-text > p {
      font-size: 0.8rem;
      margin-top: 5px;
    }

    #info2, #info3, #info4, #info5, #info6{
        display: block;
        width: 90%;
        height: 35px;
        margin: 10px;
        margin-left: 20px;
        color: black;
        border-bottom: 1px solid #7F7F7F;

    }   

    #info7 {
        display: block;
        width: 90%;
        height: 110px;
        margin: 10px;
        margin-left: 20px;
        color: black;
    }   

   

    #info7 > h3 {
        line-height: 35px;
    }   

    #art5-box {
      display: flex;
      height: 120px;
    }

    #art5-left {
      display: flex;
    }

    #art5-right {
      display: flex;

    }
    #left-ul {
      width: 46%;
      line-height: 2rem;
    }
    #right-ul {
      float: right;
      width: 50%;
      line-height: 2rem;
    }

    #total-h4 {
      display: inline-block;
      padding-left: 130px;
    }
    #total-h5 {
      float: right;
      padding-right: 200px;
    }

    #pay-box {
      width: 90%;
    }
    #cash, #kakao {
      margin-left: 20px;
    }


    select.box {
  width: 15%;
  height: 23px;
  box-sizing: border-box;
  margin-top: 2px;
  margin-left: 2px;
  border-radius: 4px;
  border: 1px solid #d9d6d6;
  color: #383838;
  background-color: #ffffff;
  
}


option {
  font-size: 16px;
}
label {
    width: 50%;
    margin-left: 25px;
}

.addr-box {
    width: 50%;
    margin-left: 100px;
    margin-top: 10px;
}

.addr-addr {
    margin-left: 25px;
}

.info-p{
    font-size: 0.7rem;
    color: #383838;
    margin-left: 100px;
    margin-top: 5px;
}

#info-btn, #info-btn2 {
  margin-top: 8px;
  margin-left: 100px;
}

#last-btn {
  display: flex;
    width: 90%;
    align-items: center;
    justify-content: center;
    height: 40px;
    background-color: gray;
    border: gray;
}

.last-check {
  width: 20px;
  height: 15px;
  margin-left: 20px;
  margin-right: 20px;
}


    footer {
      display: flex;
      flex-direction: row;
      flex-wrap: wrap;
      width: 100%;
      height: 100px;
      background-color: lightgray;
      justify-content: space-around;
      align-items: center;
      
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

    #last-btn:hover {
      cursor : pointer;
    }

</style>
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
            
        </li>
    </ul>
</nav>
</header>

    <article>
        <div id="art1"><h4>주문 / 결제</h4></div>
    </article>

    <article>
        <div id="art2">
            <div id="info2">
                <h3>주문정보</h3>
            </div>
            <div id="info1-info">
                <label for="">주문자 * <input type="text" style="width : 70%; margin-left : 10px; margin-top: 20px;"></label><br>
                <label for="">이메일 * <input type="email" style="width : 26%; margin-left : 10px;"></label>@
                <input class="box" id="domain-txt" type="text" style="width : 26%"/>
                <select name="email-list" id="email-list" class="box">
                    <option value="self">--직접입력--</option>
                    <option value="naver.com">naver.com</option>
                    <option value="google.com">google.com</option>
                    <option value="hanmail.net">hanmail.net</option>
                    <option value="nate.com">nate.com</option>
                    <option value="kakao.com">kakao.com</option>
                    <option value="msn.com">msn.com</option>
                </select>
                <p class="info-p">이메일로 주문 처리 과정을 보내드립니다.</p>
                <p class="info-p">수신 가능한 이메일을 주소로 입력해주세요.</p>
                <label for="">일반 전화
                    <select name="local-num" id="local-num" class="box">
                        <option value="02">02</option>
                        <option value="051">051</option>
                        <option value="053">053</option>
                        <option value="032">032</option>
                        <option value="062">062</option>
                        <option value="042">042</option>
                        <option value="052">052</option>
                        <option value="044">044</option>
                        <option value="031">031</option>
                        <option value="033">033</option>
                        <option value="043">043</option>
                        <option value="041">041</option>
                        <option value="063">063</option>
                        <option value="061">061</option>
                        <option value="054">054</option>
                        <option value="055">055</option>
                    </select>
                    - <input type="text"> - <input type="text">

                </label>
                
                <br>
                <label for="">휴대 전화
                    <select name="phone-num" id="phone-num" class="box">
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="017">017</option>
                    <option value="019">019</option>
                </select>
                - <input type="text"> - <input type="text">

                </label>
                
                <br>
                <label for="address">주소 * <input type="text" placeholder="우편번호" class="addr-addr" style="text-align: center; margin-right: 10px; margin-top: 7px;"><button>주소 검색</button></label>
                <br><input type="text" name="maid-addr1" id="maid-addr1" placeholder="기본주소" class="addr-box">
                <br><input type="text" name="maid-addr2" id="maid-addr2" placeholder="상세주소" class="addr-box">
            </div>
            <button id="info-btn">배송지 입력</button>
        </div>
    </article>
    <article>
        <div id="art3">
            <div id="info3">
                <h3>배송지</h3>
            </div>

            <div id="send-select">
                <label for="same-send"><input type="radio" name="same" id="same-send" style="margin-right: 6px;">주문자 정보와 동일</label>
                <label for="same-send"><input type="radio" name="same" id="same-send"  style="margin-right: 6px;">새로운 배송지</label>
            </div>
            <label for="" style="font-size: 0.85rem;">받는 사람 * <input type="text" name="owner" style="margin-top : 6px;"></label><br>
            <label for="address">주소 * <input type="text" placeholder="우편번호" class="addr-addr" style="text-align: center; margin-right: 10px; margin-top: 7px;"><button>주소 검색</button></label>
                <br><input type="text" name="maid-addr1" id="maid-addr1" placeholder="기본주소" class="addr-box">
                <br><input type="text" name="maid-addr2" id="maid-addr2" placeholder="상세주소" class="addr-box">
                <br>
                <button id="info-btn2">신규 배송지 입력</button>
        </div>
    </article>
    <article id="art4">
      <div id="info4">
        <h3>주문상품</h3>
    </div>
    <div id="art4-mainbox">
      <div id="art4-img">
      </div>
      <div id="art4-text">
        <h3>무니쿤트 옷 후아</h3>
        <p>옵션</p>
        <p>수량</p>
        <p>금액</p>
      </div>
    </div>
    </article>
    <article>
      <div id="art5">
        <div id="info5">
          <h3>결제정보</h3>
        </div>
          
        <div id="art5-box">
          <div id="art5-left">
          <ul id="left-ul">
            <li>주문상품</li>
            <li>할인/부가결제</li>
            <li>배송비</li>
          </ul>
          </div>
          <div id="art5-right">
            <ul id="right-ul">
              <li>72,000원</li>
              <li>-0원</li>
              <li>+0원</li>
            </ul>
          </div>
        </div>
        <div>
          <h4 id="total-h4">
            결제금액
          </h4>
          <h5 id="total-h5">
            2억 7천만원
          </h5>
        </div>
      </div>
      </div>
    </article>
    <article>
      <div id="art6">
        <div id="info6">
          <h3>결제수단 선택</h3>
        </div>
        <div id="pay-box">
          <input type="radio" name="card" id="card"> 카드 결제
          <input type="radio" name="card" id="cash"> 무통장 입금
          <input type="radio" name="card" id="kakao"> 카카오페이(간편결제)
        </div>
      </div>
    </article>
    <article>
      <div id="art7">
        <div id="info7">   
          <h3><input type="checkbox" class="last-check">모든약관 동의</h3>
          <h3><input type="checkbox" class="last-check">[필수] 쇼핑몰 이용약관 동의</h3>
          <h3><input type="checkbox" class="last-check">[필수] 비회원 구매시 개인정보 처리방침 동의</h3>
        </div>
        <button id="last-btn">결제하기</button>

      </div>
      
    </article>
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


<script>
const domainListEl = document.querySelector('#domain-list')
const domainInputEl = document.querySelector('#domain-txt')
// select 옵션 변경 시
domainListEl.addEventListener('change', (event) => {
  // option에 있는 도메인 선택 시
  if(event.target.value !== "type") {
    // 선택한 도메인을 input에 입력하고 disabled
    domainInputEl.value = event.target.value
    domainInputEl.disabled = true
  } else { 
    domainInputEl.value = ""
    domainInputEl.disabled = false
  }
})

</script>
</body>
</html>