<%@page import="util.ProdSpec"%>
<%@page import="model.CategoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.sub-nav.uCategory{
		width:100%;
		border-bottom:1px solid #eaeaea;
		
	}
	.tab_menu{
		max-width:720px;
		min-width:1280px;
		width:100%;
		margin:0 auto;
		padding:8px 40px;
		
	}
	.uCatelist{
		padding-bottom:10px;
		
	}
	.sub-nav ul{
	display:flex;
	flex-direction: row-reverse;
    justify-content: flex-end;
	}
	.sub-nav ul .categoryBtn a{
		padding:left:10px;
	}
</style>
<div class="sub-nav uCategory">	
	<!-- <h4>카테고리</h4> -->
	<div class="tab_menu">
	<ul class="uCatelist">
	<%
		CategoryDAO cDao = CategoryDAO.getInstance();
		ArrayList<CategoryDTO> cDtos= cDao.categoryList();
		
		if(cDtos.size() !=0){
			System.out.println(cDtos.size());
			
			for(CategoryDTO cDto:cDtos){
				String categoryName = cDto.getCatName();
				String code = cDto.getCode();
				
				pageContext.setAttribute("code", code);
				pageContext.setAttribute("categoryName", categoryName);
			%>			
			<li class="categoryBtn"><a style="padding:5px" href="categoryList.do?code=${code}&categoryName=${categoryName}">${categoryName}</a></li>	
			<%}
			
		}else{
			out.print("<li>카테고리 없음</li>");
		}
		
		out.print("</ul><ul class='mt-3'>");
		ProdSpec[] pdSpecs = ProdSpec.values();
		
		for(ProdSpec ps : pdSpecs){
			pageContext.setAttribute("ps", ps);
	%>
	<%} // end of for %>	
	</ul>
	</div>
</div>


<!-- <script>
addEventListener("click", (event) => {});

onclick = (event) => {};
</script> -->