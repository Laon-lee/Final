<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/4b992414b9.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/header.css">
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
            height: 100%;
        }

        #container {
            position: relative;
            width: 100%;
            height: 100vh;
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
        .art1{
   			 width: 80%;
    		margin: 0 auto;
    		border-top: 2px solid black;
   		}
   		.art2{
    		width: 60%;
    		margin: 0 auto;
   		 	height: 50px;
    		background-color: black;
    		color: white;
    		text-align: center;
    		margin-bottom: 2rem;
   		}
      
        button {
            cursor: pointer;
        }

        #main-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        #sec2 {
            width:85%;
            margin: 40px;
            display: flex;
            flex-direction: row;
            gap:10%;
            
        }

        #sec2 nav {
            flex: 1;
            padding: 0 20px 0 0;
            border-right: 1px solid black;
        }

          #sec2 nav ul{
            position: relative;
            top: 20%;
            
        }
        #sec2 nav li {
            margin: 0 0 20px 0;
            font-size: 20px;
            ;
            list-style-type: none;
            display: block;
        }
       
        #sec2-div1 ul {
            width: 100%;
            background-color: #f5ebe0;
            font-size: 20px;
        }
        #sec2-div1 li {
            padding:10px
        }

        #art3 {
            
            flex:5;
            width:50vw;
            display: flex;
            flex-direction: column;
            margin-left: 20px;
            gap: 4px;
        }
        #art3 ul a{
        	font-size: 23px;
        }
        #art3 li{
        	padding:5px;
        	border:1px solid black;
        	border-radius:5%;
        }
        #art3 li:nth-child(1){
       		background-color:black;
        	
        }
         #art3 li:nth-child(1) a{
       		color:white;
        	
        }
        
        #coupon-container{
        	margin-top:15px;
        	padding-top:15px;
        	padding-left: 25px;
        	border-top: 1px solid black;
        	display:grid;
        	grid-template-columns: 1fr 1fr 1fr 1fr;
        	grid-template-rows: 1fr 1fr 1fr;
        	gap:10px;
        }
        
        
        .coupon{
        	background:url("${pageContext.request.contextPath}/image/main/쿠폰.png") no-repeat ;
        	background-size:contain;
        	width : 220px;
        	height : 130px;
        }
        
        
        <!-- 쿠폰 내부 글자 간격 수정 -->
        .div1 {
        	display : flex;
        }
        
        
        .coupon-1 {
                display: flex;
    flex-direction: column;
    padding-left: 36px;
    padding-top: 30px;
        }
        
        
        .coupon-p {
        	padding-left : 45px;
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
                <article class="art1">
        
                </article>
                <article class="art2">
                    <h2>쿠폰</h2>
                </article>
                <section id="sec2">
                    <nav>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/mypage" >주문내역조회</a></li>
                            <li><a href="${pageContext.request.contextPath}/userinfo">회원정보</a></li>
                            <li><a href="${pageContext.request.contextPath}/wish">장바구니</a></li>
                            <li><a href="${pageContext.request.contextPath}/usequestion/자주묻는질문">자주묻는질문</a></li>
                            <li><a href="${pageContext.request.contextPath}/question">문의하기</a></li>
                            <li><a href="${pageContext.request.contextPath}/coupon" style="text-decoration: underline">쿠폰</a></li>
                        </ul>
                    </nav>
                    
                    <article id="art3">
                      	<ul>
                      		<li><a href="">사용가능쿠폰</a></li>
                      	</ul>
                      	<div id="coupon-container">
                      		<div class="div1">
                      			<div class="coupon">
                     	 			<div class="coupon-1"> 
                      					<h5>coupon.title</h5>
                      					<h1>coupon.price</h1>
                      					<p>coupon.content</p>
                      				</div>
                      			</div>
                      			<p class="coupon-p">coupon.</p>
                      		</div>
                              <div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>	<div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>	<div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>	<div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>	<div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>
                            <div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>	<div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>	<div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>	<div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>
                            <div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>	<div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>	<div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>	<div class="div1">
                      			<div class="coupon">
                     	 			<div class="coupon-1"> 
                      					<h5>coupon.title</h5>
                      					<h1>coupon.price</h1>
                      					<p>coupon.content</p>
                      				</div>
                      			</div>
                      			<p class="coupon-p">coupon.</p>
                      		</div>	<div class="div1">
                      			<div class="coupon">
                     	 			<div class="coupon-1"> 
                      					<h5>coupon.title</h5>
                      					<h1>coupon.price</h1>
                      					<p>coupon.content</p>
                      				</div>
                      			</div>
                      			<p class="coupon-p">coupon.</p>
                      		</div>	<div class="div1">
                                <div class="coupon">
                                    <div class="coupon-1"> 
                                        <h5>coupon.title</h5>
                                        <h1>coupon.price</h1>
                                        <p>coupon.content</p>
                                    </div>
                                </div>
                                <p class="coupon-p">coupon.</p>
                            </div>	<div class="div1">
                      			<div class="coupon">
                     	 			<div class="coupon-1"> 
                      					<h5>coupon.title</h5>
                      					<h1>coupon.price</h1>
                      					<p>coupon.content</p>
                      				</div>
                      			</div>
                      			<p class="coupon-p">coupon.</p>
                      		</div>	<div class="div1">
                      			<div class="coupon">
                     	 			<div class="coupon-1"> 
                      					<h5>coupon.title</h5>
                      					<h1>coupon.price</h1>
                      					<p>coupon.content</p>
                      				</div>
                      			</div>
                      			<p class="coupon-p">유통기한</p>
                      		</div>
                      		<div class="form-group email-form">
    <label for="email">이메일</label>
    <div class="input-group">
   <input type="text" class="form-control" name="userEmail1" id="userEmail1" placeholder="이메일" >
   <select class="form-control" name="userEmail2" id="userEmail2" >
   <option>@naver.com</option>
   <option>@daum.net</option>
   <option>@gmail.com</option>
   <option>@hanmail.com</option>
    <option>@yahoo.co.kr</option>
   </select>
   </div>   
<div class="input-group-addon">
   <button type="button" class="btn btn-primary" id="mail-Check-Btn">본인인증</button>
</div>
   <div class="mail-check-box">
<input class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
</div>
   <span id="mail-check-warn"></span>
</div>

<script type="text/javascript">
$('#mail-Check-Btn').click(function(e) {
      const email = $('#userEmail1').val() + $('#userEmail2').val(); // 이메일 주소값 얻어오기!
      console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
      const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
      
      /* $.ajax({
         type : 'get',
         url : '<c:url value ="/user/mailCheck?email="/>'+eamil, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
         success : function (data) {
            console.log("data : " +  data);
            checkInput.attr('disabled',false);
            code =data;
            alert('인증번호가 전송되었습니다.')
         }         
      }); */ // end ajax
      e.preventDefault();
      
      let simple_data = {email};      
      fetch("${pageContext.request.contextPath}/check",{
         method : "POST", // PUT, PATCH, DELETE
         headers : {"Content-Type" : "application/json"},
         body : JSON.stringify(simple_data)
      }).then(response => response.json())
      .then(data => {
         console.log("data : " +  data);
         checkInput.attr('disabled',false);
         code =data;
         alert('인증번호가 전송되었습니다.')
      }).catch(error => {
         console.log("error");
      });
   }); // end send eamil
   
   // 인증번호 비교 
   // blur -> focus가 벗어나는 경우 발생
   $('.mail-check-input').blur(function () {
		const inputCode = $(this).val();
		const $resultMsg = $('#mail-check-warn');
		
		if(inputCode === code){
			$resultMsg.html('인증번호가 일치합니다.');
			$resultMsg.css('color','green');
			$('#mail-Check-Btn').attr('disabled',true);
			$('#userEamil1').attr('readonly',true);
			$('#userEamil2').attr('readonly',true);
			$('#userEmail2').attr('onFocus', 'this.initialSelect = this.selectedIndex');
	         $('#userEmail2').attr('onChange', 'this.selectedIndex = this.initialSelect');
      }else{
         $resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
         $resultMsg.css('color','red');
      }
   });
   </script>
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