<%@page import="model.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.ProdSpec"%>
<%@page import="model.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />   
<style>
.main-prodlist{
	max-width:720px;
	min-width:1280px;
	padding:8px 40px;	   
	margin:0 auto;
/* 	display: flex;
    justify-content: center; */
}
}

h4{
	padding:40px 0;
	font-weight:bold;
}


</style>

<c:if test="${requestScope.msg !=null}">
	<script>
		alert("${requestScope.msg}");
	</script>
</c:if>
<!-- 컨텐츠 -->

<div class="main-prodlist">

<%
	ProductDAO pDao = ProductDAO.getInstance();
	ArrayList<ProductDTO> pDtos = null;
	
	ProdSpec[] pdSpecs = ProdSpec.values();
	
	for(ProdSpec ps : pdSpecs){
		// HIT, NEW, RECOMMEND
		String spec = ps.name();
		
		// 각 스펙별 상품 리스트
		pDtos = pDao.getProdBySpec(spec);		
		System.out.println(pDtos.size());
		
		pageContext.setAttribute("ps", ps);
		pageContext.setAttribute("pDtos", pDtos);
%>
	<c:if test="${pDtos.size() == 0}">
		${ps.getValue()}상품이 없습니다!!	
	</c:if>	
	<c:if test="${pDtos.size() != 0}">
		<h4 class="mt-3">${ps.getValue()} 상품</h4>
		<div class="d-flex">
			<c:set var="cnt" value="0"/>
			<c:forEach var="pDto" items="${pDtos}">
				<c:set var="cnt" value="${cnt+1}"/>
					<%@ include file="card.jsp" %>
				<c:if test="${cnt%4==0}">
		</div>
				<div class="d-flex mt-3">
					</c:if>
				</c:forEach>
				</div>		
	</c:if>
<% } // end of for문 %>	
</div>


