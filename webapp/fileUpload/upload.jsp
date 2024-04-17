<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	http://www.servlets.com/
	COS File Upload Library > cos-22.05.zip 다운로드
-->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 파일업로드시 유의점 : post방식, enctype="multipart/form-data" -->
	<form action="../upload.do" method="post" enctype="multipart/form-data">
		제목: <input type="text" name="title"/><br>
		첨부파일: <input type="file" name="image"/><br>
		<input type="button" value="업로드" onclick="send(this.form)"/>
	</form>
	<script>
		function send(obj){
			let title = obj.title.value.trim();
			let img = obj.image.value.trim();
			
			if(title ==""){
				alert("제목을 입력하세요!!");
				return;
			}
			if(img ==""){
				alert("파일을 첨부하세요!!");
				return;
			}
			obj.submit();
		}
	</script>
</body>
</html>