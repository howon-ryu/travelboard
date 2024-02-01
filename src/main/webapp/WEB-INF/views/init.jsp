<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">

	<meta name="viewport" content="width=device-width, viewport-fit=cover, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telephone=no, address=no, email=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="default">

	<title>#HOME</title>
	<link rel="stylesheet" href="${path}/assets/css/lib/jquery-ui.min.css">
	<link rel="stylesheet" href="${path}/assets/css/lib/swiper-bundle.min.css">
	<link rel="stylesheet" href="${path}/assets/css/setting.css">
	<link rel="stylesheet" href="${path}/assets/css/common.css">

	<script type="text/javascript" src="${path}/assets/js/lib/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="${path}/assets/js/lib/jquery-ui.min.js"></script>
	<script type="text/javascript" src="${path}/assets/js/lib/swiper-bundle.min.js"></script>
	<script type="text/javascript" src="${path}/assets/js/common.js"></script>

	<!-- 임시로 howon asset main.css로 변경 -->
	<link href="${path}/assets/assets_howon/css/main.css" rel="stylesheet"/>
	<link rel="stylesheet" href="${path}/assets/assets_howon/css/init.css">





</head>

<body>
<div class="container_popup" style="">

	<!-- 220712 start 나오지 않아야 함01 -->
<!-- <header id="pop_top">
      <nav>
        <span id="member_close" class="close"></span>
      </nav>
    </header> -->
<!-- 220712 end 나오지 않아야 함 01 -->
<!-- 220712_add.css 수정함 -->
<!-- 220712 서버에 올리는 부분 start -->
<div id="cu10_a" class="cu10">
  <!-- 221031 배경 비디오로 넣기 test  start-->
  <!--
        <video id="cu11_video" playsinline muted autoplay loop preload="metadata" src="disk01/tpl01/p0800/images/cu11_video_bg.mp4#t=0.5">
          <source src="disk01/tpl01/p0800/images/cu11_video_bg" type="video/mp4">
          <strong>Your browser does not support the video tag.</strong>
        </video>
        -->
  <!-- 221031 배경 비디오로 넣기 test  end-->
  <div class="cu10_a_wrap">
    <div class="mb_title sg_app">
      <h2>****<span>의</span> TravelBoard</h2>
      <h3>여행을 즐기는 새로운 방법</h3>
    </div>
    <div class="mb_title chst_app">
      <h2><span>내 여행의 </span>새로운 방법, TravelBoard</h2>
      <h3>나에게만 보이는 여행지의 숨겨진 카드,<br> 보물카드를 찾으러 가볼까요?</h3>
    </div>
    <div class="mb_exp">
      <img id="chst_icon" src="../images/cu10_img_cc.png" alt="">
      <!-- 221031  class 수정 완료 했습니다. 운아 -->
      <!--
        <p class="sg_app_inblok">3초면 칩디스크를 경험할 수 있어요!</p>
        <p class="chst_app_inblok">어떤 열쇠로 포탈을 여시겠습니까?</p>
      -->
    </div>
    <div class="mb_content">
      <ul class="mb_sns">
        <li id="li-kakao" onclick="javascript:_Snslogin('kakao');">
          <a id="kakao" href="#" class="btn_login">
            <img src="${path}/assets/image/login/cu10_ic_kakao.png" alt=""><span class="kakao">카카오로 로그인</span>
          </a>
        </li>
        <li id="li-apple" style="display: none;">
          <a id="apple" href="javascript:_Snslogin('apple');" class="btn_login">
            <img src="${path}/assets/image/login/cu10_ic_apple.png" alt=""><span class="apple">Apple로 로그인</span>
          </a>
        </li>
        <li id="naverIdLogin" onclick="javascript:_Snslogin('naver');">
          <a id="naverIdLogin_loginButton" href="#" class="btn_login">
            <img src="${path}/assets/image/login/cu10_ic_naver.png" alt=""><span class="naver">네이버로 로그인</span>
          </a>
        </li>
      </ul>
      <button class="btn_login own" onclick="goToLogin()">
        <img src="${path}/assets/image/login/cu01_ic_login_black.png" alt="">보유 계정으로 로그인
      </button>
      <button class="btn_bt_line" onclick="goToJoin()"><img src="${path}/assets/image/login/cu10_ic_write.png" alt="">
        <span>빠른 회원 가입</span></button>
      <p class="version_info">version </p>
    </div>
  </div>
</div>

<!-- 서버에 올리는 부분 end -->

<!-- 221031 배경영상 강제 실행 코드 -->
<script>
  var vid = document.getElementById("cu11_video");

  function playVid() {
    vid.play();
  }

  function pauseVid() {
    vid.pause();
  }

  function goToJoin(){
    location.href = "join"
  }
  function goToLogin(){
      location.href = "login"
  }


</script></div>


</body>





</html>
