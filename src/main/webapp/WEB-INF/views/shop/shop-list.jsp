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
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/shop/header.css">
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
    body{
      background-color: #e3d5ca;
    }
    li, a{
        list-style-type: none;
        color: black;
        text-decoration: none;
    }

    nav div {
      width: 100%;
      height: 100%;
    }

    
    #container {
      position: relative;
      width: 100%;
      height: 100%;
      display: grid;
      grid-template-rows: 7vh 120vh 7vh;
      grid-template-columns: 1fr;
    }

    main {
      width: 100%;
      background-color: #e3d5ca;

    }

    section {
      width: 100vw;
      height: 82vh;
    }

  
    .category-menu{
    	
        padding: 15px 0 15px 0;
        border-top: 2px solid black;
        border-bottom: 2px solid black;
        margin-top: 10px;
        margin: 0 auto;
        width: 80%;
        display: flex;
        flex-direction: row;
        justify-content: left;
        gap: 30px;
        text-align: center;
        margin-bottom: 30px;
    }
    .category-menu img{
        margin-top: 10px;
        width: 40px;
        height: 40px;
    }
    .img-header{
        display: flex;
        align-items: center;
        justify-content: center;
       }
       .img-header img{
       width : 80%;
      margin-left : 10%;
      margin-bottom : 50px;
       }
  
        li{
            list-style-type: none;
        }
      
    .sh3{
    width: 200px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    margin-bottom: 5px;
   }
   .flex-container{
    display: grid;
    width: 100%;
    height: 86vh;
    
    justify-content: center;
    grid-template-columns: 15% 15% 15% 15%;
    grid-template-rows: 250px 250px 250px;
    
    margin-top: 5%;
    gap : 3%;
    z-index: -1;
    
   }
  .flex-container div{
  width : 75%;
  }
  .flex-container img{
  width : 100%;
  height: 200px;
  }
  @media(max-width : 1500px){
    footer{
      display: none;
    }
  }
  </style>
</head>

<body>

  <div id="container">
    <header>
      <%@ include file="../frame/shop/header.jsp" %>
    </header>
    	
    <main>
     <div class="category-menu">
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="${pageContext.request.contextPath}/image/shop/Home.png" alt=""><br>Home</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="${pageContext.request.contextPath}/image/shop/Walk.png" alt=""><br>Walk</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="${pageContext.request.contextPath}/image/shop/Carrier.png" alt=""><br>Carrier</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="${pageContext.request.contextPath}/image/shop/Clothes.png" alt=""><br>Clothes</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="${pageContext.request.contextPath}/image/shop/Dining.png" alt=""><br>Dining</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="${pageContext.request.contextPath}/image/shop/Grooming.png" alt=""><br>Grooming</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="${pageContext.request.contextPath}/image/shop/Toy.png" alt=""><br>Toy</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="${pageContext.request.contextPath}/image/shop/Big Dog.png" alt=""><br>Big Dog</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list"><img src="${pageContext.request.contextPath}/image/shop/Food.png" alt=""><br>Food</a></li>
        </div>
        <div class="flex-container">
    	<div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
    	<div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
        <div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
        <div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
        <div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
        <div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
        <div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
        <div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
        <div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
        <div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
        <div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
        <div><a href="${pageContext.request.contextPath}/shop/orderinfo"><img src="${pageContext.request.contextPath}/image/shop/NewImg12.jpg" alt=""><br>상품명<br><h3>가격</h3></a></div>
    </div>
    </main>
   
   
    <footer>
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
</body>
</html>