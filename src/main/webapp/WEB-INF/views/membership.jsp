<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <style>
        *{
            margin: 0;
            padding: 0;
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
            background-color: #F5EBE0;
        }
        .header-container{
            width: 100%;
            display: flex;
            justify-content: center;
            margin-top: 20px;
            margin-bottom: 50px;
        }
        nav{
            width: 50%;
            display: flex;
            margin: 0 auto;
            justify-content: center;
            border-bottom: 3px solid black;
            margin-bottom: 10px;
        }
        nav h2{
            padding-bottom: 10px;
        }
        .art1,.art2,.art3,.art4{
            display: flex;
            margin: 0 auto;
            width: 50%;
            flex-direction: column;
            
           
        }
        .art1 input, .art2 input{
            width: 55%;
            margin-left: 20px;
            margin-bottom: 20px;
            padding-left: 10px;
            height: 30px;
            border: none;
        }
        .art1 button, .art2 button{
            width: 13%;
            height: 25px;
            font-size: 0.6rem;
            font-weight: bold;
            background-color: #D9D9D9;
            border: 1px solid black;
            cursor: pointer;
            margin-left: 5px;
        }
       .art1{
        margin-bottom: 20px;
       }
       .art2{
        margin-bottom: 20px;
       }
       .art3{
        margin-bottom: 20px;
       }
       .art3-container{
        margin: 0 auto;
        width: 90%;
        height: 300px;
        background-color: white;
       }
      .art4 button{
        display: flex;
        justify-content: center;
        width: 40%;
        margin: 0 auto;
        margin-bottom: 25px;
        background-color: black;
        height: 30px;
        cursor: pointer;
        color: white;
      }
      
      input {
        width: 20%;
      }

      .art3 > h3 {
        font-size: 1rem;
        padding-left: 15px;
        padding-bottom: 10px;
      }

      .art3 > div { 
        overflow: scroll;
        margin: 10px;
      }

      .art3 > div >h3> span {
        color: red;
      }

      .art3 > div > p {
        margin: 5px;
      }

      #agree {
        padding-left: 50px;
        right: 330px;
        cursor: pointer;
        height: 20px;
        position: absolute;
        
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


    </style>

</head>
<body>
<header class="header-container">
        <h1>Déng Nuri</h1>
        <img src="" alt="">
        <img src="" alt="">
        <img src="" alt="">
        <img src="" alt="">
    </header>
    <nav>
        <h2>회원가입</h2>
    </nav>
    <main>
        <article class="art1">
            <div><input type="text" placeholder="이름"></div>
            <div><input type="text" placeholder="생년월일 ex) 1992/12/17"></div>
            <div><input type="id" placeholder="아이디"> <button>중복확인</button></div>
            <div><input type="password" placeholder="비밀번호"></div>
            <div><input type="password" placeholder="비밀번호 확인"></div>
        </article>
        <article class="art2">
            <div><input type="email" name="email" id="email" placeholder="이메일"><br></div>
            <div><input type="text" placeholder="휴대폰"> <button>인증하기</button></div>
            <div><input type="text" placeholder="기본 주소 (도로명 주소를 입력해 주세요)"></div>
            <div><input type="text" placeholder="상세 주소 (입력해 주세요)"></div>
        </article>
        <article class="art3">
            <h3>개인정보 수집 및 이용 동의 <span>(필수)</span><input type="checkbox" name="agree" id="agree"></h3>
    
            <div class="art3-container">
