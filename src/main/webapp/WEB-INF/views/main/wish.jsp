<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
	href="${pageContext.request.contextPath}/css/frame/main/header.css?11">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/frame/main/footer.css">
<style>


html, body, header, main, footer, section, h1, h2, h3, h4, h5, h6, p, a,
	ul, li, nav {
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

#main-container {
	height: 100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

#artcontainer {
	display: flex;
	flex-direction: column;
	width: 60vw;
	 margin-bottom:300px;
}

#sec2 {
	width: 85%;
	margin: 40px;
	display: flex;
	flex-direction: row;
}

#sec2 nav {
	flex: 1;
	padding: 0 20px 0 0;
	border-right: 1px solid black;
	height: 1000px;
}

 #sec2 nav ul{
            position: relative;
            top: 25%;
            
        }

#sec2 nav li {
	margin: 0 0 20px 0;
	font-size: 20px;;
	list-style-type: none;
	display: block;
}

#sec2-div1 ul {
	width: 100%;
	background-color: #f5ebe0;
	font-size: 20px;
}

#sec2-div1 li {
	padding: 10px
}

.selected {
	background-color: black;
	color: white;
}

#art2 {
	flex: 5;
	display: flex;
	justify-content: center;
	
}

#sec2-div2 li {
	display: block;
	font-size: 13px;
}

#sec2-div2-sel {
	padding: 10px;
	height: 25px;
	border: 5px solid white;
}

#sec2-div3 {
	margin-top: 20px;
}

#sec2-div3-table1 {
	border-collapse: collapse;
	width: 100%;
}

#sec2-div3-table1 td {
	text-align: center;
	border: 1px solid black;
}

#sec2-div3-table2 {
	border-collapse: collapse;
}

#sec2-div3-table2 td {
	text-align: center;
}

#member-info table {
	margin: 15px 0 0 0;
	width: 100%;
	border: 4px solid white;
	padding: 5px;
	border-collapse: collapse;
}

#member-info table td {
	border: 1px solid white;
	padding: 5px;
}

#item-list {
	width: 80%;
	display: flex;
	align-items: center;
	flex-direction: column;
	margin-bottom:300px;
}

#item-list img {
	width: 100px;
	height: 80px;
}

#item-list table {
	width: 100%;
	border-collapse: collapse;
}

#item-list button {
	width: 100px;
	height: 30px;
	align-items: center;
}

#item-list button:nth-child(1) {
	background-color: black;
	color: white;
}

#item-list table tr {
	text-align: center;
}

#item-list table td {
	padding: 5px 0 5px 0;
	border-top: 2px solid white;
	border-bottom: 2px solid white;
}

#item-listbtns {
	margin: 40px 0 ;
	
}

.th1 {
	text-align: left;
	padding-left: 30px;
}

.tb1 {
	margin-bottom: 30px;
	border: 1px solid #d7d5d5;
	height: 50px;
	text-align: left;
	background-color: #f6f6f6;
}

#pro-name {
	width:100%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}
.td3{
	max-width:300px;
}
.h2{
	width:100%;
	text-align:left;
	margin-bottom:50px;
	margin-top:30px;
	font-size:30px;
}
</style>
</head>

