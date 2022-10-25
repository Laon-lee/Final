<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/shop/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/footer.css">
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<style>
* {
    margin: 0 auto;
    padding: 0 auto;
    box-sizing: border-box;
}

body{
    background-color:white;
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
	#address-div2{
		display:none;
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


    #last-btn:hover {
      cursor : pointer;
    }
</style>
</head>
<body>


    <div id="container">

        <header>
           <%@ include file="../frame/shop/header.jsp" %>
		</header>
	
    <article>
        <div id="art1"><h4>주문 / 결제</h4></div>
    </article>
	<article id="art4">
      <div id="info4">
        <h3>주문상품</h3>
    </div>
    <div id="art4-mainbox">
      <div id="art4-img">
      	<img src="${list.productImage}">
      </div>
      <div id="art4-text">
        <h3>${list.productName}</h3>
        <p>
        	옵션: <c:if test="${option != '사이즈선택'}"> ${option}</c:if>
       			 <c:if test="${option == '사이즈선택'}"> 없음 </c:if>
       	</p>
        <p>수량: ${count}</p>
        <p>금액: <fmt:formatNumber value="${count * list.productPrice}" pattern="#,###"/>원</p>
      </div>
    </div>
    </article>
    <article>
        <div id="art2">
            <div id="info2">
                <h3>주문정보</h3>
            </div>
            <div id="info1-info">
                <label for="">주문자 * <input type="text" style="width : 70%; margin-left : 10px; margin-top: 20px;" value="${user.memName}"></label><br>
                <label for="">이메일 * <input type="email" style="width : 70%; margin-left : 10px;" value="${user.memEmail}"></label>
                <!-- <select name="email-list" id="email-list" class="box">
                    <option value="self">--직접입력--</option>
                    <option value="naver.com">naver.com</option>
                    <option value="google.com">google.com</option>
                    <option value="hanmail.net">hanmail.net</option>
                    <option value="nate.com">nate.com</option>
                    <option value="kakao.com">kakao.com</option>
                    <option value="msn.com">msn.com</option>
                </select>  -->
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
                <label for="address">주소 * <input type="text" placeholder="우편번호" class="addr-addr" style="text-align: center; margin-right: 10px; margin-top: 7px;" value="${user.memOaddress}"><button>주소 검색</button></label>
                <br><input type="text" name="maid-addr1" id="maid-addr1" placeholder="기본주소" class="addr-box" value="${user.memAddress}">
                <br><input type="text" name="maid-addr2" id="maid-addr2" placeholder="상세주소" class="addr-box" value="${user.memDetailaddress}">
            </div>
            
        </div>
    </article>
    <article>
        <div id="art3">
            <div id="info3">
                <h3>배송지</h3>
            </div>

            <div id="send-select">
                <label for="same-send1"><input type="radio" checked name="same" id="same-send1" style="margin-right: 6px;">주문자 정보와 동일</label>
                <label for="same-send2"><input type="radio" name="same" id="same-send2"  style="margin-right: 6px;">새로운 배송지</label>
            </div>
            <div id="address-div1">
            <label for="" style="font-size: 0.85rem;">받는 사람 * <input type="text" name="owner" style="margin-top : 6px;"></label><br>
            <label for="address">주소 * <input type="text" placeholder="우편번호" class="addr-addr" style="text-align: center; margin-right: 10px; margin-top: 7px;" value="${user.memOaddress}"></label>
                <br><input type="text" name="maid-addr1" id="maid-addr1" placeholder="기본주소" class="addr-box" value="${user.memAddress}">
                <br><input type="text" name="maid-addr2" id="maid-addr2" placeholder="상세주소" class="addr-box" value="${user.memDetailaddress}">
                <br>
			</div>
			<div id="address-div2">
            <label for="" style="font-size: 0.85rem;">받는 사람 * <input type="text" name="owner" style="margin-top : 6px;"></label><br>
            <label for="address">주소 * <input type="text" placeholder="우편번호" class="addr-addr" style="text-align: center; margin-right: 10px; margin-top: 7px;"><button>주소 검색</button></label>
                <br><input type="text" name="maid-addr1" id="maid-addr1" placeholder="기본주소" class="addr-box" >
                <br><input type="text" name="maid-addr2" id="maid-addr2" placeholder="상세주소" class="addr-box" >
                <br>
			</div>     
			<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> 
			<script>
			$("#same-send1").on("click",function(){
				console.log("123")
				 if($(this).is(":checked")){
					$("#address-div2").hide();
					$("#address-div1").show();
				 }
			})
			$("#same-send2").on("click",function(){
				console.log("456")
				 if($(this).is(":checked")){
					$("#address-div1").hide();
					$("#address-div2").show();
				 }
			})
			</script>           
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
            ${content.price}
          </h5>
        </div>
      </div>
      
    </article>
    <article>
      <div id="art6">
        
       
      </div>
    </article>
    <article>
      <div id="art7">
       <button id="last-btn" onclick="requestPay()">결제하기</button>

      </div>
      
    </article>
<footer>
    <%@ include file="../frame/main/footer.jsp" %>
</footer>

</div>


<script>
/* const domainListEl = document.querySelector('#domain-list')
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
}) */

</script>

<script>
var IMP = window.IMP; // 생략가능
IMP.init('imp70736007'); // <-- 본인 가맹점 식별코드 삽입
function requestPay() {
  IMP.init('iamport'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
  IMP.request_pay({
    pg: "inicis",
    pay_method: "card",
    merchant_uid : 'merchant_'+new Date().getTime(),
    name : '${content.name}',
    amount : '${content.price}',
    buyer_email : 'iamport@siot.do',
    buyer_name : '구매자',
    buyer_tel : '010-1234-5678',
    buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456'
  }, function (rsp) { // callback
      if (rsp.success) {
        
      } else {
       
      }
  });
}
</script>
</body>
</html>