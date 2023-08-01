<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="/css/style_header.css">
		<link rel="stylesheet" type="text/css" href="/css/style_modifing_member_info.css">
		<link rel="stylesheet" type="text/css" href="/css/style_footer.css">
		<link rel="stylesheet" href="/css/style.css">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<title>개인정보수정</title>
	</head>
	<body>
		<%@ include file="../layout/sub_top.jsp" %>
		
		
		<section>
			<form name="agree" method="get" action="#">
				<div id="subBanner"></div>
				<div id="locationN">
					<ul>
						<li>HOME</li>
						<li>마이페이지</li>
						<li>개인정보수정</li>
					</ul>
				</div>
				
				<div id="sub_top_area">
					<h3>개인정보수정</h3>
				</div>
				
				<h4>
					필수 정보 입력 
					<span>(* 항목은 필수 항목입니다.)</span>
				</h4>
				<fieldset class="fieldset_class">
					<dl id="modify_name_dl">
						<dt>
							<div></div>
							<label for="name">이름</label>
						</dt>
						<dd>
							${member.uname }
						</dd>
					</dl>
					<dl id="modify_id_dl">
						<dt>
							<div></div>
							<label for="id">아이디</label>
						</dt>
						<dd>
							${member.userid }
						
						</dd>
					</dl>
					<dl id="modify_pw1_dl">
						<dt>
							<div></div>
							<label for="pw1">비밀번호</label>
						</dt>
						<dd>
							<input type="password" id="upw" name="upw" minlength="8" onkeyup="pwBtn()" required />
							<span>영문, 숫자, 특수문자 조합 8자리 이상 입력</span>
							<span id ="ckpw" style="color:red;"></span>
						</dd>
					</dl>
					<dl id="modify_pw2_dl">
						<dt>
							<div></div>
							<label for="pw2">비밀번호 확인</label>
						</dt>
						<dd>
							<input type="password" id="upw2" name="upw2" minlength="8" onkeyup="pwCkBtn()" required />
							<span id="pwdupck">비밀번호를 다시 한번 입력해 주세요.</span>
						</dd>
					</dl>
					<dl id="modify_mail_dl">
						<dt>
							<div></div>
							<label for="mail_id">이메일</label>
						</dt>
						<dd>
							<input type="text" id="emailId" name="emailId" value="${member.emailId }" required />
							<span>@</span>
							<input type="text" id="emailTail" name="emailTail" value="${member.emailTail }" required />
							<select id="selEmail" onchange="emailSelect()">
								<option value="">직접입력</option>
								<option value="gmail.com">지메일</option>
								<option value="naver.com">네이버</option>
								<option value="daum.com">다음</option>
								<option value="yahoo.com">야후</option>
							</select>
						</dd>
					</dl>
					
					<dl id="modify_address_dl">
						<dt> 
							<div></div>
							<label for="">주소</label>
						</dt>
						<dd>
							<input type="text" id="zipcode" name="zipcode" value="${member.zipcode }"  required /><span></span>
							<input type="button" onclick="daumPost()" value="우편번호"/>
							<span></span>
							<input type="text" id="addr1" name="addr1" value="${member.addr1 }" required />
							<input type="text" id="addr2" name="addr2" value="${member.addr2 }" required />
						</dd>
						
					</dl>
					
					<dl id="modify_tell_dl">
						<dt>
							<div></div>
							<label for="f_tell">휴대전화</label>
						</dt>
						<dd>
							<input type="text" id="phone1" name="phone1" value="${member.phone1 }" maxlength="3" required />
							<span> - </span>
							<input type="text" id="phone2" name="phone2" value="${member.phone2 }" maxlength="4" required />
							<span> - </span>
							<input type="text" id="phone3" name="phone3" value="${member.phone3 }" maxlength="4" required />
						</dd>
					</dl>
					<dl id="modify_birth_dl">
						<dt>
							<div></div>
							<label for="birth_year">생년월일</label>
						</dt>
						<dd>
						
							<select id="bYear" name="bYear" required>
							
							   
							  

							
								<option value ="${member.byear}" selected>${member.byear}</option>
								<option value="1988">1988</option>
								<option value="1989">1989</option>
								<option value="1990">1990</option>
								<option value="1991">1991</option>
								<option value="1992">1992</option>
								<option value="1993">1993</option>
								<option value="1994">1994</option>
								<option value="1995">1995</option>
								<option value="1996">1996</option>
								<option value="1997">1997</option>
								<option value="1998">1998</option>
								<option value="1988">1999</option>
								<option value="1920">2000</option>
							
							</select>
							<span>년</span>
							<select id="bMonth" name="bMonth" required>
								<option value = "${member.bmonth}"  selected>${member.bmonth}</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							<span>월</span>
							<select id="bday" name="bday" required>
								<option value = "${member.bday}"  selected>${member.bday}</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select>
							<span>일</span>
						</dd>
					</dl>
					<dl id="modify_gender_dl">
						<dt>
							<div></div>
							<label for="">성별</label>
						</dt>
						<dd>
							<div>
							<c:if test="${member.ugender == 'male'}">
								<input type="radio" name="ugender" id="male" value="male" checked="checked"/>
								<label for="male">남성</label>
								<input type="radio" name="ugender" id="female" value="female" />
								<label for="female">여성</label>
							</c:if>
							<c:if test="${member.ugender == 'female'}">
								<input type="radio" name="ugender" id="male" value="male" />
								<label for="male">남성</label>
								<input type="radio" name="ugender" id="female" value="female" checked="checked" />
								<label for="female">여성</label>
							</c:if>
							</div>
						</dd>
					</dl>
					<dl id="modify_newsletter_dl">
						<dt>
							<div></div>
							<label for="">뉴스레터 수신여부</label>
						</dt>
						<dd>
							<span>이메일을 통한 상품 및 이벤트 정보 수신에 동의합니다.</span>
							<div>
								<input type="radio" name="ugetnews" id="ugetnewsY" value="1" checked="checked"/>
								<label for="newletter_y">예</label>
								<input type="radio" name="ugetnews" id="ugetnewsN" value="0" />
								<label for="newletter_n">아니오</label>
							</div>
						</dd>
					</dl>
					<dl id="modify_sms_dl">
						<dt>
							<div></div>
							<label for="">SMS 수신여부</label>
						</dt>
						<dd>
							<span>이메일을 통한 상품 및 이벤트 정보 수신에 동의합니다.</span>
							<div>
								<input type="radio" name="ugetsms" id="ugetsmsY" value="1" checked="checked"/>
								<label for="sms_y">예</label>
								<input type="radio" name="ugetsms" id="ugetsmsN" value="0" />
								<label for="sms_n">아니오</label>
							</div>
						</dd>
					</dl>
				</fieldset>

								
				<h4>
					분양 회원 정보 입력 
					<span>(다구좌 회원일 경우 가지고 계신 카드번호 중 하나를 입력해 주시면 됩니다)</span>
				</h4>
				<fieldset class="fieldset_class">
					<dl id="modify_member_number_dl">
						<dt>
							<label for="m_number">회원번호</label>
						</dt>
						<dd>
							<input type="text" name="m_number" id="m_number" value="12341234" />
							<span>하이픈(-)이나 띄어쓰기 없이 입력해 주시기 바랍니다.</span>
						</dd>
					</dl>
					<dl id="modify_verification_number_dl">
						<dt>
							<label for="v_number">회원인증번호</label>
						</dt>
						<dd>
							<input type="text" name="v_number" id="v_number" value="a1b2c3d4"/>
							<span>숫자 4자리 입력</span>
						</dd>
					</dl>
				</fieldset>
				
				<h4>
					선택 입력 정보 
				</h4>
				<fieldset class="fieldset_class">
					<dl id="modify_job_dl">
						<dt>
							<label for="job">직업</label>
						</dt>
						<dd>
							<select id="ujob" name="ujob">
								<option value="">선택</option>
								<option value="worker">회사원</option>
								<option value="slef">자영업자</option>
								<option value="freelancer">프리랜서</option>
								<option value="housewife">전업주부</option>
								<option value="student">학생</option>
								<option value="etc">기타</option>						
							</select>
						</dd>
					</dl>
					<dl id="modify_marital_status_dl">
						<dt>
							<label for="">결혼여부</label>
						</dt>
						<dd>
							<input type="radio" name="usingle" id="usingleY" value="1" />
							<label for="usingleY">예</label>
							<input type="radio" name="usingle" id="usingleN" value="0" />
							<label for="usingleN">아니오</label>
						</dd>
					</dl>
					<dl id="modify_interests_dl">
						<dt>
							<label for="">관심사</label>
						</dt>
						<dd>
							<ul>
								<li>
									<input type="checkbox" name="uinterests" id="computer" value="computer" />
									<label for="computer">컴퓨터/인터넷</label>
								</li>
								<li>
									<input type="checkbox" name="uinterests" id="movie" value="movie" />
									<label for="movie">영화/비디오</label>
								</li>
								<li>
									<input type="checkbox" name="uinterests" id="music" value="music" />
									<label for="music">음악</label>
								</li>
								<li>
									<input type="checkbox" name="uinterests" id="shopping" value="shopping" />
									<label for="shopping">쇼핑</label>
								</li>
								<li>
									<input type="checkbox" name="uinterests" id="game" value="game" />
									<label for="game">게임</label>
								</li>
								<li>
									<input type="checkbox" name="uinterests" id="culture" value="culture" />
									<label for="culture">문화/예술</label>
								</li>
								<li>
									<input type="checkbox" name="uinterests" id="parenting" value="parenting" />
									<label for="parenting">육아/아동</label>
								</li>
								<li>
									<input type="checkbox" name="uinterests" id="cooking" value="cooking" />
									<label for="parenting">요리</label>
								</li>
								<li>
									<input type="checkbox" name="uinterests" id="interier" value="interier" />
									<label for="interier">인테리어</label>
								</li>
								<li>
									<input type="checkbox" name="uinterests" id="leisure" value="leisure" />
									<label for="leisure">레저/여가</label>
								</li>
								<li>
									<input type="checkbox" name="uinterests" id="health" value="health" />
									<label for="health">건강/다이어트</label>
								</li>
								<li>
									<input type="checkbox" name="uinterests" id="fashion" value="fashion" />
									<label for="fashion">패션/미용</label>
								</li>
							</ul>
						</dd>
					</dl>
				</fieldset>
				<div id="info_input_button">
					<input type="reset" value="취소하기" />
					<input type="submit" value="수정하기" />
				</div>
				
			</form>
		</section>
		<%@ include file="../layout/sub_footer.jsp" %>
	</body>
</html>