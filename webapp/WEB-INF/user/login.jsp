<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<style>
	.login.wrap{

	
	}
	.login-inner{
    	padding: 60px 0;
    	display: flex;
    	flex-direction: column;
    	align-items: center;
	}
	form{
		padding:50px 0;
		width: 400px;
	}
	form div{
		display:flex;
		flex-direction: column;
		justify-content: space-between;
		padding-bottom:10px;
	}
	form div> div input{
		margin-top:10px;
		padding:8px 30px 8px 0;
		border:none;
		border-bottom:2px solid #eaeaea;
	}
	.text-danger{
		font-size:12px;
		padding-top:4px;
		color:red;
	}
	.btn-box{
		border:1px solid #ccc; 
		padding:16px; 
		margin-top:16px; 
		text-align:center;
		border-radius:4px;
		cursor: pointer;
		font-size:16px;
	}
	lable{
	font-size:13px;
	}
</style>

<c:if test="${requestScope.msg !=null}" >
	<script>
		alert("${requestScope.msg}");
	</script>
</c:if> 
    
<div class="login wrap">
	<div class="login-inner">
	<img width="290px" src="<c:url value='images/login_title.png'/>">
	<!-- <h3>로그인</h3> -->
	<form action="userLoginOk.do" method="post">
      <div>
	      <div>
	         <lable for="id">아이디</lable>
	         <input type="text" class="form-control" id="id" 
	         	placeholder="id" name="id"
	         	value="<c:if test="${sessionScope.loginId !=null}">${sessionScope.loginId}</c:if>"/>
	         <c:if test="${loginErr == 'idErr'}">	
		    	<p class="text-danger">아이디를 입력하세요</p>
		    </c:if>	
	      </div>
	      <div>
	         <lable for="pwd">비밀번호</lable>
	         <input type="password" class="form-control" id="pwd" 
	         	placeholder="pw" name="pwd"/>
	         <c:if test="${loginErr == 'pwdErr'}">	
		    	<p class="text-danger">비밀번호를 확인하세요</p>
		    </c:if>	
	      </div>
      </div>
      
      <div class="">
         <input style="" type="submit" class="btn-login btn-box" value="로그인"/>
         <!-- <input type="button" class="btn btn-sm btn-primary" value="회원가입" /> -->
         <a href="userJoin.do" class="btn-join btn-box">회원가입</a>
      </div>
   </form>
</div> 
</div>