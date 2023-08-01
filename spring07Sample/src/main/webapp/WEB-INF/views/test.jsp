<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="ko">

<!-- Mirrored from m.saramin.co.kr/login by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Jul 2023 09:14:05 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
        <title>로그인</title>    
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" >
<meta name="format-detection" content="telephone=no" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<meta http-equiv="Content-Language" content="ko-KR" >    <meta property="og:title" content="로그인 - 사람인" >
<meta property="og:site_name" content="사람인" >
<meta property="og:type" content="website" >
<meta property="og:image" content="../www.saraminimage.co.kr/logo/saraminsnslogo.png" >
<meta property="og:image:width" content="200" >
<meta property="og:image:height" content="200" >    
<link href="../sri_css/m_layout9774.css?v=20230711163202" media="screen" rel="stylesheet" type="text/css" >
<link href="../sri_css/m_pattern9774.css?v=20230711163202" media="screen" rel="stylesheet" type="text/css" >
<link href="../sri_css/m_search_common9774.css?v=20230711163202" media="screen" rel="stylesheet" type="text/css" >
<link href="../sri_css/m_sticky9774.css?v=20230711163202" media="screen" rel="stylesheet" type="text/css" >
<link href="../www.saraminimage.co.kr/js/libs/swiper_4.4.6/swiper.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="../sri_css/m_sub_common9774.css?v=20230711163202" media="screen" rel="stylesheet" type="text/css" >
<link href="../sri_css/service/m_member-join9774.css?v=20230711163202" media="all" rel="stylesheet" type="text/css" >
<link href="favicon77ae.ico?ver=2" rel="favicon" >
<link href="favicon77ae.ico?ver=2" rel="icon" type="image/x-icon" >
<link href="favicon77ae.ico?ver=2" rel="shortcut icon" type="image/x-icon" >    

<script type="text/javascript" src="../www.saraminimage.co.kr/js/libs/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/mobile-commonc9f5.js?v=20230706163201"></script>
<script type="text/javascript" src="js/sri-app-scriptc9f5.js?v=20230706163201"></script>
<script type="text/javascript" src="../www.saraminimage.co.kr/js/libs/swiper_4.4.6/swiper.min.js"></script>
<script type="text/javascript" src="js/ui/dist/ui-modulec9f5.js?v=20230706163201"></script>        
<script>
(function(a_,i_,r_,_b,_r,_i,_d,_g,_e){if(!a_[_b]){var d={queue:[]};_r.concat(_i).forEach(function(a){var i_=a.split("."),a_=i_.pop();i_.reduce(function(a,i_){return a[i_]=a[i_]||{}},d)[a_]=function(){d.queue.push([a,arguments])}});a_[_b]=d;a_=i_.getElementsByTagName(r_)[0];i_=i_.createElement(r_);i_.onerror=function(){d.queue.filter(function(a){return 0<=_i.indexOf(a[0])}).forEach(function(a){a=a[1];a=a[a.length-1];"function"===typeof a&&a("error occur when load airbridge")})};i_.async=1;i_.src="../static.airbridge.io/sdk/latest/airbridge.min.js";a_.parentNode.insertBefore(i_,a_)}})(window,document,"script","airbridge","init fetchResource setBanner setDownload setDownloads openDeeplink setDeeplinks sendWeb setUserAgent setUserAlias addUserAlias setMobileAppData setUserId setUserEmail setUserPhone setUserAttributes clearUser setDeviceIFV setDeviceIFA setDeviceGAID events.send events.signIn events.signUp events.signOut events.purchased events.addedToCart events.productDetailsViewEvent events.homeViewEvent events.productListViewEvent events.searchResultViewEvent".split(" "),["events.wait"]);
var airbridgeWebKey = 'ca79046f9e144d959f976fe69cdcb672';
var appName = 'saramin';
//에어브릿지
airbridge.init({
    app: appName,
    webToken: airbridgeWebKey,
    useProtectedAttributionWindow : true,
    utmParsing: true,
    cookieWindow: 1,
    forceFirstPartyCookieID: true
});

function setCookie(name, value, expiredays) {
    var todayDate = new Date();
    todayDate.setDate( todayDate.getDate() + expiredays );
    document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";";
}

