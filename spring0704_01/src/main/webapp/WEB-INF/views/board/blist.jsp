<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style type="text/css">
			h2, table {width:1000px; margin: 0 auto; text-align: center;}
			table, th, td {height: 40px; border: 1px solid black; border-collapse: collapse; }
			th{background-color: #efefef;}
		</style>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	</head>
	<body>
		 <h2>Board List</h2>
		 <br>
		 <table>
		 	<thead>
		 		<tr>
		 			<th>no</th>
		 			<th>id</th>
		 			<th>title</th>
		 			<th>date</th>
		 		</tr>
		 	</thead>
		 	<tbody id="tbody">
		 		<tr>
		 			<td>1</td>
		 			<td>aaa</td>
		 			<td>첫번째 글입니다</td>
		 			<td>2023-07-05</td>
		 		</tr>
		 	</tbody>
		 </table>
	</body>
</html>