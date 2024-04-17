<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<%
	String pg= request.getParameter("pg");
	if(pg == null) pg="u_main.jsp";
	
	pageContext.setAttribute("pg",pg);
%>
<style>
	main{
	max-width:720px;
	min-width:1280px;
	margin:0 auto;
	
	}
	.category-snb{
		display:flex;
		
	}
	.main-content .inner{
		display:flex;
		justify-content: center;
	}
</style>
<jsp:include page="u_header.jsp"/>
<%@ include file="u_nav.jsp" %>

	 <c:if test="${pg =='u_main.jsp'}">		
		<div>			
			<%@ include file="slideBanner.jsp" %>
		</div>
		</c:if>
<main>
		<%-- <c:out value="${pg}"/> --%>	
		<%-- <c:if test="${pg !='login.jsp'}">		
		<div>			
			<%@ include file="u_left.jsp" %>
		</div>
		</c:if> --%>
		
		<div class="main-content">
			<div class="inner">
				<jsp:include page="<%=pg%>"/>
			</div>
		</div>
</main>

<jsp:include page="u_footer.jsp"/> 