<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.d-flex{
		display:flex;
		height:400px;
	}
	.card{
	position:relative;
	padding:10px;
	}
	.card-body{
		font-size:13px;
	}
	.card a> img{
	 background-color:#f1f1f1;
	 border-radius:8px;
	 width:233.61px;
	}
	.card-body h5, .card-price{
	font-weight:bold;
	padding-top:10px;
	}
	.card-body >p{
		padding-top:4px;
	}
	.card-price span{
		font-size:11px;
		color:#ccc;
		padding-top:4px;
		font-weight:normal;
	}
	.card-price{
		font-size:14px;
		display:flex;
		flex-direction: column;
	}
	.cartplus-btn{
		border:1px solid #41b979;
		border-radius:4px;
		padding:8px;
		font-size:13px;
		color:#41b979;
	}
	.cartPlus{
		padding-top:8px;
	}
</style>
<!-- Card -->
<div class="card">
  <a href="prodView.do?pnum=${pDto.pnum}&pSpec=${pDto.pspec}" style="overflow:hidden"> 	
  	<img class="card-img-top" 
  		src="<c:url value="/uploadedFile/${pDto.pimage}"/>" 
  		alt="Card image">
  </a>	
  <div class="card-body">
   	<h5 class="card-brand">${pDto.pcompany}</h5><!-- 브랜드명 : --> 
    <p class="card-title">${pDto.pname}</p><!-- 상품명 : --> 
    <p class="card-price"><fmt:formatNumber value="${pDto.price}"/>원 <span>즉시 구매가</span></p><!-- 가격 :  -->
  <%--   <p class="card-text"><!-- 포인트 :  --><fmt:formatNumber value="${pDto.point}"/></p> --%>
  </div>
  <br>
  <div class="cartPlus">
   <!-- 로그인 되었을 경우 -->
    <c:if test="${sessionScope.id != null}">
    	<a href="cartAdd.do?pnum=${pDto.pnum}&pqty=1&pspec=${pDto.pspec}" class="cartplus-btn btn-primary">장바구니 담기</a>
    </c:if>
    <!-- 로그인 안되었을 경우 -->
    <c:if test="${sessionScope.id == null}">
    	<a href="javascript:alert('로그인이 필요합니다')" 
    		class="cartplus-btn btn-primary">장바구니 담기</a>
    </c:if>
  </div>
</div>
<!-- Card End-->