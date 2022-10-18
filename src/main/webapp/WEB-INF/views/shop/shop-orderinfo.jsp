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
   #mainA1{
    font-family: 'Zilla Slab', serif;
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


   

    #container {
      position: relative;
      width: 100%;
      height: 100%;
      display: grid;
      grid-template-rows: 70px 1fr 70px;
      grid-template-columns: 1fr;
      grid-template-areas: 'header''main''footer';
    }

 
    main {
      width: 100%;
      background-color: #f5ebe0;
      grid-area:main;
    }

    section {
      width: 70vw;
      
    }

    button{
        cursor:pointer;
    }
    
    .category-menu{
        padding:15px 0 15px 0;
        border-top: 2px solid black;
        border-bottom: 2px solid black;
        margin-top:10px;
        width: 100%;
        display: flex;
        flex-direction: row;
        justify-content:left;
        gap: 30px;
        text-align: center;
    }
    .category-menu a{
        font-size:13px;
    }
    .category-menu img{
        margin-top: 10px;
        width: 40px;
        height: 40px;
    }
  
    #main-container{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    #sec1{
        display: flex;
        flex-direction: column;
        
        align-items: center;
    }
    #member-info table {
        margin:15px 0 0 0;
        width:100%;
        border: 4px solid white;
        padding:5px;
        border-collapse: collapse;
    }
    #member-info table td{
        border: 1px solid white;
        padding:5px;
        
    }
    #item-list{
        margin-top:20px;
        display:flex;
        align-items: center;
        flex-direction: column;
    }
    #item-list img{
        width: 100px;
        height:80px;
    }
    #item-list table{
        width:100%;
        border-collapse: collapse;
    }
    #item-list button{
        width: 80px;
        align-items: center;
    }
    #item-list button:nth-child(1){
        background-color: black;
        color:white;
    }
    
    #item-list table tr{
        text-align: center;

    }
    #item-list table td{
        padding:5px 0 5px 0;
        border-top:2px solid white;
        border-bottom:2px solid white;
    }
    #item-listbtns{
        margin-top:20px;
    }
   
  </style>
</head>

<body>

  <div id="container">
    <header>
      <%@ include file="../frame/shop/header.jsp" %>
    </header>
    
    <main>
        <div id="main-container">
        <section id="sec1">
            
            <div class="category-menu">
                <li><a href=""><img src="./image/shop/Home.png" alt=""><br>Home</a></li>
                <li><a href=""><img src="./image/shop/Walk.png" alt=""><br>Walk</a></li>
                <li><a href=""><img src="./image/shop/Carrier.png" alt=""><br>Carrier</a></li>
                <li><a href=""><img src="./image/shop/Clothes.png" alt=""><br>Clothes</a></li>
                <li><a href=""><img src="./image/shop/Dining.png" alt=""><br>Dining</a></li>
                <li><a href=""><img src="./image/shop/Grooming.png" alt=""><br>Grooming</a></li>
                <li><a href=""><img src="./image/shop/Toy.png" alt=""><br>Toy</a></li>
                <li><a href=""><img src="./image/shop/Big Dog.png" alt=""><br>Big Dog</a></li>
                <li><a href=""><img src="./image/shop/Food.png" alt=""><br>Food</a></li>
            </div>

        </section>
        <section id="sec2">
            <div id="member-info">
                <table>
                    <tr>
                        <td rowspan="2">혜택정보</td>
                        <td>김송이 님은, [일반회원] 이십니다.</td>
                    </tr>
                    <tr>
                        
                        <td>가용적립금 : 3000원 / 예치금: 0원 / 쿠폰: 1개</td>
                    </tr>
                </table>
            </div>
            <div id="item-list">
                <table id="item-list-table">
                    <tr>
                       <th><input type="checkbox"></th>
                       <th>이미지</th>
                       <th>상품정보</th>
                       <th>판매가</th>
                       <th>수량</th>
                       <th>적립금</th>
                       <th>배송구분</th>
                       <th>배송비</th>
                       <th>합계</th>
                       <th>선택</th>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><img src="./image/쇼핑섹션.png" alt=""></td>
                        <td><h4>뮤니쿤트 Easy Fit All In One:Gary</h4><h6>[옵션: 2L(+5000)]</h6></td>
                        <td>59,000원</td>
                        <td>1</td>
                        <td>500원</td>
                        <td>기본배송</td>
                        <td class="delivery"><span>3000</span>원</td>
                        <td class="price"><span>59000</span>원</td>
                        <td><button>주문하기</button><br><button>관심상품등록</button><br><button>삭제</button></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><img src="./image/쇼핑섹션.png" alt=""></td>
                        <td><h4>뮤니쿤트 Easy Fit All In One:Gary</h4><h6>[옵션: 2L(+5000)]</h6></td>
                        <td>59,000원</td>
                        <td>1</td>
                        <td>500원</td>
                        <td>기본배송</td>
                        <td class="delivery"><span>3000</span>원</td>
                        <td class="price"><span>59000</span>원</td>
                        <td><button>주문하기</button><br><button>관심상품등록</button><br><button>삭제</button></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><img src="./image/쇼핑섹션.png" alt=""></td>
                        <td><h4>뮤니쿤트 Easy Fit All In One:Gary</h4><h6>[옵션: 2L(+5000)]</h6></td>
                        <td>59,000원</td>
                        <td>1</td>
                        <td>500원</td>
                        <td>기본배송</td>
                        <td class="delivery"><span>3000</span>원</td>
                        <td class="price"><span>59000</span>원</td>
                        <td><button>주문하기</button><br><button>관심상품등록</button><br><button>삭제</button></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><img src="./image/쇼핑섹션.png" alt=""></td>
                        <td><h4>뮤니쿤트 Easy Fit All In One:Gary</h4><h6>[옵션: 2L(+5000)]</h6></td>
                        <td>59,000원</td>
                        <td>1</td>
                        <td>500원</td>
                        <td>기본배송</td>
                        <td class="delivery"><span>3000</span>원</td>
                        <td class="price"><span>59000</span>원</td>
                        <td><button>주문하기</button><br><button>관심상품등록</button><br><button>삭제</button></td>
                    </tr>
                    
                    <tr>
                        <td colspan="2">[업체기본배송]</td><td colspan="8"><span>상품구매금액: <span id="allprice"></span> +  배송비: <span id="alldelivery"></span> = 합계: <span id="total"></span>원</span></td>
                    </tr>
                    <script>
                        const delivery = document.querySelectorAll(".delivery>span");
                        const price = document.querySelectorAll(".price>span");
                        console.log(price[0].innerHTML);
                        var alldelivery=0;
                        var allprice=0;
                         for (let i = 0; i < delivery.length; i++) {
                            alldelivery= alldelivery + Number(delivery[i].innerHTML)
                         }
                         for (let j = 0; j < price.length; j++) {
                            allprice= allprice + Number(price[j].innerHTML)
                         }
                         const spprice = document.querySelector("#allprice")
                         const spdelivery = document.querySelector("#alldelivery")
                         const total = document.querySelector("#total")
                         spprice.innerHTML 
                         spprice.innerHTML = "1234";
                         spprice.innerHTML = String(allprice);
                         spdelivery.innerHTML = String(alldelivery);
                         total.innerHTML = String(allprice + alldelivery);
                    </script>
                </table>
                <div id="item-listbtns">
                    <button>전체상품주문</button>
                    <button>선택상품주문</button>
                </div>
            </div>
            
        </section>
    </div>
    </main>
   
   
    <footer>
      <%@ include file="../frame/main/footer.jsp" %>
    </footer>
  </div>
</body>
</html>