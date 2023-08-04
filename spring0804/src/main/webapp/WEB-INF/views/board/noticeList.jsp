<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/notice_list.css">
</head>
<body>
  <%@ include file="../layout/sub_top.jsp" %>

  <section>
    <h1>NOTICE</h1>
    <div class="wrapper">
      <form action="/search" name="search" method="post">
        <select name="category" id="category">
          <option value="0">전체</option>
          <option value="title">제목</option>
          <option value="content">내용</option>
        </select>

        <div class="title">
          <input type="text" size="16">
        </div>
  
        <button type="submit"><i class="fas fa-search"></i></button>
      </form>
    </div>

    <table>
      <colgroup>
        <col width="10%">
        <col width="50%">
        <col width="20%">
        <col width="10%">
      </colgroup>
      <tr>
        <th>No.</th>
        <th>제목</th>
        <th>작성일</th>
        <th>조회수</th>
      </tr>

      
      <c:forEach var = "board" items="${list }" >
	      <tr>
	        <td>${board.nbno }</td>
	        <td class="table-title">
	        	<a href="noticeRead?nbno=${board.nbno}&page=${page}"> ${board.nbtitle} </a> 
	        </td>
	        <td>
	        <fmt:formatDate pattern = "yyyy-MM-dd" value="${board.nbdate}"/>       
	        </td>
	        <td>${board.nbhit}</td>
	      </tr>
      </c:forEach>
      
    </table>

 	<ul class="page-num">
      <!-- 첫페이지 이동 -->
      <c:if test="${page != 1 }">
	      <a href="/board/noticeList?page=1"><li class="first"></li></a>
      </c:if>
      <c:if test="${page == 1 }">
	      <li class="first"></li>
      </c:if>
      <!-- 이전페이지 이동 -->
      <c:if test="${page>1}">
      <a href="/board/noticeList?page=${page-1}"><li class="prev"></li></a>
      </c:if>
      <c:if test="${page==1}">
         <li class="prev"></li>
      </c:if>
      
      <!-- 페이지리스트 -->
      <c:forEach begin="${startPage}" end="${endPage}" step="1" var="num">
        <c:if test="${num != page }">
	        <a href="/board/noticeList?page=${num}">
	           <li class="num"><div>${num}</div></li>
	        </a>
        </c:if>
        <c:if test="${num == page }">
            <li class="num on"><div>${num}</div></li>
        </c:if>
      </c:forEach>
      
      
      <!-- 다음페이지 이동 -->
      <c:if test="${page<maxPage}">
        <a href="/board/noticeList?page=${page+1}"><li class="next"></li></a>
      </c:if>
      <c:if test="${page==maxPage }">
        <li class="next"></li>
      </c:if>
      <!-- 끝페이지 이동 -->
      <c:if test="${page != maxPage }">
	      <a href="/board/noticeList?page=${maxPage}">
	        <li class="last"></li>
	      </a>
      </c:if>
      <c:if test="${page == maxPage }">
	      <li class="last"></li>
      </c:if>
    </ul>



    <a href="/board/write"><div class="write">쓰기</div></a>
    
  </section>
<%@ include file="../layout/sub_footer.jsp" %>
</body>
</html>