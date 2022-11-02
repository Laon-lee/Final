<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/frame/main/footer.css">


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

.li{
    margin-left: 30px;
}

.bar-menu { 
    display: none; 
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
    
   }
  
   .art3-container{
    width: 80%;
    margin: 0 auto;
    display: flex;
    border: 1px solid black;
    height: 100px;
    align-items: center;
    overflow: hidden;
   }
  .art3-container-span{
    display: inline-block;
    width: 50px;
    text-align: center;
    border: 2px solid darkcyan;
    color: darkcyan;
    border-radius: 1rem;
  }
  .art3-first{
    width: 100%;
    min-width: 200px;
    margin-left: 40px;
   
  }
  .art3-first a{
  margin-left : 10px;
  }
  .art3-second{
    width: 1300px;
    
  }
  .art3-third{
    text-align: right;
    width: 100%;
    margin-right: 30px;
  }
  h1{
  width:80%;
  margin:0 auto;
  }
  #boardContent{
  width:100%;
  }
  #boardId{
  width:15px;
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
			<h2>관리자 페이지</h2>
		</nav>
		<main>
			<div id="sec1">
				<div id="menu-bar">
				<ul><h2>쇼핑몰</h2>
					<li><a href="${pageContext.request.contextPath}/viser/shop-add">상품 등록</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/modify/home">상품 수정</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/delete/home">상품 삭제</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/notice/delete/공지사항">공지사항 삭제</a></li>
				</ul>
				<ul><h2>호텔</h2>
					<li>예약 확인</li>
					<li>이모 저모</li>
				</ul>
			</div>
			</div>
			<div id="sec2">
			    <article class="art3">
        <h1>공지사항/수정/삭제</h1>
        <c:forEach var="item" items="${list}">
        <form action="${pageContext.request.contextPath}/viser/delete/modify">
      <div class="art3-container">
        <div class="art3-first"><span class="art3-container-span">제목</span><input type="text" name="boardTitle" id="boardTitle" value="${item.boardTitle}"/></div>
        <div class="art3-second">
        <label for="boardId">수정/삭제할 번호</label><input type="text" name="boardId" id="boardId" value="${item.boardId}" readonly/>
        <label for="boardContent">수정할 내용</label><textarea name="boardContent" id="boardContent">${item.boardContent}</textarea><br />
        <input type="hidden" name="isDelete" id="delete" value=""/>
        <button id="btn1">수정</button><button id="btn2">삭제</button>
        </div>
        <div class="art3-third">
        s1 == 삭제, 0 == 수정 <br />
        상태 : ${item.isDelete}</div>
      </div>
   </form>
    </c:forEach>
    </article>
			</div>
		</main>
		<footer>
		<h1>임시 푸터</h1>
<%-- 			<%@ include file="../frame/main/footer.jsp"%> --%>
		</footer>
		</div>
		<script>
		
		document.getElementById("btn1").addEventListener("click",function(){
			document.getElementById("delete").value=0;
			alert("수정에 성공하셨습니다.")
		});
		
		document.getElementById("btn2").addEventListener("click",function(){
			document.getElementById("delete").value=1;
			alert("삭제에 성공하셨습니다.")
		});
		</script>
</body>
</html>