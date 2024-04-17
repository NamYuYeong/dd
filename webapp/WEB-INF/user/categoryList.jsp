<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<style>
	h3{
		padding:40px 0;
		font-weight:bold;
	}
	.prod-list{
		max-width:720px;
		min-width:1280px;
		padding:8px 40px;	   
		margin:0 auto;
	}
</style>
	<div>			
		<%@ include file="u_left.jsp" %>
	</div>
<div class="prod-list">
	<h3>[${categoryName}] 상품</h3>
	<c:if test="${pDtos.size() == 0}">
		<p>상품이 존재하지 않습니다!!</p>
	</c:if>
	<c:if test="${pDtos.size() != 0}">
		<div class="d-flex">
			<c:set var="cnt" value="0"/>
			<c:forEach var="pDto" items="${pDtos}">
				<c:set var="cnt" value="${cnt+1}"/>
					<%@ include file="card.jsp" %>
				<c:if test="${cnt%4==0}">
					</div><div class="d-flex mt-3">
				</c:if>
			</c:forEach>
		</div>		
	</c:if>
</div>