if (!!window.sriapp && !!window.sriapp.getInfo) {
    var message = {
        types: 'os_name,device_real_name,airbridge_uuid,os_version,device_model,gaid,idfa,ifv,package_name',
        script: "airbridgeGetInfo(%@);"
    }
    window.sriapp.getInfo(JSON.stringify(message));
}

var app_info;
window.airbridgeGetInfo = function (json) {
    app_info = JSON.parse(json);
    if(!!app_info.airbridge_uuid){
        setCookie('airbridge_uuid',app_info.airbridge_uuid, 1);
    }
    if(!!app_info.os_name){
        setCookie('os_name',app_info.os_name, 1);
    }
    if(!!app_info.device_real_name){
        setCookie('device_model',app_info.device_real_name, 1);
    }
    if(!!app_info.os_version){
        setCookie('os_version',app_info.os_version, 1);
    }
    if(!!app_info.gaid){
        setCookie('airbridge_gaid',app_info.gaid, 1);
    }
    if(!!app_info.idfa){
        setCookie('airbridge_idfa',app_info.idfa, 1);
    }
    if(!!app_info.ifv){
        setCookie('airbridge_ifv',app_info.ifv, 1);
    }
    if(!!app_info.package_name){
        setCookie('airbridge_package_name',app_info.package_name, 1);
    }
};

</script>
<script>

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-12546634-1', 'saramin.co.kr');
  ga('require', 'GTM-KN35GK2');
  ga('create', 'UA-12546634-1', 'auto', {'useAmpClientId': true});
  ga('require','displayfeatures');
  ga('require', 'linkid');
          ga('send', 'pageview');
  </script>    </head>
<body class="service-member-join  ">
        <script type="text/javascript">
    (function($) {
        var headerControll = {
            headerStickyY : function() {
                var isHeader = $('.wrapHeader').length,
                    isGnb = $('.wrap_gnb').length,
                    isGnbEmpty = $('.wrap_gnb').children().length < 1,
                    isLnb = $('.wrap_lnb').length;
                if(isHeader) {
                    if(isGnb) {
                        if(isLnb) {
                            $('.wrapNav').addClass('target_sticky');
                            if(!isGnbEmpty) {
                                $('.wrapNav').css('top', '-44px');
                            }
                            $('.wrap_lnb').addClass('target_sticky');
                            headerControll.fixedTopSearch($('.wrap_lnb'));

                            headerControll.lnbActive.init();
                        } else {
                            $('.wrapNav').addClass('target_sticky');
                            headerControll.fixedTopSearch($('.wrap_gnb'));
                        }
                        headerControll.gnbActive();
                    } else {
                        $('.wrapHeader').addClass('target_sticky');
                        headerControll.fixedTopSearch($('.wrapHeader'));
                    }
                }
            },

            headerStickyN : function() {
                var isHeader = $('.wrapHeader').length,
                    isGnb = $('.wrap_gnb').length,
                    isLnb = $('.wrap_lnb').length;

                if(isHeader) {
                    if(isGnb) {
                        if(isLnb) {
                            headerControll.lnbActive.init();
                        }
                        headerControll.gnbActive();
                    }
                }
            },

            fixedTopSearch : function (target) {  // 리스트 상단 정렬 등 추가고정이 필요한 영역
                $(document).ready(function() {
                    var isHeader = $('.wrapHeader')
                    var isTopSearch = $('#fixedTopSearch').length;
                    var isFilter = $('#filter_area');
                    if (target.selector == '.wrap_lnb'){
                        (isTopSearch) && $('#fixedTopSearch').removeClass('target_sticky').addClass('priority')
                    } else if (isFilter.find('.wrap_recruit_search').hasClass('wrap_recruit_search')) {
                        isHeader.addClass('priority');
                        isFilter.addClass('position_sticky');
                    } else {
                        (isTopSearch) && $('#fixedTopSearch').removeClass('target_sticky').addClass('priority');
                    }
                });
            },

            gnbActive : function () {
                var currentGnbItemIndex = $('#gnbSwiper .swiper-slide.on').index(),
                    initialSlideGnbIndex = currentGnbItemIndex - 1 < 0 ? 0 : currentGnbItemIndex - 1;

                var swiper_gnb = new Swiper('#gnbSwiper', {
                    slidesPerView : 'auto',
                    initialSlide : initialSlideGnbIndex,
                    centeredSlides : false,
                    paginationClickable : true,
                    grabCursor : true,
                    loop : false
                });
            },

            lnbActive : {
                init : function() {
                    var currentLnbItemIndex = $('#lnbSwiper .swiper-slide.on').index(),
                        initialSlideLnbIndex = currentLnbItemIndex - 1 < 0 ? 0 : currentLnbItemIndex - 1;

                    var swiper_lnb = new Swiper('#lnbSwiper', {
                        slidesPerView: 'auto',
                        initialSlide : initialSlideLnbIndex,
                        centeredSlides: false,
                        paginationClickable: true,
                        grabCursor: true,
                        loop : false
                    });

                    if ($('#linemap_panel').length) {
                        this.lnbToggle();
                    }
                },

                lnbToggle : function() {
                    var _this = this;
                    var linemapCheck = false;
                    var clickEl = $('#lnb_toggle');
                    clickEl.on('click', function() {
                        toggleActive();
                    });
                    var toggleActive = function() {
                        var panel = $('#linemap_panel');

                        if (!_this.linemapCheck) {
                            clickEl.addClass('on');
                            panel.show();
                        } else {
                            clickEl.removeClass('on');
                            panel.hide();
                        }
                        _this.linemapCheck = !_this.linemapCheck;
                    };
                    $(".content").on('touchmove', function() {
                        clickEl.removeClass('on');
                        $('#linemap_panel').hide();
                        _this.linemapCheck = false;
                    });
                }
            }
        };
        $(document).ready(function() {
            headerControll.headerStickyY();        })
    })(jQuery)
