<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			function ajax_data(){
				alert("공공데이터를 가져옵니다.");
				
				$.ajax({
					url: "/ajax_xml",
					type: "get",
					dataType: "xml",
					data: {"page":"1"},
					success:function(data){
						alert("성공");
						console.log(data);
						
						
						let _xml = $(data).find("items");
						let htmlData = "";
						
						/*  $(data).find("item").each(function(){
							htmlData += "<tr>"; 
							htmlData += "<td>"+$(this).find("galContentId").text() +"</td>"; 
							htmlData += "<td>"+$(this).find("galTitle").text()+"</td>"; 
							htmlData += "<td>"+$(this).find("galPhotographyMonth").text()+"</td>"; 
							htmlData += "<td>"+$(this).find("galPhotographyLocation").text()+"</td>"; 
							htmlData += "<td><img src='"+$(this).find("galWebImageUrl").text()+"'></td>"; 
							htmlData += "</tr>"; 
							
						}) */
						
					 	for(let i = 0 ; i< $(data).find("item").length; i++){
							
							htmlData += "<tr>"; 
							htmlData += "<td>"+_xml.find("item").eq(i).find("galContentId").text() +"</td>"; 
							htmlData += "<td>"+_xml.find("item").eq(i).find("galTitle").text() +"</td>"; 
							htmlData += "<td>"+_xml.find("item").eq(i).find("galPhotographyMonth").text() +"</td>"; 
							htmlData += "<td>"+_xml.find("item").eq(i).find("galPhotographyLocation").text() +"</td>"; 
							htmlData += "<td><img src='"+_xml.find("item").eq(i).find("galWebImageUrl").text() +"'></td>"; 
							htmlData += "</tr>"; 
							
							
						} 					
						
						$("#tbody").html(htmlData);
						
						
						
						
						
						
					
					
					
					
					
					},
					error:function(){
						alert("실패");
					}
					
				});
			}
		
			
		
		</script>
		<style>
			h3{text-align: center;}
			table{width: 1000px; margin: 0 auto; text-align: center;}
			table,th,td {border: 1px solid black; border-collapse: collapse;}
			th,td{width: 200px; height: 60px;}
			img{width: 60px;}
			div{width: 600px; height: 60px; margin: 10px auto;}
			input{width: 200px; height: 30px;}
			button{width: 120px; height: 35px;}
		
		</style>
	</head>
	<body>
		<h2>메인페이지2</h2>
		<p></p>
		<button type="button" onclick="ajax_data()">공공데이터 가져오기</button>
		
		<h3>관광정보2</h3>
		<div>
			<input type="text" name="s_word" id="s_word">
			<button type="button" onclick="search()">검색</button>
			
		</div>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>촬영날짜</th>
				<th>촬영장소</th>
				<th>이미지</th>
			</tr>
			<tbody id="tbody">
				<tr>
					<td colspan="5">데이터를 검색합니다</td>
				</tr>
			
			
			</tbody>
		</table>
		

		
	</body>
</html>