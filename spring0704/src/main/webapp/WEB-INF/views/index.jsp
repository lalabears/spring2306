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
					url: "/ajax_data",
					type: "get",
					dataType: "json",
					data: {"page":"1"},
					success:function(data){
						alert("성공");
						//console.log(data);
						let arr = data.response.body.items.item;
						let htmlData = "";
						
						for(let i in arr){
							htmlData += "<tr>"; 
							htmlData += "<td>"+arr[i].galContentId+"</td>"; 
							htmlData += "<td>"+arr[i].galTitle+"</td>"; 
							htmlData += "<td>"+arr[i].galPhotographyMonth+"</td>"; 
							htmlData += "<td>"+arr[i].galPhotographyLocation+"</td>"; 
							htmlData += "<td><img src='"+arr[i].galWebImageUrl+"'></td>"; 
							htmlData += "</tr>"; 
							
							
							
						}
						
						
						$("#tbody").html(htmlData);
						
						
						
						
						
						
					
					
					
					
					
					},
					error:function(){
						alert("실패");
					}
					
				});
			}
		
			function search(){
				alert($("#s_word").val()+"검색")
				$.ajax({
					url: "/ajax_search",
					type: "get",
					dataType: "json",
					data: {"s_word":$("#s_word").val()},
					success:function(data){
						alert("성공");
						//console.log(data);
						let arr = data.response.body.items.item;
						let htmlData = "";
						
						for(let i in arr){
							htmlData += "<tr>"; 
							htmlData += "<td>"+arr[i].galContentId+"</td>"; 
							htmlData += "<td>"+arr[i].galTitle+"</td>"; 
							htmlData += "<td>"+arr[i].galPhotographyMonth+"</td>"; 
							htmlData += "<td>"+arr[i].galPhotographyLocation+"</td>"; 
							htmlData += "<td><img src='"+arr[i].galWebImageUrl+"'></td>"; 
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
		<h2>메인페이지</h2>
		<p></p>
		<button type="button" onclick="ajax_data()">공공데이터 가져오기</button>
		
		<h3>관광정보</h3>
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