</script>
    <div id="wrapper" class="content">
        

<header class="wrapHeader target_sticky">
   
    <h1 class="wrap_close_tit"><span class="tit_close_header">로그인</span></h1>
</header>
<div style="max-width: 400px; margin: 0 auto;">
<ul class="tabList login_tab">
    <li class="select"
    ">
    <button type="button" class="inTab t_per t_on"
            aria-selected="true">개인회원
    </button>
    </li><!-- 인터랙션 시 선택된 것에는 true로, 비선택된 것에는 false로 적용 -->
    <li class="">
        <button type="button" class="inTab  t_com "
                aria-selected="">기업회원
        </button>
    </li>
</ul>

<!-- 140616 로그인 -->
<div class="login_content">
    <div id="view-sp1" style="display:none;" class="pc_keyboard">
        <img src="../www.saraminimage.co.kr/ui/mobile_login/pc_keyboard_274.png" width="274px" height="82"/>
    </div>
    <div id="view-sp2" style="display:none;" class="special_keyboard">
        <img src="../www.saraminimage.co.kr/ui/mobile_login/special_keyboard_274.png" width="274px" height="55"/>
    </div>
    <div class="input_login_info">
        <form action="https://m.saramin.co.kr/login/login" class="login" method="POST" name="loginform"
              id="loginform" onsubmit="return validateLoginForm(this)">
            <input type="hidden" name="url" value="/" id="url">            <input type="hidden" name="m_code" value="" id="m_code">            <input type="hidden" name="login_tab" value="p" id="login_tab">            
            <input class="id_text inpTypoBox2" type="text" id="userid" name="userid" maxlength="26" placeholder="아이디"/>
            <label for="userid"><span class="blind">아이디</span></label>
            <input type="text" style="display:none;">
            <input class="pw_text inpTypoBox2" type="password" id="passwd" name="passwd" placeholder="비밀번호"/>
            <label for="passwd"><span class="blind">비밀번호</span></label>

            <p class="ck_login_opt">
                <span class="inpChk2">
                    <input type="checkbox" name="idstore" id="idstore" title="아이디 저장"
                           onchange="javascript:toggleCheckbox('id');" style="display:none;">
                    <label class="lbl" for="idstore" id="idstore_lb"
                           onmousedown="try{n_trackEvent('login', 'm_login_page' , 'id_save', '');}catch(e){}">아이디 저장</label>
                </span>
                <span class="inpChk2">
                    <input type="checkbox" name="autologin" id="autologin" title="자동로그인"
                           onchange="javascript:toggleCheckbox('autologin');" style="display:none;">
                    <label class="lbl" for="autologin" id="autologin_lb"
                           onmousedown="try{n_trackEvent('login', 'm_login_page' , 'login_save', '');}catch(e){}">자동 로그인</label>
                </span>
            </p>
            <button class="login_btn btnType colorBlue sizeL" type="submit">로그인</button>

            <div class="extra_func">
                <a href="helpdesk/person-find-id.html"
                   onmousedown="try{n_trackEvent('login', 'm_login_page' , 'find', '');}catch(e){}">아이디 찾기</a>
                <i>|</i>
                <a href="helpdesk/person-find-password.html"
                   onmousedown="try{n_trackEvent('login', 'm_login_page' , 'find', '');}catch(e){}">비밀번호 찾기</a>
                <i>|</i>
                <a href="join/person-member-join.html?type=p"
                   onmousedown="try{n_trackEvent('login', 'm_login_page' , 'join', '');}catch(e){}">회원가입</a>
            </div>

            <!-- 기업 -->
            <div class="extra_func_company">
                <a href="helpdesk/company-find-id.html">아이디 찾기</a>
                <i>|</i>
                <a href="helpdesk/company-find-password-intro.html">비밀번호 찾기</a>
                <i>|</i>
                <a href="join/company-member-join.html">회원가입</a>
            </div>
        </form>
    </div>
    <div class="social_login_box">
        <div class="social_login_tit">
            <p class="tit">소셜 계정 로그인</p>
        </div>
        <ul class='social_login' id='wrap_social_login'><li class='login_naver'>
                            <a href='login/sign-in-withbab9.html?provider=naver.com&amp;display=popup&amp;url=&amp;url=https%3A%2F%2Fm.saramin.co.kr'
                                class='sl_naver ga_data_layer' data-provider='naver' data-ga_data_layer=ga_lead|member_join|join_pc|naver  ><span class='wrap_icon'><svg class='icon'><use xlink:href='#icon_login_naver'></use></svg></span></a></li><li class='login_kakao'>
                            <a href='https://kauth.kakao.com/oauth/authorize?client_id=a48c346f49496ed25298423c4c9da5f0&amp;response_type=code&amp;redirect_uri=https%3A%2F%2Fm.saramin.co.kr%2Fkakao_oauth.php&amp;state=4-76944f91b18f7297198741a254a7ceb8&amp;display=popup'
                                class='sl_kakao ga_data_layer' data-provider='kakao' data-ga_data_layer=ga_lead|member_join|join_pc|kakao  ><span class='wrap_icon'><svg class='icon'><use xlink:href='#icon_login_kakao'></use></svg></span></a></li><li class='login_google'>
                            <a href='https://accounts.google.com/o/oauth2/auth?client_id=18176588531-hig0jtfhelck0m87omcef75rnv65e2e5.apps.googleusercontent.com&amp;response_type=code&amp;redirect_uri=https%3A%2F%2Fm.saramin.co.kr%2Flogin%2Fauthorized&amp;state=3-7fb35bd43d0057d49c7fe27ee18d7278&amp;scope=profile+email&amp;display=popup'
                                class='sl_google ga_data_layer' data-provider='google' data-ga_data_layer=ga_lead|member_join|join_pc|google  ><span class='wrap_icon'><svg class='icon'><use xlink:href='#icon_login_google'></use></svg></span></a></li><li class='login_facebook'>
                            <a href='https://www.facebook.com/v3.2/dialog/oauth?client_id=1593727887570039&amp;response_type=code&amp;redirect_uri=https%3A%2F%2Fm.saramin.co.kr%2Flogin%2Fauthorized&amp;state=2-70a745764d0e9107f75fcc75f1ec4d2d&amp;scope=email&amp;display=popup'
                                class='sl_facebook ga_data_layer' data-provider='facebook' data-ga_data_layer=ga_lead|member_join|join_pc|facebook  ><span class='wrap_icon'><svg class='icon'><use xlink:href='#icon_login_facebook'></use></svg></span></a></li><li class='login_apple'>
                            <a href='https://appleid.apple.com/auth/authorize?client_id=BrandApp.saramin.co.kr&amp;response_type=code&amp;redirect_uri=https%3A%2F%2Fm.saramin.co.kr%2Flogin%2Fauthorized&amp;state=5-2d8454a18e57394b83f35da5e612e615&amp;scope=name+email&amp;display=popup&amp;response_mode=form_post'
                                class='sl_apple ga_data_layer' data-provider='apple' data-ga_data_layer=ga_lead|member_join|join_pc|apple  ><span class='wrap_icon'><svg class='icon'><use xlink:href='#icon_login_apple'></use></svg></span></a></li></ul>    </div>
                    <div id = "login_bottom_company" class="link_company_member" style=""><a href="https://biz.jumpit.co.kr/jumpit-report?utm_source=saramin&amp;utm_medium=bnr&amp;utm_campaign=mo_login_bottom&amp;utm_term=jumpit_report_2nd"  target="_blank" ><img src="../www.saraminbanner.co.kr/new/sub/2023/07/rxkpeg_sdt3-2so1qt_13750x134.png" alt="채용담당자를 위한 개발자 연봉 리포트" width="" height="" /></a></div>            </div>
