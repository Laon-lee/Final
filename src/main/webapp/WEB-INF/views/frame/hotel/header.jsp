<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav id="nav1">
        <ul>
          <li><a href="${pageContext.request.contextPath}/goshop">shop</a></li>
          <li><h2>Hotel</h2></li>
        </ul>
      </nav>
      <div>
        <h1><a href="${pageContext.request.contextPath}/gomain" id="mainA1">Déng Nuri</a></h1>
      </div>
      <nav id="nav2">
        <ul>
          <li id="nav2-li-1stli">
            <a href="#"><p style="font-size: 16px">Search</p></a>
            <div id="hover-layout1" class="hover-layout1">
                
            </div>
            <div id="nav2-li-1stdiv">
              <div id="nav2-searchdiv">
                <input type="text" placeholder="검색하실 물품을 적어주세요"><button>검색</button>
              </div>
              <h2>아래 품목도 검색해보세요.</h2>              
              <div id="btns">
                <button type="button">사료</button>
                <button type="button">영양제</button>
                <button type="button">산책줄</button>
                <button type="button">집</button>
                <button type="button">의류</button>
                <button type="button">장난감</button>
                <button type="button">사료</button>
                <button type="button">영양제</button>
                <button type="button">산책줄</button>
                <button type="button">집</button>
                <button type="button">의류</button>
                <button type="button">장난감</button>
              </div>
              
            </div>
          </li>
          <li id="nav2-li-2ndli">
            <a href="#">
              <p style="font-size: 16px">Notice</p>
            </a>
            <div id="hover-layout2" class="hover-layout1">
                
            </div>
            <div id="nav2-li-2nddiv">
              <h2>알림받아라 인마</h2>
			  <a href="${pageContext.request.contextPath}/notice/공지사항">알림 페이지이동</a>
            </div>
          </li>
          <li id="nav2-li-3rdli">
            <a href="#">
              <p style="font-size: 16px">Wish</p>
            </a>
            <div id="hover-layout3" class="hover-layout1">
              
            </div>
            <div id="nav2-li-3rddiv">
              <h2>니가 좋아하는거다!</h2>
              <a href="${pageContext.request.contextPath}/basket">
              장바구니 바로가기
              </a>
            </div>
          </li>
          <c:if test="${sessionScope.user != null}">
          <li id="nav2-li-mypage">
            <a href="${pageContext.request.contextPath}/mypage">
              <p style="font-size: 16px;">MyPage</p>
            </a>
          </li>
          </c:if>
          <li id="nav2-li-4thli">
           <c:if test="${sessionScope.user == null}">
            <a href="#"><p style="font-size: 16px">Login</p></a>
            <div id="hover-layout4" class="hover-layout1">
                
            </div>
            <div id="nav2-li-4thdiv">
              <h4>로그인</h4>
              <br>
              <form action="${pageContext.request.contextPath}/login">
                <h6>아이디</h6>
                <input type="text" name="mem_id1" id="mem_id1">
                <h6>비밀번호</h6>
                <input type="password" name="mem_pw1" id="mem_pw1"><br>
                <button>Login</button>
              </form>
              <p style="font-size: 11px; border-bottom:1px solid black; width:130px; margin-top:10px;" >혹시 회원이 아니신가요??</p>
              <a href="${pageContext.request.contextPath}/membership" style="font-size:13px">회원 가입</a>
            </div>
          	</c:if>
          	<c:if test="${sessionScope.user != null}">
          		<a href="${pageContext.request.contextPath}/logout"><p style="font-size: 16px">Logout</p></a>
          	</c:if>
          </li>
        </ul>
      </nav>