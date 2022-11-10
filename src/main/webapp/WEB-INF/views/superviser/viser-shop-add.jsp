<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">


<title>Insert title here</title>
<style>
#container {
	margin: 0 auto;
	padding: 0 auto;
	box-sizing: border-box;
	width: 100vw;
	height: 100vh;
	display: grid;
	grid-template-columns: 300px 1fr;
	grid-template-rows: 120px 100px 1fr 120px;
	grid-template-areas: 'header header' 'nav nav' 'main main'
		'footer footer';
}

header {
	grid-area: header;
	display: flex;
	justify-content: center;
	align-items: center;
}

nav {
	grid-area: nav;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
	background-color: gray;
}

main{
	display: grid;
	grid-area : main;
	grid-template-columns:300px 1fr;
}

#sec1 {
	height: 100%;
	align-items: center;
 	padding-left: 2.4rem; 
	padding-top:4rem;
	border-right : 2px solid black;
}

#sec2-form {
	display: flex;
    flex-direction: column;
    padding-top : 4rem;
    padding-left : 4rem;

}

footer {
	grid-area: footer;
	background-color: gray;
}

li {
	list-style: none;
	line-height: 3.5rem;
	cursor: pointer;
}

a {
	text-decoration: none;
	color: gray;
	width: 200px;
}

a:hover {
	color: black;
}
.bar-menu { 
    display: none; 
}

button {
	width : 10rem;
	margin-top : 2rem;
	margin-left : 5rem;
}

label {
	line-height : 1.6rem;
}

#proc_category {
width :11rem;
 height : 30px;
}

p {
	display : inline-block;
	width : 10rem;
}


input {
	height : 20px;
	border-radius : 5px;
	
}
</style>

</head>
<body>
	<div id="container">
		<header>
		<h1>임시 헤더</h1>
<%--            <%@ include file="../frame/mypage/header.jsp" %> --%>
        </header>
		<nav>
			<h2><a href="${pageContext.request.contextPath}/viser/main" style="color : black;">관리자 페이지</a></h2>
		</nav>
		<main>
			<div id="sec1">
				<div id="menu-bar">
				<ul>
			
				<h2>쇼핑몰</h2>
				<li><a href="${pageContext.request.contextPath}/viser/main">쇼핑몰 배송 현황</a></li>
					<li style="text-decoration:underline"><a href="${pageContext.request.contextPath}/viser/shop-add">상품 등록</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/modify/home">상품 수정</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/delete/home">상품 삭제</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/notice/delete/공지사항">공지사항 등록/수정/삭제</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/QNA/delete/자주묻는질문">자주묻는질문 등록/수정/삭제</a></li>
				</ul>
				<ul><h2>호텔</h2>
					<li>예약 확인</li>
					<li>이모 저모</li>
				</ul>
			</div>
			</div>
			<div id="sec2">
			<form id="sec2-form" action="${pageContext.request.contextPath}/viser/add-success" enctype="multipart/form-data" method="post">
				<label for="proc_name"><p>상품 이름</p><input type="text" name="productName" id="proc_name"/></label>
				<label for="proc_shop"><p>업체 이름</p><input type="text" name="productShop" id="proc_shop"/></label>
				<label for="proc_image"><p>상품 썸네일</p><input type="file" name="thumnail" id="proc_image"  required=false/></label>
				
				<div class = "select_img1"><img src=""/></div>
						
				<label for="proc_content"><p>상품 이미지</p><input type="file" name="contImage" id="proc_content" required=false/></label>
				
				<div class= "select_img2"><img src=""/></div>
				<label for="proc_category"><p style="width: 9.6rem;">카테고리</p>
					<select id="proc_category" name="productCategory">
						<option value="choice">카테고리를 선택하세요</option>
						<option value="line">-----------------</option>
						<option value="home">Home</option>
						<option value="walk">Walk</option>
						<option value="carrier">Carrier</option>
						<option value="clothes">Clothes</option>
						<option value="dining">Dining</option>
						<option value="grooming">Grooming</option>
						<option value="toy">Toy</option>
						<option value="food">Food</option>
					</select>
				</label>
				<label for="proc_price"><p>상품 가격</p><input type="text" name="productPrice"></label>
				
					<button>상품 등록</button>
				
				</form>
			</div>
		</main>
		<footer>
		<h1>임시 푸터</h1>
<%-- 			<%@ include file="../frame/main/footer.jsp"%> --%>
		</footer>
		</div>
		
		<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script>
		 $("#proc_image").change(function(){
			   if(this.files && this.files[0]) {
			    var reader1 = new FileReader;
			    reader1.onload = function(data) {
			     $(".select_img1 img").attr("src", data.target.result).width(150).height(150);        
			    }
			    reader1.readAsDataURL(this.files[0]);
			   }
			  });
		 
		 
		 $("#proc_content").change(function(){
			   if(this.files && this.files[0]) {
			    var reader2 = new FileReader;
			    reader2.onload = function(data) {
			     $(".select_img2 img").attr("src", data.target.result).width(150).height(200);        
			    }
			    reader2.readAsDataURL(this.files[0]);
			   }
			  });
		</script>
		
		<%=request.getRealPath("/") %>
		
		
</body>
</html>