</div>
<!-- 140616 로그인 -->
</div>

<script type="text/javascript">
    function e$(el) {
        return document.getElementById(el);
    }

    function bgfocus(id) {

        e$(id).className = '';
    }

    function bgblur(id) {
        if (!document.querySelector('#' + id + ' input').value) {
            e$(id).className = id;
        }
    }

    var storeIdAndPasswd = function (f) {
    };

    if (window.localStorage) {
        var s = window.localStorage;
        var userid = s.getItem('userid');
        var autologin = s.getItem('autologin');

        if (null != userid) {
            document.getElementById('userid').value = userid;
            document.getElementById('idstore').checked = true;
        }

        if (null != autologin) {
            document.getElementById('autologin').checked = true;
        }

        storeIdAndPasswd = function (f) {
            if (f.idstore.checked) {
                s.setItem('userid', f.userid.value);
            } else {
                s.removeItem('userid');
            }

            if (f.autologin.checked) {
                s.setItem('autologin', '');
            } else {
                s.removeItem('autologin');
            }
        };
    }

    function validateLoginForm(f) {
        var label = $('#wrapper .t_com').hasClass('t_on') ? 'com_login' : 'per_login';
        if (/^\s*$/.test(f.userid.value)) {
            f.userid.focus();
            return false;
        }
        if ('' == f.passwd.value) {
            f.passwd.focus();
            return false;
        }

        storeIdAndPasswd(f);
        loggingEventAndTagManager(['login', 'm_login_page', label, ''], ['ga_lead', 'login', 'm_login_page', label]);
    }

    function userview(num) {
        for (i = 1; i <= 2; i++) {
            if (i == num) {
                if (document.getElementById('view-sp' + num).style.display == 'block') {
                    document.getElementById('view-sp' + i).style.display = 'none';
                    document.getElementById('usr' + num).className = 'off';
                } else {
                    document.getElementById('view-sp' + num).style.display = 'block';
                    document.getElementById('usr' + num).className = 'on';
                }
            } else {
                document.getElementById('view-sp' + i).style.display = 'none';
                document.getElementById('usr' + i).className = 'off';
            }
        }
    }

    function toggleCheckbox(val) {

        if (val === 'id') {
            obj_label = document.getElementById('idstore_lb');
        } else if (val === 'autologin') {
            obj_label = document.getElementById('autologin_lb');
        }

        var obj_idstore = document.getElementById('idstore');
        var obj_autologin = document.getElementById('autologin');

        if (val === 'id') {
            // '아이디 저장'을 클릭한 경우

            if (obj_idstore.checked) {
                obj_idstore.checked = true;
                obj_label.className = "lbl on";
            } else {
                obj_idstore.checked = false;
                obj_label.className = "lbl off";
            }
        } else if (val === 'autologin') {
            // '로그인 상태 유지'을 클릭한 경우

            if (obj_autologin.checked) {
                obj_autologin.checked = true;
                obj_label.className = "lbl on";
            } else {
                obj_autologin.checked = false;
                obj_label.className = "lbl off";
            }
        }

    }

    $(function () {
        var loginTabDefault = 'p',
            fadeTimeout = null;
        if (loginTabDefault == 'p') {
            $('.social_tooltip').show();
            hideSocialTooltip();
        }

        $('#wrapper')
            .on('click', '.t_per', function (e) {
                if (!$(this).hasClass('t_on')) {
                    $(this).addClass('t_on');
                    $(this).attr('aria-selected', true);

                    var parentTag = $(this).parent();
                    parentTag.attr('class', 'select');
                    parentTag.next().removeClass('select');
                    parentTag.next().children().removeClass('t_on');
                    parentTag.next().children().attr('aria-selected', false);

                    $(e.delegateTarget).find('.login_content').eq(0).removeClass('com');
                    $('#login_tab').val('p');
                    $('.social_tooltip').show();
                    hideSocialTooltip();
                } else {
                }
            })
            .on('click', '.t_com', function () {
                if (!$(this).hasClass('t_on')) {
                    $(this).addClass('t_on');
                    $(this).attr('aria-selected', true);

                    var parentTag = $(this).parent();
                    parentTag.attr('class', 'select');
                    parentTag.prev().removeClass('select');
                    parentTag.prev().children().removeClass('t_on');
                    parentTag.prev().children().attr('aria-selected', false);

                    $('.login_content').eq(0).addClass('com');
                    $('#login_tab').val('c');
                    $('.social_tooltip').hide();
                    clearTimeout(fadeTimeout);
                }
            })
        ;

        function hideSocialTooltip () {
            fadeTimeout = setTimeout(function () {
                $('.social_tooltip').fadeOut();
            }, 5000);
        };

        $('.social_login a').on('click', function (e) {
            e.preventDefault();
            var login_tab = $('#wrapper .t_com').hasClass('t_on') ? 'c' : 'p',
                target = $(e.currentTarget),
                provider = target.data('provider'),
                label = login_tab === 'c' ? 'com_login_' + provider : 'per_login_' + provider
            ;

            loggingEventAndTagManager(['login', 'm_login_page', label, ''], ['ga_lead', 'login', 'm_login_page', label]);
            location.href = target.prop('href') + '&login_type=' + login_tab;
        });

    });

    $(function () {
        var agent = navigator.userAgent;
        if (agent.match(/Android/) != null) {
            $(".pw-info").css({"left": "89px", "top": "82px"});
        }

        $("#autologin").click(function () {
            if ($("#autologin").is(":checked")) {
                $(".pw-info").css("display", "block");
            } else {
                $(".pw-info").css("display", "none");
            }
        });
    });

    toggleCheckbox('id');
    toggleCheckbox('autologin');

