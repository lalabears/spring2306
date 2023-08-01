<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX 페이지 입니다</title>

<link href="../sri_css/loginCss.css" rel="stylesheet" type="text/css">
<!-- <link href="../sri_css/m_layout9774.css" rel="stylesheet" type="text/css">
<link href="../sri_css/m_pattern9774.css"rel="stylesheet" type="text/css">
<link href="../sri_css/service/m_member-join9774.css" rel="stylesheet" type="text/css">
 -->

</head>
<body>
	<ul>
		<li><a href="/member/login">로그인</a></li>
		<li><a href="/member/join">회원가입</a></li>
		<li><a href="/member/mlist">회원리스트</a></li>
		<li><a href="/daumMap">지도</a></li>




	</ul>

	<div style="max-width: 700px; margin: 0 auto;">
		

		<!-- 140616 로그인 -->
		<div class="login_content">
			
			<div class="input_login_info">
				<form action="" class="login" method="POST" name="loginform" id="loginform" >
					<input class="id_text inpTypoBox2" type="text" id="userid" name="userid" maxlength="26" placeholder="아이디" /> 
					<label for="userid"><span class="blind">아이디</span></label> 
					<input class="pw_text inpTypoBox2" type="password" id="passwd" name="passwd" placeholder="비밀번호" /> 
					<label for="passwd"><span class="blind">비밀번호</span></label>

					<p class="ck_login_opt">
						<span class="inpChk2"> 
							<input type="checkbox"	name="idstore" id="idstore" title="아이디 저장" style="display: none;"> 
							<label class="lbl" for="idstore" id="idstore_lb">아이디 저장</label>
						</span> 
						<span class="inpChk2"> 
							<input type="checkbox" name="autologin" id="autologin" title="자동로그인" style="display: none;"> 
							<label class="lbl" for="autologin" id="autologin_lb" >자동 로그인</label>
						</span>
					</p>
					
					<button class="login_btn btnType colorBlue sizeL" type="submit">로그인</button>

					<div class="extra_func">
						<a href="#" >아이디 찾기</a> 
						<i>|</i> 
						<a href="#">비밀번호 찾기</a> 
						<i>|</i> 
						<a href="#">회원가입</a>
					</div>

					<!-- 기업 -->
					<div class="extra_func_company">
						<a href="#">아이디 찾기</a> <i>|</i> <a
							href="#">비밀번호 찾기</a> <i>|</i>
						<a href="#">회원가입</a>
					</div>
				</form>
			</div>
			<div class="social_login_box">
				<div class="social_login_tit">
					<p class="tit">소셜 계정 로그인</p>
				</div>
				<ul class='social_login' id='wrap_social_login'>
					<li class='login_naver'>
						<a href='login/sign-in-withbab9.html?provider=naver.com&amp;display=popup&amp;url=&amp;url=https%3A%2F%2Fm.saramin.co.kr'
						class='sl_naver ga_data_layer' data-provider='naver'
						data-ga_data_layer=ga_lead|member_join|join_pc|naver>
							<span class='wrap_icon'><svg class='icon'><use xlink:href='#icon_login_naver'></use></svg>
							</span>
						</a>
					</li>
					<li class='login_kakao'>
						<a href='https://kauth.kakao.com/oauth/authorize?client_id=a48c346f49496ed25298423c4c9da5f0&amp;response_type=code&amp;redirect_uri=https%3A%2F%2Fm.saramin.co.kr%2Fkakao_oauth.php&amp;state=4-76944f91b18f7297198741a254a7ceb8&amp;display=popup'
						class='sl_kakao ga_data_layer' data-provider='kakao'
						data-ga_data_layer=ga_lead|member_join|join_pc|kakao>
						<span class='wrap_icon'><svg class='icon'><use xlink:href='#icon_login_kakao'></use></svg></span>
						</a>
					</li>
					<li class='login_google'>
						<a	href='https://accounts.google.com/o/oauth2/auth?client_id=18176588531-hig0jtfhelck0m87omcef75rnv65e2e5.apps.googleusercontent.com&amp;response_type=code&amp;redirect_uri=https%3A%2F%2Fm.saramin.co.kr%2Flogin%2Fauthorized&amp;state=3-7fb35bd43d0057d49c7fe27ee18d7278&amp;scope=profile+email&amp;display=popup'
						class='sl_google ga_data_layer' data-provider='google'
						data-ga_data_layer=ga_lead|member_join|join_pc|google>
						<span class='wrap_icon'><svg class='icon'><use xlink:href='#icon_login_google'></use></svg></span>
						</a>
					</li>
					<li class='login_facebook'>
						<a href='https://www.facebook.com/v3.2/dialog/oauth?client_id=1593727887570039&amp;response_type=code&amp;redirect_uri=https%3A%2F%2Fm.saramin.co.kr%2Flogin%2Fauthorized&amp;state=2-70a745764d0e9107f75fcc75f1ec4d2d&amp;scope=email&amp;display=popup'
						class='sl_facebook ga_data_layer' data-provider='facebook'
						data-ga_data_layer=ga_lead|member_join|join_pc|facebook>
						<span class='wrap_icon'><svg class='icon'><use xlink:href='#icon_login_facebook'></use></svg></span>
						</a>
					</li>
					<li class='login_apple'>
						<a href='https://appleid.apple.com/auth/authorize?client_id=BrandApp.saramin.co.kr&amp;response_type=code&amp;redirect_uri=https%3A%2F%2Fm.saramin.co.kr%2Flogin%2Fauthorized&amp;state=5-2d8454a18e57394b83f35da5e612e615&amp;scope=name+email&amp;display=popup&amp;response_mode=form_post'
						class='sl_apple ga_data_layer' data-provider='apple'
						data-ga_data_layer=ga_lead|member_join|join_pc|apple>
						<span class='wrap_icon'><svg class='icon'><use xlink:href='#icon_login_apple'></use></svg></span>
						</a>
					</li>
				</ul>
			</div>
			<div id="login_bottom_company" class="link_company_member" style="">
				<a
					href="https://biz.jumpit.co.kr/jumpit-report?utm_source=saramin&amp;utm_medium=bnr&amp;utm_campaign=mo_login_bottom&amp;utm_term=jumpit_report_2nd"
					target="_blank"><img
					src="../www.saraminbanner.co.kr/new/sub/2023/07/rxkpeg_sdt3-2so1qt_13750x134.png"
					alt="채용담당자를 위한 개발자 연봉 리포트" width="" height="" /></a>
			</div>
		</div>
	</div>
	<!-- 140616 로그인 -->
	</div>

	<svg xmlns="http://www.w3.org/2000/svg" style="display: none">
    <symbol id="icon_login_naver" viewBox="0 0 19 19" fill="none">
        <path
			d="M12.8712 9.83355L6.19707 0.199951H0.665771V18.2H6.46038V8.56635L13.1345 18.2H18.6658V0.199951H12.8712V9.83355Z"
			fill="white" />
    </symbol>
    <symbol id="icon_login_kakao" viewBox="0 0 24 21" fill="none">
        <path
			d="M12 0C5.64713 0 0.5 4.04373 0.5 9.03593C0.5 12.2832 2.68198 15.1323 5.95676 16.7252C5.71634 17.6157 5.08616 19.958 4.95866 20.4576C4.80203 21.0802 5.18815 21.0694 5.4395 20.9028C5.63621 20.7725 8.59043 18.7742 9.86538 17.9126C10.5575 18.0139 11.2715 18.0682 12 18.0682C18.3529 18.0682 23.5 14.0245 23.5 9.03232C23.5 4.04011 18.3529 0 12 0Z"
			fill="#181600" />
    </symbol>
    <symbol id="icon_login_google" viewBox="0 0 20 20" fill="none">
        <path fill-rule="evenodd" clip-rule="evenodd"
			d="M19.999 10.2272C19.999 9.51783 19.9336 8.83673 19.8135 8.18201H10.2039V12.0501H15.6955C15.459 13.3002 14.74 14.359 13.6595 15.0684V17.5771H16.9576C18.8868 15.8362 20 13.2728 20 10.2272H19.999Z"
			fill="#4285F4" />
        <path fill-rule="evenodd" clip-rule="evenodd"
			d="M10.2034 20C12.9583 20 15.2682 19.1041 16.9562 17.5771L13.6581 15.0684C12.744 15.6685 11.576 16.0227 10.2024 16.0227C7.54456 16.0227 5.29523 14.2639 4.49259 11.9003H1.08496V14.4909C2.76426 17.7589 6.21419 20 10.2034 20Z"
			fill="#34A853" />
        <path fill-rule="evenodd" clip-rule="evenodd"
			d="M4.49384 11.8995C4.29006 11.2995 4.17374 10.6589 4.17374 9.99942C4.17374 9.33999 4.29006 8.69939 4.49384 8.09931V5.50867H1.08525C0.394112 6.85863 0 8.38569 0 9.99942C0 11.6132 0.394112 13.1402 1.08525 14.4902L4.49384 11.8995Z"
			fill="#FBBC05" />
        <path fill-rule="evenodd" clip-rule="evenodd"
			d="M10.2034 3.97734C11.701 3.97734 13.0468 4.48228 14.1041 5.47237L17.0311 2.60383C15.2634 0.991037 12.9535 0 10.2034 0C6.21419 0 2.76426 2.24114 1.08496 5.50911L4.49355 8.09975C5.2962 5.73615 7.54552 3.97734 10.2034 3.97734Z"
			fill="#EA4335" />
    </symbol>
    <symbol id="icon_login_facebook" viewBox="0 0 12 22" fill="none">
        <path
			d="M3.78947 22H7.78947V12.3025H11.4926L11.8779 8.64366C11.8779 8.64366 11.9579 8.46385 11.5537 8.46385H7.78947V5.70208C7.78947 5.70208 7.62316 3.61509 9.78947 3.61509H12V0.384594C12 0.384594 11.0484 -0.0194701 8.74526 0.000733132C8.74526 0.000733132 6.71368 -0.0235107 5.12421 1.43516C5.12421 1.43516 3.78947 2.5827 3.78947 3.88379V8.46385H0V12.3025H3.78947V22Z"
			fill="white" />
    </symbol>
    <symbol id="icon_login_apple" width="20" height="23"
			viewBox="0 0 20 23" fill="none">
        <path fill-rule="evenodd" clip-rule="evenodd"
			d="M18.8447 7.88424C17.6485 6.7426 16.6063 5.63891 14.4064 5.52401C12.6308 5.44811 11.8205 6.51385 10.1604 6.5518C8.61681 6.58975 8.73226 5.37221 5.52856 5.71481C2.74924 6.0184 0.317328 8.75918 0.510811 12.6036C0.704295 16.7528 3.63755 22.5 6.37732 22.5C8.30681 22.462 8.77075 21.5481 10.3528 21.5481C12.3208 21.5481 12.7847 22.6897 14.3283 22.461C16.9911 22.0804 19.5 17.9313 19.5 16.5999C18.0334 15.8388 16.5667 14.5443 16.3733 12.3749C16.2193 10.2055 17.5694 8.83508 18.8437 7.88319L18.8447 7.88424Z"
			fill="white" />
        <path fill-rule="evenodd" clip-rule="evenodd"
			d="M9.62073 5.8287C9.42724 4.30652 10.4695 0.994394 14.1371 0.5C14.5615 3.04998 12.4385 5.9805 9.62073 5.8287Z"
			fill="white" />
    </symbol>
</svg>


</body>
</html>