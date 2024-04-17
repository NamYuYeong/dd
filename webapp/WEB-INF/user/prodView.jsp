<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<style>
 .prodview-container ul{
 	display:flex;
 	padding:50px;
 }
  .prodview-container ul li{
  }
 .prodImg img{
 	width:480px;
 	border-radius:20px;
 }
 .prodInfo{

    padding:40px 20px;
    }
    .cartplus-btn{
		border:1px solid #41b979;
		border-radius:4px;
		padding:8px;
		font-size:13px;
		color:#41b979;
	}
	.btn-go{
		border:1px solid red;
		border-radius:4px;
		padding:8px;
		font-size:13px;
		color:red;
	}
	.prod-price{
	display:flex;
	flex-direction: column;
	font-size:27px;
	font-weight:bold;
	padding-bottom:20px;
	}
	.prod-price span{
	font-weight:normal;
	font-size:13px;
	}
	.prod-content{
	font-size:13px;
	color:#9a9a9a;
	padding:8px 0; 
	}

</style>
<div class="prodview-container">
	<div class= "inner">
	<%-- <h3>상품정보[${requestScope.specValue}]</h3> --%>
		<ul class="d-flex" style="list-style:none">
			<!-- 상품이미지 -->
			<li class="prodImg">
				<img  src="<c:url value="/uploadedFile/${pDto.pimage}"/>"/>
			</li>
			<!-- 상품 상세내용 -->
			<li class="prodInfo">
				<form name="prodForm" method="post">
				<div style="">
					<%-- <p>${pDto.pnum} </p><!-- 상품번호 :  --> --%>
					<p class="prod-price"><span>즉시 구매가</span><fmt:formatNumber value="${pDto.price}"/></p><!-- 상품가격 :  -->
					<p>${pDto.pname} </p><!-- 상품이름 :  -->
					<p class="prod-content">${pDto.pcontent}<!-- <b>[상품 소개]</b> -->
					<%-- <p>	상품포인트 : <fmt:formatNumber value="${pDto.point}"/> </p>	 --%>
					<!-- <p>상품수량 : <input type="text" name="pqty" size=3 value="1"/>개 --></p>
				</div>
					<br>
				<div class="btnbox">
					<!-- 로그인 되었을 경우 -->
					<c:if test="${sessionScope.id != null}">
				    	<a href="javascript:goCart(${pDto.pnum})" 
				    		class="cartplus-btn">장바구니 담기</a>
				    </c:if>
				    <!-- 로그인 안되었을 경우 -->
				    <c:if test="${sessionScope.id == null}">
				    	<a href="javascript:alert('로그인이 필요합니다')" 
				    		class="cartplus-btn">장바구니 담기</a>
				    </c:if>
					
					<a href="<c:url value="/"/>" 
						class="btn-go">계속 쇼핑하기</a>
				</form>
				</div>
			</li>
		</ul>
	</div>
</div>
<script>
	function goCart(pnum){
		document.prodForm.action="cartAdd.do?pnum="+pnum;
		document.prodForm.submit();
	}
</script>