</script>
<svg xmlns="http://www.w3.org/2000/svg" style="display:none">
    <symbol id="icon_login_naver"  viewBox="0 0 19 19" fill="none">
        <path d="M12.8712 9.83355L6.19707 0.199951H0.665771V18.2H6.46038V8.56635L13.1345 18.2H18.6658V0.199951H12.8712V9.83355Z" fill="white"/>
    </symbol>
    <symbol id="icon_login_kakao" viewBox="0 0 24 21" fill="none">
        <path d="M12 0C5.64713 0 0.5 4.04373 0.5 9.03593C0.5 12.2832 2.68198 15.1323 5.95676 16.7252C5.71634 17.6157 5.08616 19.958 4.95866 20.4576C4.80203 21.0802 5.18815 21.0694 5.4395 20.9028C5.63621 20.7725 8.59043 18.7742 9.86538 17.9126C10.5575 18.0139 11.2715 18.0682 12 18.0682C18.3529 18.0682 23.5 14.0245 23.5 9.03232C23.5 4.04011 18.3529 0 12 0Z" fill="#181600"/>
    </symbol>
    <symbol id="icon_login_google" viewBox="0 0 20 20" fill="none">
        <path fill-rule="evenodd" clip-rule="evenodd" d="M19.999 10.2272C19.999 9.51783 19.9336 8.83673 19.8135 8.18201H10.2039V12.0501H15.6955C15.459 13.3002 14.74 14.359 13.6595 15.0684V17.5771H16.9576C18.8868 15.8362 20 13.2728 20 10.2272H19.999Z" fill="#4285F4"/>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M10.2034 20C12.9583 20 15.2682 19.1041 16.9562 17.5771L13.6581 15.0684C12.744 15.6685 11.576 16.0227 10.2024 16.0227C7.54456 16.0227 5.29523 14.2639 4.49259 11.9003H1.08496V14.4909C2.76426 17.7589 6.21419 20 10.2034 20Z" fill="#34A853"/>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M4.49384 11.8995C4.29006 11.2995 4.17374 10.6589 4.17374 9.99942C4.17374 9.33999 4.29006 8.69939 4.49384 8.09931V5.50867H1.08525C0.394112 6.85863 0 8.38569 0 9.99942C0 11.6132 0.394112 13.1402 1.08525 14.4902L4.49384 11.8995Z" fill="#FBBC05"/>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M10.2034 3.97734C11.701 3.97734 13.0468 4.48228 14.1041 5.47237L17.0311 2.60383C15.2634 0.991037 12.9535 0 10.2034 0C6.21419 0 2.76426 2.24114 1.08496 5.50911L4.49355 8.09975C5.2962 5.73615 7.54552 3.97734 10.2034 3.97734Z" fill="#EA4335"/>
    </symbol>
    <symbol id="icon_login_facebook" viewBox="0 0 12 22" fill="none">
        <path d="M3.78947 22H7.78947V12.3025H11.4926L11.8779 8.64366C11.8779 8.64366 11.9579 8.46385 11.5537 8.46385H7.78947V5.70208C7.78947 5.70208 7.62316 3.61509 9.78947 3.61509H12V0.384594C12 0.384594 11.0484 -0.0194701 8.74526 0.000733132C8.74526 0.000733132 6.71368 -0.0235107 5.12421 1.43516C5.12421 1.43516 3.78947 2.5827 3.78947 3.88379V8.46385H0V12.3025H3.78947V22Z" fill="white"/>
    </symbol>
    <symbol id="icon_login_apple" width="20" height="23" viewBox="0 0 20 23" fill="none">
        <path fill-rule="evenodd" clip-rule="evenodd" d="M18.8447 7.88424C17.6485 6.7426 16.6063 5.63891 14.4064 5.52401C12.6308 5.44811 11.8205 6.51385 10.1604 6.5518C8.61681 6.58975 8.73226 5.37221 5.52856 5.71481C2.74924 6.0184 0.317328 8.75918 0.510811 12.6036C0.704295 16.7528 3.63755 22.5 6.37732 22.5C8.30681 22.462 8.77075 21.5481 10.3528 21.5481C12.3208 21.5481 12.7847 22.6897 14.3283 22.461C16.9911 22.0804 19.5 17.9313 19.5 16.5999C18.0334 15.8388 16.5667 14.5443 16.3733 12.3749C16.2193 10.2055 17.5694 8.83508 18.8437 7.88319L18.8447 7.88424Z" fill="white"/>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M9.62073 5.8287C9.42724 4.30652 10.4695 0.994394 14.1371 0.5C14.5615 3.04998 12.4385 5.9805 9.62073 5.8287Z" fill="white"/>
    </symbol>
