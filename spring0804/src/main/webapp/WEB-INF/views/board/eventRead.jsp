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
  <link rel="stylesheet" href="/css/read.css">
</head>

<body>
  <%@ include file="../layout/sub_top.jsp" %>
  
  <section>
    <h1>EVENT</h1>

    <table>
      <tr>
        <th>${list.ebtitle }</th>
      </tr>
      <tr>
        <td>${list.ebdate }</td>
      </tr>
      <tr>
        <td class="article">
        ${list.ebcontent }
          <img src="https://www.akbeauty.co.kr/files/attach/temp/2020/202002/ba136933-7d5a-48dd-8339-b20350c9aac0.png" alt="" width="80%">
          <img src="https://www.akbeauty.co.kr/files/attach/temp/2020/202002/2e43bfbb-49e3-45cf-bdd8-0145e611979f.png" alt="" width="80%">
          </td>
      </tr>
      <tr>
        <td><strong>다음글</strong> <span class="separator">|</span> 
        <a href="/board/eventRead?ebno=${next.ebno}&page=${pageDto.page}"> ${next.ebtitle } </a></td>
      </tr>
      <tr>
        <td><strong>이전글</strong> <span class="separator">|</span> 
        <a href="/board/eventRead?ebno=${prev.ebno}&page=${pageDto.page}"> ${prev.ebtitle } </a></td>
      </tr>
    </table>

    <div class="list">목록</div>
    <div class="list">삭제</div>
    <div class="list">수정</div>
  </section>

  <%@ include file="../layout/sub_footer.jsp" %>
 
</body>
</html>