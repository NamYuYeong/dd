<%@page import="util.ProdSpec"%>
<%@page import="model.CategoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
 aside{
 	font-size:14px;
 	padding-top:40px;
 }
 aside h4{
 	font-weight:bold;
 }
</style>
<aside class="" style="width:200px; ">	
	<h4>카테고리</h4>
	<ul>
	<%
		CategoryDAO cgDao = CategoryDAO.getInstance();
		ArrayList<CategoryDTO> cDtoss= cgDao.categoryList();
		
		if(cDtoss.size() !=0){
			System.out.println(cDtoss.size());
			
			for(CategoryDTO cDto:cDtoss){
				String categoryName = cDto.getCatName();
				String code = cDto.getCode();
				
				pageContext.setAttribute("code", code);
				pageContext.setAttribute("categoryName", categoryName);
			%>			
			<li style="padding-top:10px; font-size:13px"><a href="categoryList.do?code=${code}&categoryName=${categoryName}">${categoryName}</a></li>	
			<%}
			
		}else{
			out.print("<li>카테고리 없음</li>");
		}
		
		out.print("</ul><ul class='mt-3'>");
		ProdSpec[] pdSpecss = ProdSpec.values();
		
		for(ProdSpec pss : pdSpecss){
			pageContext.setAttribute("ps", pss);
	%>
	<br>
		<li>
			<a href="specList.do?pSpec=${ps.name()}">${ps.value} 상품</a>
		</li>
	<%} // end of for %>	
	</ul>
</aside>