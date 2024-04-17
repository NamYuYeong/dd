<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> -->
<link rel="stylesheet" href="<c:url value='/css/reset.css'/>">
<style>
nav{
	max-width:720px;
	min-width:1280px;
	width:100%;
	margin:0 auto;
	padding:8px 40px;
	
}
.inner-top{
	display:flex;
	justify-content: flex-end;
}
.inner-top .navbar-right{
	display:flex;
	
}
.inner-top .navbar-right li{
	padding:10px;
	font-size:12px;
}
.navbar-bottom{
	display:flex;
	padding:0 10px;
	justify-content: flex-end;
}
.navbar-bottom li{
	display:flex;
	padding:0 10px;
}
</style>
</head>
<body>
<header>	
<nav class="navbar">
  <div class="container">
	  <div class="inner-top">
	    <ul class="navbar-right">
	    <%--   <c:if test="${sessionScope.id == null}">      
		      <li class="nav-item ms-auto">
		        <a class="nav-link" href="#">고객센터</a>
		      </li>
	      </c:if>
	       <c:if test="${sessionScope.id == null}">      
		      <li class="nav-item ms-auto">
		        <a class="nav-link" href="#">마이페이지</a>
		      </li>
	      </c:if>
	        <c:if test="${sessionScope.id == null}">      
		      <li class="nav-item">
		        <a class="nav-link" href="cartList.do">장바구니</a>
		      </li>
	      </c:if>
	      <c:if test="${sessionScope.id == null}">      
		      <li class="nav-item">
		        <a class="nav-link" 
		        	href="javascript:alert('로그인이 필요합니다!!')">장바구니</a>
		      </li>
	      </c:if>
	       <c:if test="${sessionScope.id == null }">      
		      <li class="nav-item ms-auto">
		        <a class="nav-link" href="#">알림</a>
		      </li>
	      </c:if>
	      <c:if test="${sessionScope.id == null }">      
		      <li class="nav-item ms-auto">
		        <a class="nav-link" href="userLogin.do">로그인</a>
		      </li>
	      </c:if>
	      <c:if test="${sessionScope.id == null }">
		      <li class="nav-item">
		        <a class="nav-link" href="userJoin.do">회원가입</a>
		      </li>
	      </c:if>
	      <c:if test="${sessionScope.id != null }">
		      <li class="nav-item ms-auto" style="color:white; line-height:40px">
		        ${sessionScope.name}님 즐거운 하루되세요!!&nbsp;&nbsp;
		      </li>
	      </c:if>
	      <c:if test="${sessionScope.id != null && sessionScope.mode == 'user'}">      
		      <li class="nav-item">
		        <a class="nav-link" href="userLogout.do">로그아웃</a>
		      </li>
	      </c:if>
	      <c:if test="${sessionScope.id != null && sessionScope.mode == 'admin'}">      
		      <li class="nav-item">
		        <a class="nav-link" style="display:inline-block;" href="adminLogout.do">관리자 로그아웃</a>
		        <a class="nav-link" style="display:inline-block;" href="adminMain.do">관리자 홈</a>
		      </li>
	      </c:if>    
	    </ul> --%>
	    
	           
		      <li class="nav-item ms-auto">
		        <a class="nav-link" href="#">고객센터</a>
		      </li>
	         
		      <li class="nav-item ms-auto">
		        <a class="nav-link" href="#">마이페이지</a>
		      </li>

		        <c:if test="${sessionScope.id != null}">      
		      <li class="nav-item">
		        <a class="nav-link" href="cartList.do">장바구니</a>
		      </li>
	      </c:if>
	      <c:if test="${sessionScope.id == null}">      
		      <li class="nav-item">
		        <a class="nav-link" 
		        	href="javascript:alert('로그인이 필요합니다!!')">장바구니</a>
		      </li>
	      </c:if>
	      
	      	        <c:if test="${sessionScope.id != null}">      
		      <li class="nav-item">
		        <a class="nav-link" href="#">알림</a>
		      </li>
	      </c:if>
	      <c:if test="${sessionScope.id == null}">      
		      <li class="nav-item">
		        <a class="nav-link" 
		        	href="javascript:alert('로그인이 필요합니다!!')">알림</a>
		      </li>
	      </c:if>
		      
	      <c:if test="${sessionScope.id == null }">      
		      <li class="nav-item ms-auto">
		        <a class="nav-link" href="userLogin.do">로그인</a>
		      </li>
	      </c:if>
	      
	      <%-- <c:if test="${sessionScope.id == null }">
		      <li class="nav-item">
		        <a class="nav-link" href="userJoin.do">회원가입</a>
		      </li>
	      </c:if> --%>
	      
	     <%--  <c:if test="${sessionScope.id != null }">
		      <li class="nav-item ms-auto" style="color:white; line-height:40px">
		        ${sessionScope.name}님 즐거운 하루되세요!!&nbsp;&nbsp;
		      </li>
	      </c:if> --%>
	      <c:if test="${sessionScope.id != null && sessionScope.mode == 'user'}">      
		      <li class="nav-item">
		        <a class="nav-link" href="userLogout.do">로그아웃</a>
		      </li>
	      </c:if>
	      <c:if test="${sessionScope.id != null && sessionScope.mode == 'admin'}">      
		      <li class="nav-item">
		        <a class="nav-link" style="display:inline-block;" href="adminLogout.do">관리자 로그아웃</a>
		        <a class="nav-link" style="display:inline-block;" href="adminMain.do">관리자 홈</a>
		      </li>
	      </c:if>    
	    </ul>
	  </div>
  </div>
  
  <div class="inner-bottom">
	  <h1 class="nav-logo">
        <a class="" href="<c:url value='/'/>">
        	<img width='140px' src="<c:url value='images/kreamlogo.png'/>">
        </a>
      </h1>
  	<ul class="navbar-bottom">
  		<c:if test="${sessionScope.id == null }">      
		      <li class="nav-item ms-auto">
		        <a class="nav-link" href="#">HOME</a>
		      </li>
	      </c:if>
	      <c:if test="${sessionScope.id == null }">      
		      <li class="nav-item ms-auto">
		        <a class="nav-link" href="#">STYLE</a>
		      </li>
	      </c:if>
	      <c:if test="${sessionScope.id == null }">      
		      <li class="nav-item ms-auto">
		        <a class="nav-link" href="#">SHOP</a>
		      </li>
	      </c:if>
  	</ul>
  </div>
  
</nav>
</header>