</svg>


    </div>
        
    <div id="dimmed" class="sri_dimmed" style="display:none;"></div>
        
        
    <script type="text/javascript">
    var isPersonLogin = false;
    var isCompanyLogin = false;
    var isIOS = false;
    var scrap_use_layer = true;
    var thisController = 'login';
</script>
<script src="js/quick-applyc9f5.js?v=20230706163201"></script>
<div id="quick_apply_layer" class="wrap_quick_apply" style="display:none;position:absolute;top:0;left:0;width:100%;height:100vh;z-index: 1020" reload="n">
    <iframe id="quick_apply_frame" name="quick_apply_frame" src="#" style="display:none;width:100%;height:100%;position: fixed;bottom: 0;left:0" scrolling="no" frameborder="0" allowtransparency="true" title="입사지원" showLayer="Y" ></iframe>
</div>
<div class="once_layer_dimmed" style="display:none;width:100%;height:100%;"></div>
<input type="hidden" name="openResumeCheck" id="openResumeCheck">

<!-- WMG-19808 -->
<div id="quick_recommend_layer" class="floating_layer type01 hidden"></div>
<div id="quick_recommend_dim_floating" class="dim_floating" onclick="hideFloatingDim()"></div>

<!-- //WMG-19808 -->
<div id="mobile_event_layer" style="display: none;"></div>
<a name="link_resume" id="link_resume" href="#" target="_blank"></a>    <script type="text/javascript">
(function() {
  var pszProto = (("https:" == document.location.protocol) ? "https://www.saramin.co.kr/js/" : "//www.saraminimage.co.kr/js/");
  document.write(unescape("%3Cscript src='" + pszProto + "wl6.js' type='text/javascript'%3E%3C/script%3E"));
})();
</script>

