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
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script type="text/javascript">
  
   function replyBtn(){
	   $("#test").toggle();	
   }
   function deleteBtn(){
	   //alert("정말 삭제하시겠습니까? ");
	   if(confirm("게시글을 삭제하시겠습니까?")){
 		  location.href="noticeDelete?nbno=${nbdto.nbno}";
 	  }
   }
   function updateBtn(){
	   location.href="update?nbno=${nbdto.nbno}";
   }
   
   function ansBtn(){
	   
	   alert("관리자 답변 - insert")
	   //alert($("#ccontent").val())
	   
	   
	   $.ajax({
			url:"/board/admincommentinsert",
			type:"post",
			data:{"id":"${sessionId}",
				"nbno": ${nbdto.nbno},
				"ccontent": $("#ccontent").val()
				},
			success:function(data){
				location.reload(true);
				
			},
			error:function(){
				alert("실패");
				
			}
		});
	   
   }
  
   function ansUpBtn(){
	   alert("관리자 답변 수정 - update ");
	   $.ajax({
			url:"/board/admincommentupdate",
			type:"post",
			data:{"nbno":${nbdto.nbno}, 
				"ccontent": $("#ccontent").val()},
			success:function(data){
				alert("댓글 수정 성공");
				location.reload(true);
				
			},
			error:function(){
				alert("실패");
				
			}
		});
	   
	   
   }
  
   function ansDelBtn(){
	   alert("관리자 답변 삭제 -delete ");
	   alert(${cdto.cno})
	   $.ajax({
			url:"/board/admincommentdelete",
			type:"post",
			data:{"nbno":${nbdto.nbno}},
			success:function(data){
				alert("댓글 삭제 성공");
				location.reload(true);
				
			},
			error:function(){
				alert("실패");
				
			}
		});
	  
   }
  
  
  </script>
  
</head>

<body>
  <%@ include file="../layout/sub_top.jsp" %>

  <section>
    <h1>NOTICE</h1> 

    <table>
      <tr>
        <th>${nbdto.nbtitle}</th>
      </tr>
      <tr>
        <td>${nbdto.nid} | <fmt:formatDate pattern = "yyyy-MM-dd" value="${nbdto.nbdate}" /></td>
      </tr>
      <tr>
       
      </tr>
      <tr>
        <td> 
        	${nbdto.nbcontent} <br>
        	<c:if test="${nbdto.nbfile != null }">
        	<img src="/upload/${nbdto.nbfile }">
        	</c:if>
        </td>	
      </tr>
      
      
      <tr>
      <td> 
   
	      
	      
      
      <c:if test="${sessionId == 'bbb'}">
      	   <c:if test="${cdto.cno != null }">
      	  
      	  <p onclick = "replyBtn()"> ${cdto.ccontent}</p>
      	  <span id="test"  style="display: none;">
	      	<textarea class="replyType" style="width:100%; " name="ccontent" id="ccontent" >${cdto.ccontent}</textarea>
			<br>
	      	<a onclick="ansUpBtn()" class="rebtn">수정</a>&nbsp;&nbsp;&nbsp;
      	  </span>
	      <a onclick="ansDelBtn()"class="rebtn">삭제</a>
           </c:if>
           <c:if test="${cdto.cno == null }">
	      <textarea class="replyType" style="width:100%" name="ccontent" id="ccontent"></textarea>
	      <br>
	      <a onclick="ansBtn()" class="replyBtn">등록</a> &nbsp;&nbsp;&nbsp;
	      <a onclick="ansDelBtn()"class="rebtn">삭제</a>
           </c:if>
	            
      
      </c:if>
   
      
       <c:if test="${sessionId != 'bbb'}">
           <c:if test="${cdto.cno != null }">
           ${cdto.ccontent}
           </c:if>
           
            <c:if test="${cdto.cno == null }">
            답변: <br>
       			▶ 아직 답변이 없습니다. 급한 문의 사항은 00-000-000으로 전화주세요. 
           </c:if>
  
       
       
       </c:if>
      
      
      </td>
      </tr>
      
      
      
      
      
      
      <tr>
        <td><strong>다음글</strong> <span class="separator">|</span> 
        <a href="/board/noticeRead?nbno=${nextDto.nbno}&page=${page}">${nextDto.nbtitle}</a>
        </td>
      </tr>
      <tr>
        <td><strong>이전글</strong> <span class="separator">|</span> 
        <a href="/board/noticeRead?nbno=${prevDto.nbno}&page=${page}">${prevDto.nbtitle}</a>
        </td>
      </tr>
    </table>

    <div class="list"><a href="/board/noticeList">목록</a></div>
    
    <c:if test="${sessionId == nbdto.nid}">
    	<div class="list"><a onclick="deleteBtn()">삭제</a></div>
	    <div class="list"><a onclick="updateBtn()">수정</a></div>
    </c:if>
    
  </section>

  <%@ include file="../layout/sub_footer.jsp" %>
</body>
</html>