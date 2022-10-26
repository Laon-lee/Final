<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/4b992414b9.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/frame/shop/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/frame/main/footer.css">
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
* {
	margin: 0 auto;
	
	box-sizing: border-box;
}

body {
	background-color: white;
}

html, body, header, main, footer, section, h1, h2, h3, h4, h5, h6, p, a,
	ul, li, nav {
	font-family: 'Noto Sans KR', sans-serif;
	margin: 0;
	padding: 0;
}
input, select{
	height:30px;
	margin:5px;
	
}
.lb{
	width:150px;
}
#container{
	display:grid;
	grid-template-rows:70px 1fr 70px;
}
#section-container{
	display:grid;
	grid-template-rows:1fr 1fr 1fr 1fr 1fr 1fr;
	justify-content: center;
    align-items: center;
}
section> div{
	padding:10px;
	margin:10px;
	border-bottom: 2px dashed gray;
}
#sec1-div2{
	display:grid;
	grid-template-columns:1fr 2fr;
}
#sec1-div2 img{
	width:200px;
	height:200px;
}
#pro-info{
	display: flex;
    flex-direction: column;
    justify-content: center;
}
</style>
</head>
<body>


	<div id="container">

		<header>
			<%@ include file="../frame/shop/header.jsp"%>
		</header>
		<main>
		<form:form action="" modelAttribute="separateVO" id="section-container" method="post">
		
			<section id="sec1">
				<div>
					<h3>주문상품</h3>
				</div>
				<div id="sec1-div2">
					<div>
						<img src="${list.productImage}">
					</div>
					<div id="pro-info">
						<h3>${list.productName}</h3>
						<p>
							옵션:
							<c:if test="${option != '사이즈선택'}"> ${option}</c:if>
							<c:if test="${option == '사이즈선택'}"> 없음 </c:if>
						</p>
						<p>수량: ${count}</p>
						<p>
							금액:	<fmt:formatNumber value="${count * list.productPrice}"	pattern="#,###" />원
						</p>
					</div>
				</div>
			</section>
			<section id="sec2">
				<div>
					<h3>주문정보</h3>
				</div>
				<div>
					<label for="memName" class="lb">주문자 *</label><input type="text" value="${user.memName}" id="memName" name="memName"><br> 
					<label for="memEmail" class="lb">이메일 *</label> <input type="email" value="${separateVO.email1}" id="memEmail" name="memEmail">@<input type="email" value="${separateVO.email2}">
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
					<br> 
					<label for="memPhone" class="lb">휴대 전화</label> 
							<form:select path="phone1" id="memPhone" name="memPhone">
								<form:option value="010">010</form:option>
								<form:option value="011">011</form:option>
								<form:option value="017">017</form:option>
								<form:option value="019">019</form:option>
							</form:select> - <form:input path="phone2" /> - <form:input path="phone3" />
					<br>
					<br> 
					<label for="memAddress" class="lb">주소 * </label><input type="text" placeholder="우편번호" value="${user.memOaddress}" id="memAddress" name="memAddress"><br>
					<input type="text" name="maid-addr1" id="maid-addr1" placeholder="기본주소" value="${user.memAddress}"><br>
					<input type="text" name="maid-addr2" id="maid-addr2" placeholder="상세주소" value="${user.memDetailaddress}">
				</div>
			</section>
			<section id="sec3">
				<div>
					<h3>배송지</h3>
				</div>
				<div>
					<div>
						<input type="radio" name="same" id="same-send1"  checked><label for="same-send1">주문자 정보와 동일</label> 
						<input type="radio" name="same" id="same-send2"><label for="same-send2">새로운	배송지</label>
					</div>
					<div id="address-div1">
						<label for="">받는 사람 * <input type="text" name="owner" value="${user.memName}"></label><br>
						<label for="address">주소 * <input type="text" placeholder="우편번호" class="addr-addr" value="${user.memOaddress}" readonly></label><br>
						<input type="text" placeholder="기본주소" value="${user.memAddress}" readonly><br>
						<input type="text" placeholder="상세주소" value="${user.memDetailaddress}" readonly><br>
					</div>
					<div id="address-div2">
						<label for="" style="font-size: 0.85rem;">받는 사람 * <input type="text"></label><br>
						<label for="address">주소 * <input type="text" placeholder="우편번호" id="mem_address1" name="mem_oaddress">
						<button onclick="execPostCode();">주소 검색</button></label><br>
						<input type="text" name="mem_address" id="mem_address2" placeholder="기본주소"><br>
						<input type="text" name="mem_detailaddress" id="mem_detailaddress" placeholder="상세주소"><br>
					</div>
				</div>
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
					<script>
					//우편번호 찾기 버튼 클릭 이벤트
					function execPostCode() {
				     new daum.Postcode({
				         oncomplete: function(data) {
				            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				            var extraRoadAddr = ''; // 도로명 조합형 주소 변수
				            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
				            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				                extraRoadAddr += data.bname;
				            }
				            // 건물명이 있고, 공동주택일 경우 추가한다.
				            if(data.buildingName !== '' && data.apartment === 'Y'){
				               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				            }
				            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				            if(extraRoadAddr !== ''){
				                extraRoadAddr = ' (' + extraRoadAddr + ')';
				            }
				            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				            if(fullRoadAddr !== ''){
				                fullRoadAddr += extraRoadAddr;
				            }
				            // 우편번호와 주소 정보를 해당 필드에 넣는다.
				            console.log(data.zonecode);
				            console.log(fullRoadAddr);
				         /*      var a = console.log(data.zonecode);
				            var b = console.log(fullRoadAddr);
				            
				            if(a == null || b = null){
				               alert("주소를 확인하세요.");
				               return false;
				            }   */
				            
				            
				            $("[name=mem_oaddress]").val(data.zonecode);
				            $("[name=mem_address]").val(fullRoadAddr);
				            
				            document.getElementById('mem_oaddress').value = data.zonecode; //5자리 새우편번호 사용
				            document.getElementById('mem_address').value = fullRoadAddr;
				            
				            //document.getElementById('mem_detailaddress').value = data.jibunAddress; 
				        }
				     }).open();
				 }
				/* radio버튼 클릭마다 배송지 div 변경 */
			$("#same-send1").on("click",function(){
				 if($(this).is(":checked")){
					$("#address-div2").hide();
					$("#address-div1").show();
				 }
			})
			$("#same-send2").on("click",function(){
				 if($(this).is(":checked")){
					$("#address-div1").hide();
					$("#address-div2").show();
				 }
			})
					</script>
			</section>
		</form:form>
		</main>
		<footer>
			<%@ include file="../frame/main/footer.jsp"%>
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