<p>1. 개인정보 수집 및 이용 목적
    회원의 개인정보는 홈페이지(모바일 웹/앱 포함) 및 뎅누리 제반 서비스를 통해 회원 관리, 서비스 제공·개선, 신규 서비스 개발 등 다음과 같은 목적으로 이용합니다. <br>
    - 이용자의 식별, 가입의사 확인 및 연령 확인, 불량회원 부정이용 방지, 만 14세 미만 아동의 경우 법정대리인의 동의 여부 확인, 법정 대리인 권리행사 시 본인 확인, 회원 탈퇴 의사 확인 등 회원 관리와 보안 및 프라이버시 보호 측면의 서비스 환경 구축을 위하여 이용합니다.<br>
    - 콘텐츠 등 서비스 제공(광고 포함)과 민원 처리, 분쟁조정을 위한 기록보존, 고지사항 전달과 함께 방문 및 이용기록 분석과 이용자 분석 통계를 통해 신규 서비스 발굴 및 기존 서비스 개선, 맞춤 서비스 제공 등을 위하여 개인정보를 이용합니다.<br>
    - 유료서비스 제공에 따르는 구매 및 요금 결제, 상품 및 서비스 배송을 위하여 개인정보를 이용합니다.<br>
    - 이벤트 정보 및 참여기회 제공, 신규 서비스 안내, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다. 단, 광고 목적의 메일과 텔레마케팅, 우편, SMS 발송 시에는 별도 동의한 회원에 한하며, 마이페이지나 고객센터를 통해 동의를 철회하실 수 있습니다.<br>
    <br>
    2. 개인정보 수집 항목<br>
    회사는 서비스 제공을 위해 필요한 최소한의 개인정보를 수집합니다.<br>
    일부 서비스에서 부가 정보가 필요한 경우에는 별도 동의를 받고 추가적인 개인정보를 수집할 수 있습니다.<br>
    <br>
    <국내거주자 회원가입><br>
    - 필수항목: 아이디, 비밀번호, 이름, 생년월일, 성별, 휴대폰번호, 이메일, 만14세 미만 아동의 경우 법정대리인 정보(법정대리인의 이름, 생년월일, 휴대폰번호, 중복가입방지를 위한 CI정보), 본인인증 시 CI정보<br>
    - 선택항목: 주소<br>
    iMBC는 이용자의 기본적 인권을 현저하게 침해할 우려가 있는 민감한 개인정보(사상 및 신조, 정치적 성향 및 범죄 기록, 건강상태 및 성생활 등)는 수집하지 않습니다.<br>
    <br>
    <해외거주자 가입><br>
    - 필수항목: 아이디, 비밀번호, 이름, 생년월일, 성별, 이메일, 국가<br>
    - 선택항목: 전화번호<br>
    <br>
    <유료 서비스 이용><br>
    - 신용카드 결제 시 : 카드사명, 카드번호 등<br>
    - 휴대전화 결제 시 : 휴대폰번호, 통신사, 결제승인번호 등<br>
    - 계좌이체 시 : 은행명, 계좌번호 등<br>
    - 상품권 이용 시 : 상품권 번호<br>
    <br>
    <환불 처리 시><br>
    - 은행명, 계좌번호, 예금주 명 등<br>
    iMBC는 PC웹, 모바일 웹/앱 이용과정에서 쿠키, IP주소, 가입 일시, 방문 일시, 서비스 이용기록, 불량 이용기록, 접속 기기정보(OS, 화면사이즈, 폰기종, 단말기 모델명) 등의 정보가 자동으로 생성되어 수집될 수 있습니다. 또한, 음성을 이용한 검색 서비스 등에서 음성이 수집 될 수 있습니다.<br>
    <br>
    3. 개인정보의 보유기간 및 이용기간<br>
    iMBC는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적을 달성한 이후에는 지체 없이 재생 불가능한 기술적인 방법을 사용하여 개인정보를 파기하고 있습니다.<br>
    - 회원가입 정보의 경우, 회원 가입을 탈퇴하거나 회원에서 제명된 때<br>
    - 대금지급 정보의 경우, 대금의 완제일 또는 채권소멸시효기간의 만료일<br>
    - 상품배송 정보의 경우, 물품 또는 서비스가 인도되거나 제공된 때<br>
    - 이용자에게 개인정보 보관 기간에 대해 별도의 동의를 얻은 경우 해당 기간 만료 시<br>
    - 소송이나 분쟁 발생 가능성이 있어 법적 대응을 위한 정보의 경우 해당 사유 소멸 시<br>
    <br>
    단, 법령에 보관 의무가 규정되어 있는 경우 아래 법령의 기간 동안 보관하며, 이 기간 동안의 개인정보는 절대 다른 목적으로는 이용되지 않습니다. 그 후에도 계속 보유할 필요가 있을 경우에는 회원에게 이러한 사실을 고지하고 그에 대한 동의를 받습니다.<br>
    <br>
    <전자상거래 등에서 소비자 보호에 관한 법률 ><br>
    - 계약 또는 청약철회 등에 관한 기록: 5년 보관<br>
    - 대금결제 및 재화 등의 공급에 관한 기록: 5년 보관<br>
    <통신비밀보호법 ><br>
    - 로그인 기록: 3개월 보관<br>
    
    <br>
    일시적인 목적(이벤트, 설문조사 등)을 위하여 제공받는 것임을 밝히고 입력 받은 개인정보는 그 목적이 달성된 이후에는 이용자 또는 회원의 의사에 따라 회원가입에 필요한 정보로 처리되거나 재생할 수 없는 방법에 의하여 디스크에서 완전히 삭제하여 추후 열람이나 이용이 불가능한 상태로 처리됩니다.<br>
    <br>
    정보통신망법에서 규정하는 ‘개인정보 유효기간제’에 따라 1년 이상(로그인이나 자동결제 등 유료서비스 계약해지일 혹은 계약기간 만료일 중 마지막 이용시기 기준)의 기간 동안 서비스 이용을 중단한 경우 회사는 기간만료 30일전까지 전자메일을 통해 사전고지 후 해당 회원의 개인정보를 분리보관하며, 분리보관된 개인정보는 4년간 보관 후 전자메일을 통해 사전고지 후 회원의 이의제기가 없을 경우 해당 회원의 회원자격을 해지하고, 이에 따라 개인정보를 파기합니다.<br>
    <br>
    </p>
            </div>
        </article>
        <article class="art4">
            <button>회원 가입</button>
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
</body>
</html>