<body>

	<div id="container">
		<header>
			<%@ include file="../frame/mypage/header.jsp"%>
		</header>

		<main>

			<div id="main-container">

				<section id="sec2">
					<nav>
						<ul>
						
							<li><a href="${pageContext.request.contextPath}/mypage">주문내역조회</a></li>
							<li><a href="${pageContext.request.contextPath}/myhotelres">예약내역조회</a></li>
							<li><a href="${pageContext.request.contextPath}/userinfo">회원정보</a></li>
							<li><a href="${pageContext.request.contextPath}/wish"
								style="text-decoration: underline">장바구니</a></li>
							<li><a
								href="${pageContext.request.contextPath}/usequestion/자주묻는질문">자주묻는질문</a></li>
							<li><a href="${pageContext.request.contextPath}/question">문의하기</a></li>
							
						</ul>
					</nav>
					<article id="art2">
						<c:if test="${fn:length(wish) > 0}">
						<div id="item-list">
							<div class="user-info"></div>
							<h2 style="text-decoration: underline" class="h2"> 장바구니</h2>
							<table class="tb1">
								<tr>
									<th class="th1">일반상품( ${fn:length(wish)} )</th>
								</tr>
							</table>

							<table id="item-list-table">
								<tr>
									<td><input type="checkbox" name="productIds"
										onclick="selectAll(this)"></td>
									<td>이미지</td>
									<td>상품정보</td>
									<td>판매가</td>
									<td>수량</td>
									<td>적립금</td>
									<td>배송구분</td>
									<td>합계</td>
									<td>선택</td>
								</tr>
								<c:forEach var="item" items="${item}" varStatus="status">

									<tr>
										<td><input type="checkbox" name="productIds"
											value="${wish[status.index].wishId}"><input
											class="wishnum" type="hidden"
											value="${wish[status.index].wishId}"><input
											class="productId" type="hidden"
											value="${item.productId}"></td>
										<td><img src="${item.productImage}" alt=""></td>
										<td class="td3"><h4 id="pro-name">${item.productName}</h4>
											<p><&nbsp;${item.productShop}&nbsp;></p>
											<h5>
												[옵션 : <span class="options">${wish[status.index].option}</span>]
											</h5></td>
										<td><span class="product-price"><fmt:formatNumber
													value="${item.productPrice}" pattern="#,###" /></span>원</td>
										<td><span class="product-count">${wish[status.index].count}</span>개</td>
										<td><span class="point"></span>p</td>
										<td>기본배송</td>
										<td class="price"><span class="total-price"></span>원</td>
										<td><button class="orderbtns">주문하기</button>
											<br>
										<button class="deletewish">삭제</button></td>
									</tr>
								</c:forEach>
								<script>
                  			function selectAll(selectAll)  {
                  		  		const checkboxes = document.getElementsByName('productIds');
                  		  
                  		  		checkboxes.forEach((checkbox) => {
                  		    		checkbox.checked = selectAll.checked;
                  		  		})
                  			}
                  		 
                        	var buttons = document.getElementsByClassName("deletewish");
                        	var orderbtns = document.getElementsByClassName("orderbtns");
                        	let wishnum = document.getElementsByClassName("wishnum");
                        	let productId = document.getElementsByClassName("productId");
                        	let options = document.getElementsByClassName("options");
                        	let counts = document.getElementsByClassName("product-count");
                        	for(let i = 0 ; i< buttons.length ; i++ ){
                        		buttons[i].addEventListener("click",function(){
                        			if(confirm('장바구니에서 삭제하시겠습니까?')){
                        				location.href="${pageContext.request.contextPath}/deletewish/"+wishnum[i].value;                        			
                        			}
                        		});
                        		orderbtns[i].addEventListener("click",function(){
                        			if(confirm('해당 상품을 주문하시겠습니까?')){
                        				location.href="${pageContext.request.contextPath}/shop/pay2/"+productId[i].value+"?option="+options[i].innerText+"&count="+counts[i].innerText+"&wishId="+wishnum[i].value;                        			
                        			}
                        		});
                        	}
                        	
                        </script>
								<tr>
									<td colspan="2">[업체기본배송]</td>
									<td colspan="8"><span>전체 합계 금액: &nbsp;<span id="allprice"></span>원
											
									</span></td>
								</tr>


								<script>
                    	let totalprice = document.getElementsByClassName("total-price");
                    	let proprice = document.getElementsByClassName("product-price");
                    	let count = document.getElementsByClassName("product-count");
                    	let point = document.getElementsByClassName("point");
                    	let result = 0;
                    	
                    	for(let i = 0; i< totalprice.length; i++){
                    		let a = stringNumberToInt(proprice[i].innerText)*Number(count[i].innerText);
                    		
                    		totalprice[i].innerText = priceToString(a);
                    		point[i].innerText = priceToString(a/100);
                    		result = result+a;
                    	}
                    	document.getElementById("allprice").innerText = priceToString(result);
                    	
                    	
                    	/* 1000단위 ,찍혀있는 문자를 숫자로*/
                    	function stringNumberToInt(stringNumber){
                    	    return parseInt(stringNumber.replace(/,/g , ''));
                    	}
                    	/* 숫자를 1000단위 ,찍혀있는 문자로*/
                    	function priceToString(price) {
                    	    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
                    	}
                    	
                    </script>
							</table>
							<div id="item-listbtns">
								<button id="total-order">선택상품주문</button>
								<button id="total-delete">선택상품삭제</button>
							</div>
							<script>
                	
                	
                	
					document.getElementById("total-order").addEventListener("click",function(){
						let checkvals = []
	                	cbox = document.querySelectorAll("input[name='productIds']:checked")
	                	for(let i = 0 ; i< cbox.length ; i++){
	                		checkvals.push(cbox[i].value)
	                	}
						location.href = "${pageContext.request.contextPath}/orders?checks="+checkvals;
					});
					document.getElementById("total-delete").addEventListener("click",function(){
						let checkvals = []
	                	cbox = document.querySelectorAll("input[name='productIds']:checked")
	                	for(let i = 0 ; i< cbox.length ; i++){
	                		checkvals.push(cbox[i].value)
	                	}
						if(confirm('선택하신 상품들을 장바구니에서 삭제하시겠습니까?')){
							location.href = "${pageContext.request.contextPath}/deleteWishAll?checks="+checkvals;
						}				
					});
					
                </script>
						</div>
						</c:if>
						<c:if test="${fn:length(wish) == 0}">
							<div>
								<h1 style="font-size: 40px;">이런!</h1>
								<h2>장바구니에 담긴 상품이 없습니다.</h2><br>
								<h3><a href="${pageContext.request.contextPath}/goshop"  style="color: red; text-align:center">쇼핑하러가기 <br>Go →</a></h3>
							</div>
						</c:if>
					</article>
					
				</section>
			</div>
		</main>


		<footer>
			<%@ include file="../frame/main/footer.jsp"%>
		</footer>
	</div>
</body>

</html>