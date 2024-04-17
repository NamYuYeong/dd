<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<style>

</style>
<div class="w-75 ps-5">
	<h3>[${specValue}] 상품</h3>
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
	
	
</div>

