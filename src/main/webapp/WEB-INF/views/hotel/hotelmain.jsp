<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<script src="https://kit.fontawesome.com/4b992414b9.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap"
	rel="stylesheet">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/frame/hotel/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/frame/main/footer.css">
<title>Insert title here</title>
<style>
html, body, header, main, footer, section, h1, h2, h3, h4, h5, h6, p, a,
	ul, li, nav {
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

main {
	width: 100%;
	background-color: #EDEDE9;
}

section {
	width: 100vw;
	height: 100%;
}

/* img */
#hotel_img {
	display: grid;
	grid-template-rows: repeat(5, 1fr);
	grid-template-columns: repeat(3, 1fr);
	grid-template-areas: 'img1 img1 img2' 'img1 img1 img2' 'img1 img1 img5'
		'img3 img4 img5' 'img3 img4 img5';
	gap: 10px;
	height: 82vh;
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

#img1, #img2, #img3, #img4, #img5 {
	width: 100%;
	height: 100%;
}

#img1>button {
	width: 100%;
	height: 100%;
	border: none;
	padding: 0
}

.aimg {
	object-fit: cover;
	width: 100%;
	height: 100%;
}

.date {
	width: 90%;
	margin: 0 auto;
	display: flex;
	align-items: center;
	justify-content: space-around;
	height: 5vh;
	padding: 1vh 0;
}

.indate {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	width: fit-content;
	align-items: center;
	gap: 15px;
}

#datepicker1 {
	width: fit-content;
	border: 0;
	background-color: #edede9;
	font-size: 17px;
}

/* #selecbtn {
            height: 70%;
            border: 0;
            background-color: black;
            width: 5vw;
            color: white;
        } */
.selecbtn {
	height: 70%;
	border: 0;
	background-color: black;
	width: 5vw;
	color: white !important;
	text-align: center;
}

.isbx-toggle {
	display: block !important;
}
/*  #ioutbox {
           display: none;
            width: 90%;
            margin: 0 auto;
            padding-bottom: 1vh;
        }
 */
.outbox {
	display: block !important;
	width: 90%;
	margin: 0 auto;
}

#bxform>label {
	padding: 0px 5px;
}

.clicked {
	display: block !important;
	display: flex !important;
	opacity : 1;
}

#isbx {
	display: flex;
	flex-direction: row;
	justify-content: left;
	width: 70%;
	gap: 4vw;
	margin: 0 auto;
	display: none;
}

#selectp {
	cursor: default;
}


</style>
</head>

<body>
	<div id="container">
		<header>
			<%@ include file="../frame/hotel/header.jsp"%>
		</header>

		<main>
			<section>
				<div class="date">
					<div class="indate">
						<p id="selectp">지역을 선택해주세요</p>

						<!-- <input type="text" placeholder="지역을" id="choicehotel"> -->
						
					</div>
					<input type="text" id="datepicker1" name="dates" readonly>
					<!-- <button class="selecbtn">검색</button> -->
					<a href="#" class="selecbtn" id="asearchbtn">검색</a>
				</div>


				<!-- <div class="coutbox" id="ioutbox"> -->
				<div id="isbx" class="csbx">
					<p>지역구분</p>
					<form action="#" id="bxform">
						<input type="checkbox" name="cate" id="1" class="allseo" value="서울"><label for="1">서울전체</label> 
