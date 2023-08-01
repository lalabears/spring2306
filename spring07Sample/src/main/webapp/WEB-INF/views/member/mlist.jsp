<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보를 보여주는 페이지 입니다</title>
		
		<style type="text/css">
			h2{width:1000px; text-align: center;}
			table,th,td{ margin: 0 auto; width: 1000px; border: 1px solid black; border-collapse: collapse; }
			th,td{height:60px ; text-align: center;}
			th{background: #efefef;}
		
		</style>
	</head>
	<body>
	
		<h2>회원 리스트</h2>
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>성별</th>
					<th>취미</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${mlist}">
					<tr>
						<td>${user.id}</td>
						<td>${user.pw}</td>
						<td>${user.name}</td>
						<td>${user.phone}</td>
						<td>${user.gender}</td>
						<td>${user.hobby}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
	</body>
</html>