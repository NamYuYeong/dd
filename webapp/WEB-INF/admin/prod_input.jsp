<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="ad_header.jsp"/>      
<div class="container w-50 mt-5">
   <h3>상품 등록</h3>
   <form action="prodRegisterOk.do" method="post" enctype="multipart/form-data">
      <table class="table table-borderless">
         <tbody>
            <tr>
               <td>카테고리</td>
               <td>
                  <select class="form-select form-select-sm" name="pcategory_fk"> 
                  	   <c:if test="${list == null || list.size() == 0}">                       
                        		<option value="">카테고리 없음</option>
                        </c:if>
                        <c:if test="${list != null || list.size() != 0}">
                         	<c:forEach var="dto" items="${list}">
                         		<option value="${dto.code}">${dto.catName}[${dto.code}]</option>
                          </c:forEach>   
                        </c:if>
                  </select>
               </td>
            </tr>
            <tr>
               <td>상품명</td>
               <td><input type="text" class="form-control form-control-sm" name="pname"/></td>
            </tr>
            <tr>
               <td>제조회사</td>
               <td><input type="text" class="form-control form-control-sm" name="pcompany"/></td>
            </tr>
            <tr>
               <td>상품이미지</td>
               <td><input type="file" class="form-control form-control-sm" name="pimage"/></td>
            </tr>
            <tr>
               <td>상품수량</td>
               <td><input type="text" class="form-control form-control-sm" name="pqty"/></td>
            </tr>
            <tr>
               <td>상품가격</td>
               <td><input type="text" class="form-control form-control-sm" name="price"/></td>
            </tr>
            <tr>
               <td>상품사양</td>
               <td>
                  <select class="form-select form-select-sm" name="pspec">
                     <option value="none" selected>일반</option>
<!--                      <option value="RECOMMEND">추천</option>                        
                     <option value="NEW">신규</option>                        
                     <option value="HIT">인기</option>-->
                     <c:forEach var="spec" items="${requestScope.pdSpecs}">
                     						  <!-- ${spec.getValue()} 아래와 동일-->
                     	<option value="${spec.name()}">${spec.value}</option>
                     </c:forEach>                        
                  </select>
               </td>
            </tr>
            <tr>
               <td>상품소개</td>
               <td>
                  <textarea class="form-control" name="pcontent" rows="3"></textarea>
               </td>
            </tr>
            <tr>
               <td>상품포인트</td>
               <td><input type="text" class="form-control form-control-sm" name="point"/></td>
            </tr>
            <tr>
               <td colspan="2" class="text-center">
                  <input type="submit" class="btn btn-sm btn-primary" value="상품등록"/>   
                  <input type="reset" class="btn btn-sm btn-secondary" value="취소"/>   
               </td>
            </tr>
         </tbody>         
      </table>   
   </form>
</div> 
<jsp:include page="ad_footer.jsp"/> 