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
			
				url: "/member/mAjax",
				type: "post",
				data: {"bno":"94"},
				
				success:function(data){
					console.log(data.length);
					var htmlData='';
				    
					for(var i = 0; i <data.length; i++){
						
						var href="/product/product_detail?pno="+data[i].id;
						
						htmlData +=' <a class="a1" href="/product/product_detail?pno=${product.id}"></a>';
						htmlData +='<a class="a2" >'+data[i].name+'</a>'
						htmlData +='<p class="card-product__price">'+data[i].phone+'</p>';
						htmlData +='<p class="card-product__price">'+data[i].gender+'</p>';
						if (data[i].gender == 'male'){
							
						htmlData +='<img src="/upload/jung4.jpg" style="width:150px;" />';
						}
						
						htmlData +='<p>----</p>';
						
						
						
					
					
						
						
					}
					
					$(".test").html(htmlData);
		
					
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
		<c:forEach var="product" items="${list}" end="${endnum }">
			<a class="a1" href="/product/product_detail?pno=${product.id}"></a>
			<a class="a2" >${product.name}</a>
			<p class="card-product__price">${product.phone}</p>
			<p class="card-product__price">${product.gender}</p>
			<c:if test="${product.gender == 'male'}">
				<img src="/upload/jung4.jpg" style="width:150px;" />
			</c:if>
			<p>----</p>


			
			
		</c:forEach>
	</div>
	
	
	
		
	

</body>
</html>