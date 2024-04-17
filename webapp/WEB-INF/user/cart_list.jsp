<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<style>
.cartlist-container{

	max-width:720px;
	min-width:1280px;   
	margin:0 auto;
	}
	.cartlist-container>div{
		padding:20px;
	}
	.listbox{
		padding: 0 20px 20px;
		display:flex;
		
	}
	.listbox>div{
		width:17%;
		display:flex;
		flex-direction: column;
		justify-content: center;
		
	}
	.update-box{
	display:flex;
	}
	.btn-box{
	
	width:100%;
	}
	.del-box{
	 text-align: right;
	}
	.del-btn{
		background:none;
		border:none;
		text-decoration-line: underline;

		
	}
	.buy-btn{
		width: 100%;
	    background-color: red;
	    text-align: center;
	    padding: 20px 0;
	    color: #fff;
	    border-radius: 8px;
}
.text-end p{
 text-align: right;
}

	.btn-go{
	width:300px;
		border:1px solid red;
		border-radius:4px;
		padding:8px;
		font-size:13px;
		color:red;
	}
	.buy-btn02 {
	width:300px;
		border:1px solid #41b979;
		border-radius:4px;
		padding:8px;
		font-size:13px;
		color:#41b979;
	}

</style>
<div class="cartlist-container">
	<h3>장바구니 리스트</h3>
	<%-- <table class="table">
		<thead>
			<tr>
				<th>상품이미지</th>
				<th>상품명</th>
				<th>수량</th>
				<th>판매가</th>
				<th>합계</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${dtos.size() == 0}">
				<tr>
					<td colspan="6">장바구니가 비었습니다!!</td>
				</tr>
			</c:if>
			<c:if test="${dtos.size() != 0}">
				<c:set var="cartTotPrice" value="0"/>
				<c:set var="cartTotPoint" value="0"/>
				
				<c:forEach var="dto" items="${dtos}">
					<tr>
						<td>
							<a href="prodView.do?pnum=${dto.pnum}&pSpec=${dto.pspec}">
							<img src="<c:url value="/uploadedFile/${dto.pimage}"/>"
								width="60px" />
							</a>	
						</td>
						<td>${dto.pname}</td>
						<td>
							<form action="cartModify.do" method="post">
								<input type="hidden" name="cartNum" 
									value="${dto.cartNum}"/>
								<input type="text" size="3" name="pqty"
									value="${dto.pqty}"/>개<br/>
								<input type="submit" value="수정"
									class="btn btn-sm btn-secondary mt-3"/>	
							</form>
						</td>
						<td><fmt:formatNumber value="${dto.price}"/>원<br/>
						    <fmt:formatNumber value="${dto.point}"/>포인트
						</td>
						<td>
							<fmt:formatNumber value="${dto.totPrice}"/>원<br/>
							<fmt:formatNumber value="${dto.totPoint}"/>포인트
						</td>
						<td>
							<form action="cartDelete.do" method="post">
								<input type="hidden" name="cartNum" 
									value="${dto.cartNum}"/>								
								<input type="submit" value="삭제"
									class="btn btn-sm btn-danger"/>	
							</form>
							<!-- <a href="#" class="btn btn-sm btn-danger">삭제</a> -->
						</td>						
						
<c:set var="cartTotPrice" value="${cartTotPrice + dto.totPrice}"/>
<c:set var="cartTotPoint" value="${cartTotPoint + dto.totPoint}"/>						
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table> --%>
	
	<div>
			<c:if test="${dtos.size() == 0}">
				<div>
					<td colspan="6">장바구니가 비었습니다!!</td>
				</div>
			</c:if>
			<c:if test="${dtos.size() != 0}">
				<c:set var="cartTotPrice" value="0"/>
				<c:set var="cartTotPoint" value="0"/>
				
				<c:forEach var="dto" items="${dtos}">
					<div class="listbox">
						<div>
							<a href="prodView.do?pnum=${dto.pnum}&pSpec=${dto.pspec}">
							<img src="<c:url value="/uploadedFile/${dto.pimage}"/>"
								width="80px" />
							</a>	
						</div>
						<div>${dto.pname}</div>
						<div class="update-box">
							<form action="cartModify.do" method="post">
								<input type="hidden" name="cartNum" 
									value="${dto.cartNum}"/>
								<div>
								<input type="text" size="3" name="pqty"value="${dto.pqty}"/>개
								<input type="submit" value="수정" class="btn btn-sm btn-secondary mt-3"/>	
								</div>
							</form>
						</div>
						<div><fmt:formatNumber value="${dto.price}"/>원<br/>
						    <fmt:formatNumber value="${dto.point}"/>포인트
						</div>
						<div>
							<fmt:formatNumber value="${dto.totPrice}"/>원<br/>
							<fmt:formatNumber value="${dto.totPoint}"/>포인트
						</div>

						<div class="btn-box">
							<c:if test="${dtos.size() != 0}">
								<a href="checkout.do" class="buy-btn">구매하기</a>
									<form class="del-box" action="cartDelete.do" method="post">
									<input type="hidden" name="cartNum" 
										value="${dto.cartNum}"/>								
									<input type="submit" value="삭제하기"
										class="del-btn"/>	
								</form>
							</c:if>
								<!-- <a href="#" class="btn btn-sm btn-danger">삭제</a> -->
						</div>						
						
					<c:set var="cartTotPrice" value="${cartTotPrice + dto.totPrice}"/>
					<c:set var="cartTotPoint" value="${cartTotPoint + dto.totPoint}"/>						
					</div>
				</c:forEach>
			</c:if>
		</div>
	<!-- 장바구니 총액 표시 -->
	<div class="text-end">
		<p>장바구니 총액 : <fmt:formatNumber value="${cartTotPrice}"/> 원 </p>
		<p>총 포인트 : <fmt:formatNumber value="${cartTotPoint}"/> 포인트  </p>
	</div>
	<div class="text-center">
		<c:if test="${dtos.size() != 0}">
			<a href="checkout.do" class="buy-btn02">구매하기</a>
		</c:if>
		<a href="<c:url value="/"/>" 
			class="btn-go">계속 쇼핑하기</a>
	</div>
</div>



