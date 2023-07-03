<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보</title>
		<style type="text/css">
			h2{width: 900px; text-align: center; margin: 20px auto;}
			table{width: 900px; margin: 30px auto;}
			table, th, td{border: 1px solid black; border-collapse: collapse; }
			th, td{width:150px; height: 40px; text-align: center;}
		</style>
	</head>
	<body>
		<h2>회원 정보</h2>
		<table>
			<tr>
				<td>아이디</td>
				<td>${member.id }</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>${member.pw }</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${member.name }</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>${member.phone }</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>${member.gender }</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>${member.hobby }</td>
			</tr>
				
		</table>
		<button> <a href = "/member/memberList" >회원 목록</a></button>
	</body>
</html>