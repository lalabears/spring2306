<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>CheckPage</title>
	</head>
	<body>
		<script type="text/javascript">
				
			if(${l_Result}==1){
				alert("로그인 되었습니다.");
				location.href = "index";
			} else if(${l_Result}==0){
				alert("아이디 또는 패스워드가 일치하지 않습니다.")
				location.href = "login";
				
			}
			
			
		
		
		
		</script>
	</body>
</html>