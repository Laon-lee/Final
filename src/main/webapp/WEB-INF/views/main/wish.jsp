<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/footer.css">
    <style>
       *{
          box-sizing: border-box;
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

        #main-container {
            height:80vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        #artcontainer{
            display: flex;
            flex-direction: column;
            
            width:50vw;
        }
       
        #sec2 {
            width:85%;
            margin: 40px;
            display: flex;
            flex-direction: row;
            
        }

        #sec2 nav {
            flex: 1;
            padding: 0 30px 0 0;
            border-right: 1px solid black;
        }

        #sec2 nav li {
            margin: 0 0 10px 0;
            font-size: 20px;
            ;
            list-style-type: none;
            display: block;
        }
        #sec2-div1{
            
        }
        #sec2-div1 ul {
            width: 100%;
            background-color: #f5ebe0;
            font-size: 20px;
        }
        #sec2-div1 li {
            padding:10px
        }
        .selected{
            background-color: black;
            color:white;
        }
        #art2 {
            flex:5;
            width:70vw;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #sec2-div2{
            
        
        }
        #sec2-div2 li {
            display: block;
            font-size: 13px;
        }
        #sec2-div2-sel{
            padding:10px;
            height: 25px;
            border:5px solid white;
        }
        #sec2-div3{
            margin-top:20px;
        }
        #sec2-div3-table1{
            border-collapse: collapse;
            width:100%;
        }
        #sec2-div3-table1 td{
            text-align: center;
            border:1px solid black;
        }
        #sec2-div3-table2{
            border-collapse: collapse;
            
        }
        #sec2-div3-table2 td{
            text-align: center;
            
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
           <%@ include file="../frame/mypage/header.jsp" %>
        </header>
		 
        <main>
         <div class="category-menu">
            <li><a href="${pageContext.request.contextPath}/shop/list/home"><img src="${pageContext.request.contextPath}/image/shop/Home.png" alt=""><br>Home</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/Walk"><img src="${pageContext.request.contextPath}/image/shop/Walk.png" alt=""><br>Walk</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/Carrier"><img src="${pageContext.request.contextPath}/image/shop/Carrier.png" alt=""><br>Carrier</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/Clothes"><img src="${pageContext.request.contextPath}/image/shop/Clothes.png" alt=""><br>Clothes</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/Dining"><img src="${pageContext.request.contextPath}/image/shop/Dining.png" alt=""><br>Dining</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/Grooming"><img src="${pageContext.request.contextPath}/image/shop/Grooming.png" alt=""><br>Grooming</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/toy"><img src="${pageContext.request.contextPath}/image/shop/Toy.png" alt=""><br>Toy</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/Big dog"><img src="${pageContext.request.contextPath}/image/shop/Big Dog.png" alt=""><br>Big Dog</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/list/Food"><img src="${pageContext.request.contextPath}/image/shop/Food.png" alt=""><br>Food</a></li>
        </div>
            <div id="main-container">
                
                <section id="sec2">
                    <nav>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/mypage" >주문내역조회</a></li>
                            <li><a href="${pageContext.request.contextPath}/userinfo">회원정보</a></li>
                            <li><a href="${pageContext.request.contextPath}/wish"  style="text-decoration: underline">장바구니</a></li>
                            <li><a href="${pageContext.request.contextPath}/usequestion">자주찾는질문</a></li>
                            <li><a href="${pageContext.request.contextPath}/question">문의하기</a></li>
                            <li><a href="${pageContext.request.contextPath}/coupon">쿠폰</a></li>
                        </ul>
                    </nav>
                 <article id="art2">
            <div id="item-list">
            <div class="user-info">
            회원정보
            </div>
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
            
                      
                          
                    </article>
                </div>
        </main>


        <footer>
            <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>
</body>

</html>