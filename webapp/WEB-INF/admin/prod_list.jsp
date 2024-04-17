<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<jsp:include page="ad_header.jsp"/>
<c:if test="${requestScope.msg !=null}">
	<script>
		alert("${requestScope.msg}");
	</script>
</c:if>  
<style>
	td{vertical-align:middle}
</style> 
<div class="container w-75 mt-5">
	<h3>상품 리스트</h3>
	<table class="table">
		<thead>
			<tr>
				<th>번호</th>					
				<th>카테고리 코드</th>
				<th>이미지</th>
				<th>상품명</th>
				<th>가격</th>
				<th>제조사</th>
				<th>수량</th>
				<th>수정/삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${dtos==null || dtos.size() ==0 }">
				<tr>
					<td>상품이 존재하지 않습니다!!</td>
				</tr>
			</c:if>
			<c:if test="${dtos != null && dtos.size() !=0 }">
				<c:forEach var="dto" items="${dtos}">
				<tr>
					<td>${dto.pnum}</td>
					<td>${dto.pcategory_fk}</td>
					<td>
<%-- 						<img src="<%=request.getContextPath()%>/uploadedFile/${dto.pimage}"
							width="60px"/> 
							<c:url /> 은 context 경로를 자동으로 붙여줌
							--%>
						<img src="<c:url value="/uploadedFile/${dto.pimage}"/>" width="60px"/>
					</td>
					<td>${dto.pname}</td>
					<td>${dto.price}</td>
					<td>${dto.pcompany}</td>
					<td>${dto.pqty}</td>
					<td>
						<a href="prodUpdate.do?pnum=${dto.pnum}" class="btn btn-sm btn-info">수정</a>
						<a href="javascript:prodDel('${dto.pnum}', '${dto.pimage}')" class="btn btn-sm btn-danger">삭제</a>
					</td>
				</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</div>
<script>
	function prodDel(pnum, pimage){
		let isDel = confirm("삭제 하시겠습니까?");
		if(isDel) location.href="prodDelete.do?pnum="+pnum+"&pimage="+pimage;
	}
</script>
<jsp:include page="ad_footer.jsp"/>   


