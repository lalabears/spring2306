<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>INDEX 페이지 입니다</title>



<style type="text/css">
a{color:black;}
</style>
</head>
<body>
	<div style="font-size: 20px;">
		<div><a href="/member/login" style="color:red;">로그인</a></div>
		<div><a href="/member/join">회원가입</a></div>
		<div><a href="/member/mlist">회원리스트</a>	</div>
		<div><a href="/daumMap">지도</a></div>
	</div>
	
		<h2>게시글 등록</h2>
		<form action="/doform2" name="frm" method="post" enctype="multipart/form-data">
		
		<label>제목</label>
		<input type="text" name="btitle" >
		<br>
		<label>파일1</label>
		<input type="file">
		<br>
		<label>파일2</label>
		<input type="file" name="files" >
		<br>
		
		<input type="file" name="file" id="file" style="display:vi"/>
		<br>

		<input type="submit" name="저장" >
		
		</form>

</body>
</html>