<script type="text/javascript">
_n_sid = "saramin_mobile";
_n_uid_cookie = "UID";
_n_info1_cookie = "Mtype";
n_logging();
</script>

<script type="text/javascript">
	function n_trackEvent(category, action, opt_label, opt_value, opt_noninteraction) {
	    var l = document.location;
	    var url = l.protocol + '//' + l.host + '/trackEvent?category=' + category + '&action=' + action;
	    var label = opt_label || '';
	    var value = opt_value || '';
	    url = url + '&opt_label=' + label + '&opt_value=' + value;
	    n_click_logging(url, l.href);
	    try {
	        _gaq.push(['_trackEvent', category, action, opt_label, opt_value, opt_noninteraction]);
	        ga('send', 'event', category, action, opt_label, opt_value, opt_noninteraction);
	    } catch (_e) {}
	}

	function _hwaClick(cc) {
		n_trackEvent('ADs', 'Click-' + cc);
	}

	function applyTrackEvent(el, opt_category, opt_content, opt_ref, opt_ref_content) {

        try {
            var url         = el.href;
            var category    = opt_category || '';
            var content     = opt_content || '';
            var ref         = opt_ref || '';
            var ref_content = opt_ref_content || '';
            var anchor      = '';

            if ( url.indexOf('#') != -1 ) {
                var splitUrl = url.split('#');
                url = splitUrl[0];
                anchor = splitUrl[1];
            }

            if( url.indexOf('?') < 0 ) {
                url = url + '?t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            } else {
                url = url + '&t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            }

            if ( anchor != '' ) {
                url += '#' + anchor;
            }

            el.href = url;
        } catch (e) {
        }
    }

    function s_trackApply(el, opt_ref, opt_ref_content, opt_ref_scnid, opt_ref_area, opt_etc) {

        try {
            var url         = el.href;
            var ref         = opt_ref || '';
            var ref_content = opt_ref_content || '';
            var ref_scnid   = opt_ref_scnid || '';
            var ref_area   = opt_ref_area || '';
            var anchor      = '';

            var opt = opt_etc || {};

            if ( url.indexOf('#') != -1 ) {
                var splitUrl = url.split('#');
                url = splitUrl[0];
                anchor = splitUrl[1];
            }

            if( url.indexOf('?') < 0 ) {
                url = url + '?t_ref=' + ref + '&t_ref_content=' + ref_content;
            } else {
                url = url + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            }

            if (!!ref_scnid) {
				url += '&t_ref_scnid=' + ref_scnid;
            }

            if (!!ref_area) {
				url += '&t_ref_area=' + ref_area;
            }

            if ( anchor != '' ) {
                url += '#' + anchor;
            }

            if (opt.constructor === Object) {
                for (k in opt) {
                    if (opt.hasOwnProperty(k)) {
                        url += '&' + k + '=' + opt[k];
                    }
                }
            }

            el.href = url;
        } catch (e) {
        }
    }

    function gtmDataLayerPush (flow, label, category, event) {

        category = category  || 'applicant-manage' ;
        event = event || 'ga_lead';

        if(!window['dataLayer'] || typeof window.dataLayer.push !== 'function') {
            return;
        }

        try {
            window.dataLayer.push({
                'event': event,
                'category': category ,
                'event-flow': flow,
                'event-label': label
            });
        } catch (e) {
        }
    }
	// PC 랑 동일하게 사용하기 위해 추가
    function paramReGtmDataLayerPush(event, category, event_flow, event_label) {
        return gtmDataLayerPush(event_flow, event_label, category, event);
    }


</script>

<script type="text/javascript" src="../wcs.naver.net/wcslog.js"> </script>

<script type="text/javascript">
var _nasa={};

if( !!wcs ) {
    wcs_add["wa"] = "s_1d3a45fb0bfe";
    wcs.inflow();
    wcs_do(_nasa);
}
</script>

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        '../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-MK2GBBH');</script>
<!-- End Google Tag Manager -->
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MK2GBBH"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<script type="text/javascript" src="js/firebaseAnalyticsc9f5.js?v=20230706163201"> </script>
            


</body>

<!-- Mirrored from m.saramin.co.kr/login by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Jul 2023 09:14:23 GMT -->
</html>