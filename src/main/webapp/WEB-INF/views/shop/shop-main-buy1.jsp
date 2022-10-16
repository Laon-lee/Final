<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
    margin: 0 auto;
    padding: 0 auto;
    box-sizing: border-box;
}

body{
    background-color:#e3d5ca;
}

header {
    width: 90%;
    border-bottom: 3px solid black;
    background-color:#e3d5ca;
}

#head-logo{
    width: 20%;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100px;s
    
}

#head-icon{
    display: flex;
    position: relative;
    width: 25%;
    left: 400px;
    bottom: 45px;

}

nav {
    width: 90%;
    height: 100px;
    padding: 10px 10px;
    margin-top: 10px;
    background-color: #e3d5ca;
}

nav > a {
    margin-left: 15px;
}

#main-box {
    display: flex;
    width: 90%;
    border: 1px solid black;
    height: 500px;
    justify-items: center;
    align-items: center;
}

#main-pic {
    width: 49%;
    height: 450px;
    border: 1px solid black;
}

#main-text {
    width: 49%;
    height: 450px;
    border: 1px solid black;
    padding: 70px 10px;
}
#main-text > h4, p ,button, select {
    margin-left: 9px;
}


#shop-option{
    width: 60%;
    height: 30px;
}

#btn1 {
    height: 30px;
    margin-left: 20px;
}
#btn2, #btn3 {
    width : 45%;
    height: 30px;
    margin-left: 10px;
    background-color: rgb(28, 25, 25);
    color : white;
    border-radius: 3px;
}

#btn4 {
    margin: 10px;
    width: 92.5%;
    height: 30px;
    border: 0px;
    border-radius: 3px;
    background-color: rgb(29, 223, 29);
    color: white;
}

#main-text > h4 {
    margin-top: 20px;
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
 <header>
        <div id="head-logo">
        <h1><a href="#">Déng Nuri</a></h1>
    </div>
        <div id="head-icon">
            <img src="" alt="">ㅇㅇ
            <img src="" alt="">ㅅㅅ
            <img src="" alt="">ㄹㄹ
            <img src="" alt="">ㅁㅁ
        </div>
    </header>

    <nav>
        <a href="#" id="nav-1">홈</a>
        <a href="#" id="nav-2">줄</a>
        <a href="#" id="nav-3">캐리어</a>
        <a href="#" id="nav-4">옷</a>
        <a href="#" id="nav-5">밥</a>
        <a href="#" id="nav-6">목욕</a>
        <a href="#" id="nav-7">장난감</a>
        <a href="#" id="nav-8">큰개</a>
        <a href="#" id="nav-9">밥</a>

    </nav>
    
    <div id="main-box">
        <div id="main-pic">
            <h1>사진 들어오고</h1>
        </div>

        <div id="main-text">
            <h4>제품 이름</h5>
            <p>이 제품은 1955년 영국에서 시작되어서 어쩌고 저쩌고</p>
            <br>
            <p>이 제품은 사실 중국산이다 멍청이들아</p>
            <p>MADE IN KOREA</p>
            <br>
            <select id="shop-option">
                <option value="small">small-size</option>
                <option value="medium">medium-size</option>
                <option value="large">large-size</option>
            </select>
            <button id="btn1">선택</button>
            <br>
            <h4>Total</h4>
            <p>$개</p>
            <br>
            <button id="btn2">BUY NOW</button><button id="btn3">ADD TO CART</button><br>
            <button id="btn4">다른 구매 방법</button>

        </div>
    </div>

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