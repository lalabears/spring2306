<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>INDEX 페이지 입니다</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	function callBtn(){
		
		$.ajax({
			
				url: "/member/upAjax",
				type: "post",
				data: {"bno":"94","name":"홍길동"},
				
				success:function(data){
					console.log(data);
				
					
					
					var htmlData = '';
					
					htmlData += ' <div class="btnAreaList">  <div class="allPageMoving1">    ';
					if (data.page != 1) {
						htmlData += '<a href= "/product/product_page?page=1&s_word=${s_word}$sorting=${sorting}$pcolor=${pcolor}">';
						htmlData += '<img src="../img/btn/btn_pre2.gif" alt="처음으로" /></a> ';
					}
					if(data.page == 1){
						htmlData += '<img src="../img/btn/btn_pre2.gif" alt="처음으로" />';
					}
					if(data.page>1){
						htmlData += '<a href="/product/product_page?page=${page-1}&s_word=${s_word}$sorting=${sorting}$pcolor=${pcolor}">';
						htmlData += '<img src="../img/btn/btn_pre1.gif" alt="앞페이지로" /></a>';
					}
					if(data.page==1){
						htmlData += ' <img src="../img/btn/btn_pre1.gif" alt="앞페이지로" />';
					}
					for(i = data.startPage; i< data.endPage; i++){
						if(i != data.page){
							htmlData += '<a href="/product/product_page?page=${num}&s_word=${s_word}$sorting=${sorting}$pcolor=${pcolor}">';
							htmlData +=	'<li class="num"><div class="number-box">';
							htmlData +=	i ; 
							htmlData +=	'</div></li></a>';
						}
						if(i == data.page){
							htmlData +=	'<li class="num on"><div class="number-box">';
							htmlData +=	i ; 
							htmlData +=	'</div></li>';
						}
					}
					if (data.page < data.maxPage) {
						htmlData += '<a href="/product/product_page?page=${page+1}&s_word=${s_word}$sorting=${sorting}$pcolor=${pcolor}">';
						htmlData += '<img src="../img/btn/btn_next1.gif" alt="뒤페이지로" /> </a> ';
					}
					if (data.page == data.maxPage) {
						htmlData += '<img src="../img/btn/btn_next1.gif" alt="뒤페이지로" />';
					}
					if (data.page != data.maxPage) {
						htmlData += '<a href="/product/product_page?page=${maxPage}&s_word=${s_word}$sorting=${sorting}$pcolor=${pcolor}">';
						htmlData += '<img src="../img/btn/btn_next2.gif" alt="마지막페이지로" /> </a>';
					}
					if (data.page == data.maxPage) {
						htmlData += '<img src="../img/btn/btn_next2.gif" alt="마지막페이지로" />';
					}
					
					
					$(".test").html(htmlData)
					
					
					
				},error:function(){
					alert("실패");
				}
			
			
		});
	}


</script>

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
	
	
	<button type="button" onclick="callBtn()"> callBtn</button>
	<div class="test">

	</div>
	
	<form action="/doform2" name="frm" method="post" enctype="multipart/form-data">
		
		<label>제목</label>
		<input type="text" name="btitle" >
		<br>
		<label>파일1</label>
		<input type="file">
		<br>
		<label>파일2</label>
		<input type="file" name="files" value="aaa.jpg">
		<br>
		
		<input type="file" name="file" id="file" style="display:vi"/>
		<br>

		<input type="submit" name="저장" >
		
		</form>
	
	
	
		
	

</body>
</html>