<input type="checkbox" name="cate" id="2" class="seo" value="금천구"><label for="2">금천구</label>
<input type="checkbox" name="cate" id="3" class="seo" value="은평구"><label for="3">은평구</label> 
<input type="checkbox" name="cate" id="4" class="seo" value="강남구"><label for="4">강남구</label>
<input type="checkbox" name="cate" id="5" class="seo" value="강서구"><label for="5">강서구</label>
<input type="checkbox" name="cate" id="6" class="seo" value="관악구"><label for="6">관악구</label>
<input type="checkbox" name="cate" id="7" class="seo" value="도봉구"><label for="7">도봉구</label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="cate" id="8" class="seo" value="서초구" ><label for="8">서초구</label>
<input type="checkbox" name="cate" id="9" class="seo" value="성동구"><label for="9">성동구</label>
<input type="checkbox" name="cate" id="10" class="seo" value="양천구"><label for="10">양천구</label> 
<input type="checkbox" name="cate" id="11" class="seo" value="용산구"><label for="11">용산구</label>
<input type="checkbox" name="cate" id="12" class="seo" value="서대문구"><label for="12">서대문구</label>
<input type="checkbox" name="cate" id="13" class="seo" value="동대문구"><label for="13">동대문구</label>
<input type="checkbox" name="cate" id="14" class="seo" value="강동구"><label for="14">강동구</label> <br />
<input type="checkbox" name="cate" id="20" class="allgyeong" value="경기"><label for="20">경기전체</label> 
<input type="checkbox" name="cate" id="21" class="gyeong" value="구리시"><label for="21">구리시</label>
<input type="checkbox" name="cate" id="22" class="gyeong" value="남양주시"><label for="22">남양주시</label> 
<input type="checkbox" name="cate" id="23" class="gyeong" value="의정부시"><label for="23">의정부시</label>
<input type="checkbox" name="cate" id="24" class="gyeong" value="포천시"><label for="24">포천시</label>
<input type="checkbox" name="cate" id="25" class="gyeong" value="하남시"><label for="25">하남시</label><br />
<input type="checkbox" name="cate" id="15" class="allin" value="인천"><label for="15">인천전체</label>
<input type="checkbox" name="cate" id="16" class="in" value="연수구"><label for="16">연수구</label> 
<input type="checkbox" name="cate" id="17" class="in" value="부평구"><label for="17">부평구</label> 
<input type="checkbox" name="cate" id="18" class="in" value="남동구"><label for="18">남동구</label>
<input type="checkbox" name="cate" id="19" class="in" value="서구"><label for="19">서구</label> <br />
<input type="checkbox" name="cate" id="26" class="allchung" value="충북"><label for="26">충북전체</label>
<input type="checkbox" name="cate" id="27" class="chung" value="음성군"><label for="27">음성군</label>
<input type="checkbox" name="cate" id="28" class="chung" value="제천시"><label for="28">제천시</label>
<input type="checkbox" name="cate" id="29" class="chung" value="청주시"><label for="29">청주시</label>
<input type="checkbox" name="cate" id="30" class="chung" value="충주시"><label for="30">충주시</label> 
						<!-- <button type="button"  id="sbtn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"
							id="svg">
                            <path
								d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                        </svg></button> -->
					</form>
				</div>
				<!-- </div> -->
			
				<script>
					
					window.addEventListener('DOMContentLoaded', function(){
						//카테고리 배열 설저
						let cateArr = [];
						let cateArr2 = [];
		                
						
	                     
						
						
						//document.getElementById("sbtn").addEventListener("click", function(){ 버튼이벤트 날림
							
							//name cate의 값을 가져옴
							
							
							 //각 값을 배열에 넣어줌
							
							//all체크 누르면 전체지역 빼고 들어감
							
						/*const checked = document.querySelectorAll('input[name="cate"]:checked');
						checked.forEach((item)=>{
							let cate = item.value;
							cateArr.push(cate);
						});
						
						if(document.getElementById("1").checked || document.getElementById("8").checked || document.getElementById("11").checked) {
							cateArr.slice(1);
						}
							console.log("이겅가ㅇ"+cateArr);

						});*/
						
						let now = new Date();
						let tom = new Date();
											
						tom.setDate(tom.getDate()+1);
						
						$('input[name="dates"]').daterangepicker({
							 "startDate": now,
	                            //시작날짜
	                         "endDate": tom,
	                            //종료날짜
	                         "minDate": now,
	                            //최소지정날짜
	                         "opens": "center",
	 
	                         locale: {
	                           	//기타 설정
	                            "separator": " ~ ",
	                            	//구분자
	                           	"applyLabel": "적용",
	                            	 //버튼 라벨
	                            "cancelLabel": "취소",
	                            format: "YYYY-MM-DD",
	                            daysOfWeek: ["일", "월", "화", "수", "목", "금", "토"],
	                            monthNames: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
	                        }
	                    });
						
						$('input[name="dates"]').on('show.daterangepicker', function() {
							$(".cancelBtn").css("float", "right");
                     	 	$(".cancelBtn").css("background-color", "white");
                     	 	$(".cancelBtn").css("color","black");
                     	 	$(".applyBtn").css("background-color", "black");
                     	 	$(".applyBtn").css("color","white");
                     		$(".cancelBtn, .applyBtn").css("border","1px solid black");
                     	 	$(".cancelBtn, .applyBtn").css("cursor","pointer");
                     		$(".cancelBtn, .applyBtn").css("width", "60px");
						});
						 
 
						 
						$('input[name="dates"]').on('apply.daterangepicker', function(ev, picker) {
							 //datepicker에서 적용버튼을 클릭했을 때
							 var startdate = picker.startDate.format('YYYY-MM-DD');
							 var enddate = picker.endDate.format('YYYY-MM-DD');
							 
							$('input[name="cate"]:checked').each(function(){
								var cate=$(this).val();
								cateArr.push(cate);
								cateArr2 = cateArr.slice(1);
							});
							 
							console.log("in"+cateArr);
							 
							if(Array.isArray(cateArr) && cateArr.length === 0) {
								$("#asearchbtn").click(function(){
									$("#selectp").css("color","red");
									$("#selectp").css("fontWeight","900");
									$("#isbx").css("display", "block");
									$("#isbx").css("display", "flex");
								});
							} else {
								$("#asearchbtn").click(function(){
									$("#selectp").css("color","black");
									$("#isbx").css("display", "none");
							 		$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+startdate+"/"+enddate+"/"+cateArr);	
								});	
							}
							 
						});
						
						document.getElementById("asearchbtn").addEventListener("click",function(){ 
						
						var jjcateArr = [];
						var jjcateArr2 = [];
						 
						const jjchecked = document.querySelectorAll('input[name="cate"]:checked');
						jjchecked.forEach((item)=>{
							var jjcate = item.value;
						 	jjcateArr.push(jjcate);
						 	jjcateArr2 = jjcateArr.slice(1);
						});
						 
						console.log(jjcateArr);
						console.log("slice"+jjcateArr2);
						 
						 
						 
						var today =  now.getFullYear() + "-" + ((now.getMonth() + 1) > 9 ? (now.getMonth() + 1).toString() : "0" + (now.getMonth() + 1)) + "-" + (now.getDate() > 9 ? now.getDate().toString() : "0" + now.getDate().toString());
	                    var tommorow = tom.getFullYear() + "-" + ((tom.getMonth() + 1) > 9 ? (tom.getMonth() + 1).toString() : "0" + (tom.getMonth() + 1)) + "-" + (tom.getDate() > 9 ? tom.getDate().toString() : "0" + tom.getDate().toString());
	                    //오늘 날짜와 내일 날짜 출력
	                    if(Array.isArray(jjcateArr) && jjcateArr.length === 0){
	                    	document.getElementById("selectp").style.color="red";
	                    	document.getElementById("selectp").style.fontWeight = "900";
	                    	document.getElementById("isbx").style.display = "block";
	                    	document.getElementById("isbx").style.display = "flex";
	                    }else {
	                    	document.getElementById("selectp").style.color="black";
	                    	document.getElementById("isbx").style.display = "none";
	                    	if(document.getElementById("1").checked || document.getElementById("20").checked || document.getElementById("15").checked || document.getElementById("26").checked){
	                    	 	console.log("slice"+jjcateArr2);
	                			location.href = "${pageContext.request.contextPath}/golist/"+today+"/"+tommorow+"/"+jjcateArr2; 	
	                    	} else {
	                    	 	console.log("여기에오나1"+jjcateArr);
	                    	 	console.log("여기에오나2"+jjcateArr2);
	                    	 	location.href = "${pageContext.request.contextPath}/golist/"+today+"/"+tommorow+"/"+jjcateArr;
	                     	}
	                    }
	                    
						});
						 
					});	
						/*  document.getElementById("asearchbtn").addEventListener("click",function(){ */
							 
		                     //daterangepicker를 사용하지 않았으면 오늘 날짜와 내일 날짜가 들어감
		                     
		          
						/*  }); */
					
					
					
                   
	
                </script>
                
               <script type="text/javascript">
				$('.allseo').click(function(){
                 	if($('.allseo').is(':checked')){
                 		$('.seo').prop("checked",true);
                 	} else {
                 		$('.seo').prop("checked",false);
                 	};
                 });
                 
                 $('.allin').click(function(){
                 	if($('.allin').is(':checked')){
                 		$('.in').prop("checked",true);
                 	} else {
                 		$('.in').prop("checked",false);
                 	};
                 });
                 
                 $('.allgyeong').click(function(){
                 	if($('.allgyeong').is(':checked')){
                 		$('.gyeong').prop("checked",true);
                 	} else {
                 		$('.gyeong').prop("checked",false);
                 	};
                 });
                 
                 $('.seo').click(function(){
                 	if($('.allseo').is(':checked')){
                 		$('.allseo').prop("checked", false);
                 	};
                 	
                 	if($('.seo:checked').length == $('.seo').length){
                     	$('.allseo').prop("checked",true);
                     };
                 });
                 
                 $('.in').click(function(){
                 	if($('.allin').is(':checked')){
                 		$('.allin').prop("checked", false);
                 	};
                 	
                 	if($('.in:checked').length == $('.in').length){
                     	$('.allin').prop("checked",true);
                     };
                 });
                 
                 $('.gyeong').click(function(){
                 	if($('.allgyeong').is(':checked')){
                 		$('.allgyeong').prop("checked", false);
                 	};
                 	
                 	if($('.gyeong:checked').length == $('.gyeong').length){
                     	$('.allgyeong').prop("checked",true);
                     };
                 });
				
				</script>
				<!--  --><script>
                    
				 var p = document.getElementById("selectp");
                 var svg = document.getElementById("svg");
                 var iob = document.getElementById("ioutbox");
					var isbx = document.getElementById("isbx");
                 var date = document.getElementById("datepicker1");
					var div = document.getElementById("datepicker1").firstChild;
					var searchbtn = document.getElementById("asearchbtn");
                 
                 p.addEventListener("click", function () {
                 	isbx.classList.toggle("clicked");    
                 });
                 
                /* svg.addEventListener("click", function () {
                 	isbx.classList.toggle("clicked");
                 	
                 });*/
                 
                 date.addEventListener("click", function () {
                 	
                 	if(isbx.className="clicked"){
                 		isbx.classList.toggle("clicked");
                 	}
                 });
                    
                 /* document.getElementById("sbtn").addEventListener("click", function(){
                	 isbx.classList.toggle("clicked");
                	 
                 }); */
                	/* asearchbtn.addEventListener("click", function () {
                  	isbx.classList.toggle("clicked");    
                  }); */
                </script>
				<div id="hotel_img">
					<div id="img1">
						<a href="#" class="link"><img
							src="image/hotel/dog1.jpg" alt="" class="aimg"></a>
					</div>
					<div id="img2">
						<a href="#" class="link"><img
							src="image/hotel/dog2.jpg" alt="" class="aimg"></a>
					</div>
					<div id="img3">
						<a href="#" class="link"><img
							src="image/hotel/dog4.jpg" alt="" class="aimg"></a>
					</div>
					<div id="img4">
						<a href="#" class="link"><img
							src="image/hotel/dog5.jpg" alt="" class="aimg"></a>
					</div>
					<div id="img5">
						<a href="#" class="link"><img
							src="image/hotel/dog3.jpg" alt="" class="aimg"></a>
					</div>
				</div>
				<script type="text/javascript">
					const min = 1;
					const max = 45;
					
					/*document.getElementsByClassName("link").addEventListener("click",function(){
						location.href = "${pageContext.request.contextPath}/maindetail/"+random;
					})*/
					$(".link").click(function(){
						let random = Math.floor(Math.random()*(max-min)+min);
						console.log(random);
						location.href = "${pageContext.request.contextPath}/maindetail/"+random;
					})
				</script>
			</section>
			여기서 수정하면 일로오나?
		</main>

		<footer>
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
	</div>


</body>
</html>