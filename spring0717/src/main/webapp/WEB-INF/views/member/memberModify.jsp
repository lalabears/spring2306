<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>


<!DOCTYPE html>
<html>
	<c:if test="${sessionId==null || sessionId=='' }">
	<script type="text/javascript">
		alert("로그인을 하셔야 수정이 가능합니다. ");
		location.href = "/member/login"
	</script>
	</c:if>


	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="/css/style_header.css">
		<link rel="stylesheet" type="text/css" href="/css/style_join02_info_input.css">
		<link rel="stylesheet" type="text/css" href="/css/style_footer.css">
		
		<title>회원가입 - 회원정보입력</title>
	</head>
	<body>
		<%@ include file ="../layout/header.jsp" %>
		
		
		
		
		
		<section>
			<form name="agree" method="get" action="join03_success.html">
				<div id="subBanner"></div>
				<div id="locationN">
					<ul>
						<li>HOME</li>
						<li>회원가입</li>
						<li>회원정보입력</li>
					</ul>
				</div>
				
				<div id="sub_top_area">
					<h3>회원가입</h3>
				</div>
				
				<div id="join_step_div">
					<ul>
						<li>
							<span>STEP.1</span>
							<p>약관동의</p>
						</li>
						<li>
							<span>STEP.2</span>
							<p>회원정보</p>
						</li>
						<li>
							<span>STEP.3</span>
							<p>회원가입완료</p>
						</li>
					</ul>
				</div>
				
				<h4>
					필수 정보 입력 
					<span>(* 항목은 필수 항목입니다.)</span>
				</h4>
				<fieldset class="fieldset_class">
					<dl id="join_name_dl">
						<dt>
							<div></div>
							<label for="name">이름</label>
						</dt>
						<dd>
						${mdto.name }
							<input type="hidden" id="name" name="name" value = " ${mdto.name }" required/>
						</dd>
					</dl>
					<dl id="join_id_dl">
						<dt>
							<div></div>
							<label for="id">아이디 </label>
						</dt>
						<dd>
						 ${mdto.id }
							<input type="hidden" id="id" name="id" value = " ${mdto.id }" minlength="4" maxlength="16" required readonly="readonly"/>
						</dd>
					</dl>
					<dl id="join_pw1_dl">
						<dt>
							<div></div>
							<label for="pw1">비밀번호</label>
						</dt>
						<dd>
							<input type="password" id="pw1" name="pw1" minlength="8"  value = " ${mdto.pw }" required />
							<span>영문, 숫자, 특수문자 중 2종류 조합 시 10자리 이상 입력</span>
							<span>영문, 숫자, 특수문자 모두 조합 시 8자리 이상 입력</span>
						</dd>
					</dl>
					<dl id="join_pw2_dl">
						<dt>
							<div></div>
							<label for="pw2">비밀번호 확인</label>
						</dt>
						<dd>
							<input type="password" id="pw2" name="pw2" minlength="8" required />
							<span>비밀번호를 다시 한번 입력해 주세요.</span>
						</dd>
					</dl>
					<dl id="join_tell_dl">
						<dt>
							<div></div>
							<label for="f_tell">휴대전화</label>
						</dt>
						<dd>
							<input type="text" id="f_tell" name="f_tell" maxlength="3"  value = " ${mdto.phones[0] }" required />
							<span> - </span>
							<input type="text" id="m_tell" name="m_tell" maxlength="4"  value = " ${mdto.phones[1] }"required />
							<span> - </span>
							<input type="text" id="l_tell" name="l_tell" maxlength="4"  value = " ${mdto.phones[2] }"required />
						</dd>
					</dl>
					<dl id="join_gender_dl">
						<dt>
							<div></div>
							<label for="">성별</label>
						</dt>
						<dd>
							<div>
							<c:if test="${mdto.gender =='male' }">
								<input type="radio" name="gender" id="male" value="male" checked="checked"/>
								<label for="male">남성</label>
								<input type="radio" name="gender" id="female" value="female" />
								<label for="female">여성</label>
							</c:if>
							<c:if test="${mdto.gender =='female' }">
								<input type="radio" name="gender" id="male" value="male"/>
								<label for="male">남성</label>
								<input type="radio" name="gender" id="female" value="female"  checked="checked"/>
								<label for="female">여성</label>
							</c:if>
							</div>
						</dd>
					</dl>
					
					<dl id="join_interests_dl" style="height:150px;">
						<dt>
							<label for="">취미</label>
						</dt>
						<dd>
							<ul>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'computer') }">
									<input type="checkbox" name="computer" id="computer" value="computer" checked="checked" />
									<label for="computer">컴퓨터/인터넷</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'computer') }">
									<input type="checkbox" name="computer" id="computer" value="computer" />
									<label for="computer">컴퓨터/인터넷</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'movie') }"> 
									<input type="checkbox" name="movie" id="movie" value="movie"  checked="checked"/>
									<label for="movie">영화/비디오</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'movie') }"> 
									<input type="checkbox" name="movie" id="movie" value="movie" checked="checked" "/>
									<label for="movie">영화/비디오</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'music') }"> 
									<input type="checkbox" name="music" id="music" value="music" checked="checked" />
									<label for="music">음악</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'music') }"> 
									<input type="checkbox" name="music" id="music" value="music"  />
									<label for="music">음악</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'shopping') }"> 
									<input type="checkbox" name="shopping" id="shopping" value="shopping" checked="checked" />
									<label for="shopping">쇼핑</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'shopping') }"> 
									<input type="checkbox" name="shopping" id="shopping" value="shopping"  />
									<label for="shopping">쇼핑</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'game') }"> 
									<input type="checkbox" name="game" id="game" value="game" checked="checked" />
									<label for="game">게임</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'game') }"> 
									<input type="checkbox" name="game" id="game" value="game"  />
									<label for="game">게임</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'culture') }"> 
									<input type="checkbox" name="culture" id="culture" value="culture" checked="checked" />
									<label for="culture">문화/예술</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'culture') }"> 
									<input type="checkbox" name="culture" id="culture" value="culture" />
									<label for="culture">문화/예술</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'parenting') }"> 
									<input type="checkbox" name="parenting" id="parenting" value="parenting" checked="checked" />
									<label for="parenting">육아/아동</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'parenting') }"> 
									<input type="checkbox" name="parenting" id="parenting" value="parenting" />
									<label for="parenting">육아/아동</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'cooking') }"> 
									<input type="checkbox" name="cooking" id="cooking" value="cooking"  checked="checked"/>
									<label for="parenting">요리</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'cooking') }"> 
									<input type="checkbox" name="cooking" id="cooking" value="cooking" />
									<label for="parenting">요리</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'interier') }"> 
									<input type="checkbox" name="interier" id="interier" value="interier" checked="checked" />
									<label for="interier">인테리어</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'interier') }"> 
									<input type="checkbox" name="interier" id="interier" value="interier"  />
									<label for="interier">인테리어</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'leisure') }"> 
									<input type="checkbox" name="leisure" id="leisure" value="leisure" checked="checked" />
									<label for="leisure">레저/여가</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'leisure') }"> 
									<input type="checkbox" name="leisure" id="leisure" value="leisure"  />
									<label for="leisure">레저/여가</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'health') }"> 
									<input type="checkbox" name="health" id="health" value="health"  checked="checked"/>
									<label for="health">건강/다이어트</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'health') }"> 
									<input type="checkbox" name="health" id="health" value="health"  />
									<label for="health">건강/다이어트</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'fashion') }"> 
									<input type="checkbox" name="fashion" id="fashion" value="fashion" checked="checked" />
									<label for="fashion">패션/미용</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'fashion') }"> 
									<input type="checkbox" name="fashion" id="fashion" value="fashion"  />
									<label for="fashion">패션/미용</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'swim') }"> 
									<input type="checkbox" name="swim" id="swim" value="swim" checked="checked" />
									<label for="fashion">수영</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'swim') }"> 
									<input type="checkbox" name="swim" id="swim" value="swim" />
									<label for="fashion">수영</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'yoga') }"> 
									<input type="checkbox" name="yoga" id="yoga" value="yoga" checked="checked" />
									<label for="fashion">요가</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'yoga') }"> 
									<input type="checkbox" name="yoga" id="yoga" value="yoga"  />
									<label for="fashion">요가</label>
								</c:if>
								</li>
								<li>
								<c:if test="${fn:contains(mdto.hobby,'golf') }"> 
									<input type="checkbox" name="golf" id="golf" value="golf" checked="checked"/>
									<label for="fashion">골프</label>
								</c:if>
								<c:if test="${not fn:contains(mdto.hobby,'golf') }"> 
									<input type="checkbox" name="golf" id="golf" value="golf" />
									<label for="fashion">골프</label>
								</c:if>
								</li>
							</ul>
						</dd>
					</dl>
					</fieldset>
					<br><br>
			
				<div id="info_input_button">
					<input type="reset" value="취소하기" />
					<input type="submit" value="가입하기" />
				</div>
				
			</form>
		</section>
		
		
		<%@ include file ="../layout/footer.jsp" %>
		
		
		
		
		
	</body>
</html>