<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/footer.css">
<title>Document</title>
<style>
html, body, header, main, footer, section, h1, h2, h3, h4, h5, h6, p, a,
	ul, li, nav {
	font-family: 'Noto Sans KR', sans-serif;
	margin: 0;
	padding: 0;
}

body {
	background-color: #f5ebe0;
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
	margin-top: 20px;
	width: 100%;
	background-color: #f5ebe0;
}

/*본문 내용*/


.art1 {
	width: 80%;
	margin: 0 auto;
	border-top: 2px solid black;
}

/* .art2 {
	width: 70%;
	margin: 0 auto;
	height: 50px;
	background-color: black;
	color: white;
	text-align: center;
	margin-bottom: 2rem;
}
 */
 
 .art2 {
	display: flex;
	justify-content: center;
}

.art2>h2 {
	display: flex;
	background-color: black;
	width: 70%;
	justify-content: center;
	color: white;
}
 

#cont{
	width:30%;
	margin:0 auto;
}
.art3 {
	justify-content: center;
    width: 70%;
    display: flex;
    margin: 0 auto;
}

#id_div, #pw_div, #pw2_div, #name_div, #birth_div, #email_div, 
#phone_div, #gender_div, #addr_check1, #addr_check2{
    display: flex;
    margin-top : 20px;
}


#addr_check1 {
	margin-bottom : 20px;
}

#mem_address {
	margin-right : 5px;
}


.art3 > label {
	width : 20px;
}

.art5 {
	width: 60%;
	height: 300px;
	padding: 5px 10px;
	overflow: scroll;
	overflow-x: hidden;
	background-color: white;
	margin-top : 30px;
	margin-bottom: 30px;
}

#art6 {
	padding-left : 3rem;
	margin-bottom: 2rem;
}

#mainA1 {
	margin-left: 9rem;
}

#usercheck {
	width : 70%;
	padding-left  :350px;
}

button {
 	height : 30px;
 }
 
 input {
 width : 25%;
 height : 30px;
 border-radius : 5px;
 border : none;
 }
 
 .c_box {
 	margin-right : 10px;
 	width : 15px;
	padding-bottom : 5px;
 }
 
 #join_button {
 	width : 40%;
 	border : none;
 }
 


