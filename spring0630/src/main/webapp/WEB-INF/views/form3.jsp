<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2> 다중 파일업로드 </h2>
		<form action="/doform2" name="frm" method="post" enctype="multipart/form-data">
		
			<label>제목</label>
			<input type="text" name="btitle" >
			<br>
			<label>파일1</label>
			<input multiple="multiple" type="file" name="files" >
			<br>
			
			<input type="submit" name="저장" >
		
		</form>
	</body>
</html>