</style>
</head>
<body>
	
  <div id="container">
    <header>
      <%@ include file="../frame/main/header.jsp" %>
    </header>
   <main>
    <article class="art1">
        
    </article>
    <article class="art2">
        <h2>회원 가입</h2>
    </article>
    
    <article class="art3">
					<form action="memberjoinpro.do" method="post" id="usercheck" name="member">
							
							<div class="form-group">
								<div id="id_div">
									<label for="id" style="width : 110px;">아이디</label> <input type="text" class="form-control" id="mem_id" name="mem_id" placeholder=" ID">
									<div class="eheck_font" id="id_check"></div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="eheck_font" id="pw_div">
									<label for="pw" style="width : 110px;">비밀번호</label> <input type="password" class="form-control" id="mem_pw" name="mem_pw" placeholder=" PASSWORD">
									<div class="eheck_font" id="pw_check"></div>
								</div>
							</div>
						
							<div class="form-group">
								<dIv CLASS="EHECK_FONT" ID="pw2_div">
									<label for="pw2" style="width : 110px;">비밀번호 확인</label> <input type="password" class="form-control" id="mem_pw2" name="mem_pw2" placeholder=" Confirm Password">
									<div class="eheck_font" id="pw2_check"></div>
								</div>
							</div>
						
							<div class="form-group">
								<div class="eheck_font" id="name_div">
									<label for="mem_name" style="width : 110px;">이름</label> <input type="text"
									class="form-control" id="mem_name" name="mem_name"
									placeholder=" Name">
									<div class="eheck_font" id="name_check"></div>
							</div>
							</div>

							<div class="eheck_font" id="birth_div">
							<label for="mem_birth" style="width : 110px;">생년월일</label> <input type="tel"
								class="form-control" id="mem_birth" name="mem_birth"
								placeholder=" ex) 19990101"> 
								 <div class="eheck_font" id="birth_check"></div>
							</div>
						

							<div class="form-group">
								<div class="eheck_font" id="email_div">
									<label for="mem_email" style="width : 110px;">이메일 주소</label> <input type="email"
									class="form-control" id="mem_email" name="mem_email"
									placeholder=" E-mail">
									 <div class="eheck_font" id="email_check"></div>
								</div>
							</div>


							<div class="form-group">
							<div class="eheck_font" id="phone_div">
							<label for="mem_phone" style="width : 110px;">휴대폰 번호</label> <input
								type="tel" class="form-control" id="mem_phone" name="mem_phone"
								placeholder=" '-' 없이 입력하세요">
								<div class="eheck_font" id="phone_check"></div>
							</div>
							</div>

							<div class="form-group">
							<div id="gender_div">
							<label for="mem_gender" style="width : 110px;">성별 </label> <input type="checkbox"
								id="mem_gender" name="mem_gender" value="남" class="c_box">남 <input
								type="checkbox" id="mem_gender" name="mem_gender" value="여" class="c_box">여
							</div>
							</div>

							<div id ="addr_check1">
							<input class="form-control"
								placeholder="우편번호" name="mem_oaddress" id="mem_address"
								type="text" readonly="readonly">
							<button type="button" class="btn btn-default"
								onclick="execPostCode();">
								<i class="fa fa-search"></i> 우편번호 찾기
							</button>
							</div>

							
							<input class="form-control"
								placeholder="도로명 주소" name="mem_address" id="mem_address"
								type="text" readonly="readonly" />
							

						
							<input class="form-control" placeholder="상세주소"
								name="mem_detailaddress" id="mem_detailaddress" type="text" />
								
									<div class="art5">
					<p>
						제1조(목적) 이 약관은 주식회사 트리니언이 운영하는 말론샵(이하 “몰”이라 한다)에서 제공하는 인터넷 관련
						서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리?의무 및 책임사항을 규정함을 목적으로
						합니다. <br /> <br /> ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한
						이 약관을 준용합니다」<br /> <br /> 제2조(정의)<br /> ①“몰” 이란 주식회사 트리니언이 재화
						또는 용역(이하 “재화등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수
						있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br /> <br />
						②“이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br />
						<br /> ③ ‘회원’이라 함은 “몰”에 개인정보를 제공하여 회원등록을 한 자로서, “몰”의 정보를 지속적으로
						제공받으며, “몰”이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.<br /> <br />
						④‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.<br /> <br />
						제3조 (약관등의 명시와 설명 및 개정)<br /> ① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소
						소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호?모사전송번호?전자우편주소, 사업자등록번호,
						통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 말론샵 초기 서비스화면(전면)에 게시합니다.
						다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br /> <br /> ② “몰은
						이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회?배송책임?환불조건 등과 같은 중요한 내용을
						이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br />
						<br /> ③ “몰”은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법, 전자서명법,
						정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할
						수 있습니다.<br /> <br /> ④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과
						함께 몰의 초기화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다.<br /> 다만, 이용자에게 불리하게
						약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰“은 개정전 내용과
						개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br /> <br /> ⑤ “몰”이 약관을 개정할
						경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의
						약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에
						의한 개정약관의 공지기간내에 ‘몰“에 송신하여 ”몰“의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br />
						<br /> ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의소비자보호에관한법률,
						약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 및 관계법령 또는 상관례에 따릅니다.<br />
						</p>
				</div>
								
							
							<article id="art6">
								<button type="submit" class="btn btn-primary" id="join_button">회원가입</button>
					
							</article>
							
						
							
							</form>
						</article>
    
    
    
       </main>
    <footer>
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
  


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">

//모든 공백 체크 정규식
var empJ = /\s/g;
//아이디 정규식
var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;
// 이름 정규식
var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 휴대폰 번호 정규식
var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/


var birthJ = false;



$(document).ready(function() {
   var address = $('#mem_detailaddress');
  
	  
	         
	     
   //아이디 중복확인
      $("#mem_id").blur(function() {
    	  console.log($('#mem_id').val())
          if($('#mem_id').val()==''){
             $('#id_check').text('아이디를 입력하세요.');
             
             $('#id_check').css('color', 'red');                     
      		
      		console.log("문제1")
      		
             } else if(idJ.test($('#mem_id').val())!=true){
            	 //정규표현식 패턴 문자열과 일치여부
                $('#id_check').text('4~12자의 영문, 숫자만 사용 가능합니다.');
                $('#id_check').css('color', 'red');
             } else if($('#mem_id').val()!=''){
            	 $('#id_check').text('');
               var mem_id=$('#mem_id').val();
                 $.ajax({
                     async : true,
                        type : 'POST',
                      data : mem_id,//mem_id라는 이름으로 mem_id라는 데이터를 @WebServlet("/idsearch.do")에 보내겠다
                      url : 'idcheck.do',
                        dateType: 'json',
                        contentType: "application/json; charset=UTF-8",
                        success : function(data) {

             				if(data.cnt > 0){
                				$('#id_check').text('중복된 아이디 입니다.');
                      			$('#id_check').css('color', 'red');
                      			$("#usercheck").attr("disabled", true);
             				}else{
                				if(idJ.test(mem_id)){
                   					$('#id_check').text('사용가능한 아이디 입니다.');
                   					$('#id_check').css('color', 'blue');
                   					$("#usercheck").attr("disabled", false);
                				}else if(mem_id==''){
                					$('#id_check').text('아이디를 입력해주세요.');
                      				$('#id_check').css('color', 'red');
                      				$("#usercheck").attr("disabled", true);
               					}else{
                   					$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
                   					$('#id_check').css('color', 'red');
                   					$("#usercheck").attr("disabled", true);
                				}
             				}
						}
					});//ajax/// 
             }//else if
    });//blur
    $('#mem_pw').blur(function() {
        if (pwJ.test($('#mem_pw').val())) {
           console.log('true');
           $('#pw_check').text('');
        } else {
           console.log('false');
           $('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
           $('#pw_check').css('color', 'red');
        }
     });
     $('form').on('submit',function(){
         var inval_Arr = new Array(8).fill(false);
         if (idJ.test($('#mem_id').val())) {
            inval_Arr[0] = true;   
         } else {
            inval_Arr[0] = false;
            alert('아이디를  확인하세요.');
            return false;
         }
         // 비밀번호가 같은 경우 && 비밀번호 정규식
         if (($('#mem_pw').val() == ($('#mem_pw2').val()))
               && pwJ.test($('#mem_pw').val())) {
            inval_Arr[1] = true;
         } else {
            inval_Arr[1] = false;
            alert('비밀번호를 확인하세요.');
            return false;
         }
         // 이름 정규식
         if (nameJ.test($('#mem_name').val())) {
            inval_Arr[2] = true;   
         } else {
            inval_Arr[2] = false;
            alert('이름을 확인하세요.');
            return false;
         }
         // 생년월일 정규식
          if (birthJ) {
            console.log(birthJ);
            inval_Arr[3] = true; 
         } else {
            inval_Arr[3] = false;
            alert('생년월일을 확인하세요.');
            return false;
         } 
         // 이메일 정규식
         if (mailJ.test($('#mem_email').val())){
            console.log(phoneJ.test($('#mem_email').val()));
            inval_Arr[4] = true;
         } else {
            inval_Arr[4] = false;
            alert('이메일을 확인하세요.');
            return false;
         }
         // 휴대폰번호 정규식
         if (phoneJ.test($('#mem_phone').val())) {
            console.log(phoneJ.test($('#mem_phone').val()));
            inval_Arr[5] = true;
         } else {
            inval_Arr[5] = false;
            alert('휴대폰 번호를 확인하세요.');
            return false;
         }
         //성별 확인
          if(member.mem_gender[0].checked==false&&member.mem_gender[1].checked==false){
                 inval_Arr[6] = false;
               alert('성별을 확인하세요.');
               return false;
             
         } else{
            inval_Arr[6] = true;
         } 
   
         //주소확인
         if(address.val() == ''){
            inval_Arr[7] = false;
            alert('주소를 확인하세요.');
            return false;
         }else
            inval_Arr[7] = true;
      
         //전체 유효성 검사
         var validAll = true;
         for(var i = 0; i < inval_Arr.length; i++){
            if(inval_Arr[i] == false){
               validAll = false;
            }
         }
         if(validAll == true){ // 유효성 모두 통과
            alert('NANALAND 가족이 되어주셔 감사합니다.');      
         } else{
            alert('정보를 다시 확인하세요.')
         }
       });


 
   

   //1~2 패스워드 일치 확인
   $('#mem_pw2').blur(function() {
      if ($('#mem_pw').val() != $(this).val()) {
         $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
         $('#pw2_check').css('color', 'red');
      } else {
         $('#pw2_check').text('');
      }
   });

   //이름에 특수문자 들어가지 않도록 설정
   $("#mem_name").blur(function() {
      if (nameJ.test($(this).val())) {
         console.log(nameJ.test($(this).val()));
         $("#name_check").text('');
      } else {
         $('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
         $('#name_check').css('color', 'red');
      }
   });
   $("#mem_email").blur(function() {
      if (mailJ.test($(this).val())) {
         $("#email_check").text('');
      } else {
         $('#email_check').text('이메일 양식을 확인해주세요.');
         $('#email_check').css('color', 'red');
      }
   });
   

         // 생일 유효성 검사
           var birthJ = false;
           
           // 생년월일   birthJ 유효성 검사
           $('#mem_birth').blur(function(){
              var dateStr = $(this).val();      
               var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
               var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
               var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
               var today = new Date(); // 날짜 변수 선언
               var yearNow = today.getFullYear(); // 올해 연도 가져옴
              
               if (dateStr.length <=8) {
                 // 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
                  if (year > yearNow || year < 1900 ){
                     
                     $('#birth_check').text('생년월일을 확인해주세요');
                    $('#birth_check').css('color', 'red');
                  }  
                  else if (month < 1 || month > 12) {
                        
                     $('#birth_check').text('생년월일을 확인해주세요 ');
                    $('#birth_check').css('color', 'red'); 
                  
                  }else if (day < 1 || day > 31) {
                     
                     $('#birth_check').text('생년월일을 확인해주세요 ');
                    $('#birth_check').css('color', 'red'); 
                     
                  }else if ((month==4 || month==6 || month==9 || month==11) && day==31) { 
                     $('#birth_check').text('생년월일을 확인해주세요 ');
                    $('#birth_check').css('color', 'red'); 
                  }else if (month == 2) {
                        var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
                        
                      if (day>29 || (day==29 && !isleap)) {
                         
                         $('#birth_check').text('생년월일을 확인해주세요 ');
                       $('#birth_check').css('color', 'red'); 
                     
                    }else{
                       $('#birth_check').text('');
                       birthJ = true;
                    }
                  }else{
                     $('#birth_check').text(''); 
                    birthJ = true;
                 }//end of if
                 }else{
                    //1.입력된 생년월일이 8자 초과할때 :  auth:false
                    $('#birth_check').text('생년월일을 확인해주세요 ');
                    $('#birth_check').css('color', 'red');  
                 }
              }); //End of method /*
 
              // 휴대전화
              $('#mem_phone').blur(function(){
                 if(phoneJ.test($(this).val())){
                    console.log(nameJ.test($(this).val()));
                    $("#phone_check").text('');
                 } else {
                    $('#phone_check').text('휴대폰번호를 확인해주세요 ');
                    $('#phone_check').css('color', 'red');
                 }
              });
});

//우편번호 찾기 버튼 클릭시 발생 이벤트
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

</script> 

  
  </body>
</html>
