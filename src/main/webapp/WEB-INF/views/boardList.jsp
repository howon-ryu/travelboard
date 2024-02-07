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
	<link rel="stylesheet" href="${path}/assets/css/lib/jquery-ui.min.css">
	<link rel="stylesheet" href="${path}/assets/css/lib/swiper-bundle.min.css">
	<link rel="stylesheet" href="${path}/assets/css/setting.css">
	<link rel="stylesheet" href="${path}/assets/css/common.css">
	<script type="text/javascript" src="${path}/assets/js/lib/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="${path}/assets/js/lib/jquery-ui.min.js"></script>
	<script type="text/javascript" src="${path}/assets/js/lib/swiper-bundle.min.js"></script>
	<script type="text/javascript" src="${path}/assets/js/common.js"></script>
	<title>#3_my_pack | 리스트형</title>
	<link rel="stylesheet" href="${path}/assets/css/pack.css">
</head>

<body>
<!-- #WRAP -->
<div id="wrap">
	<!-- #header -->
	<header id="header">
		<div class="header_wrap">
			<!-- 뒤로가기 -->
			<div class="tit_ctrl">
				<a href="home" class="back">
					<span class="blind">뒤로가기</span>
				</a>
			</div>
			<!--// 뒤로가기 -->

			<!-- 타이틀 -->
			<h1>
				MY <strong>TRAVEL</strong>
			</h1>
			<!--// 타이틀 -->

			<!-- 버튼 -->
			<div class="btn_area">
				<div class="btn_head btn_my">
					<a href="6_mypage_01.html">
						<span class="blind">마이페이지</span>
					</a>
				</div>
			</div>
			<!--// 버튼 -->
		</div>
	</header>
	<!--// #header -->

	<!-- #CONTENTS -->
	<div id="contents">
		<div class="sub">
			<!-- 여행지현황 -->
			<div class="pack_board">
				<figure class="img">
					<img src="${path}/assets/assets_howon/image/logo_remove_icon.png" >
				</figure>
				<div class="board_tit">
					<p>내가 저장한 여행지</p>
					<span>총<strong>3</strong>개</span>
				</div>

			</div>
			<!--// 여행지현황 -->

			<!-- 보유여행지목록 -->
			<div class="pack_list_wrap">
				<!-- 정렬 -->
				<div class="sort_area">
					<a  class="sort_li on"><!-- 활성화시 class="on" 추가 -->
						<span class="blind">리스트형</span>
					</a>
					<a  class="sort_gallery not_hover"><!-- 활성화시 class="on" 추가 -->
						<span class="blind">갤러리형</span>
					</a>
				</div>
				<!--// 정렬 -->

				<!-- 목록:리스트형 -->
				<ul class="pack_li" id = "pack_li">

				</ul>
				<!--// 목록:리스트형 -->
			</div>
			<!--// 보유여행지목록 -->
		</div>
	</div>
	<!--// #CONTENTS -->

	<!-- 메인탭바 -->
	<aside class="tab_bar main">
		<div class="cotn">
			<div class="tab_btn home"><!-- 활성화시 class="on" 추가 -->
				<a href="home">
					<span class="blind">홈</span>
				</a>
			</div>
			<div class="tab_btn pack on">
				<a href="3_list_01.html">
					<span class="blind">my travel</span>
				</a>
			</div>
			<div class="tab_btn add">
				<a href="5_studio_01.html">
					<span class="blind">스튜디오</span>
				</a>
			</div>
		</div >
	</aside>
	<!--// 메인탭바 -->
</div>
<!--// #WRAP -->
</body>
<script type="text/javascript" src="${path}/assets/js/getPackList.js"></script>


<script>


	$(document).ready(function(){
		const getCookieValue = (name) => (
				document.cookie.match('(^|;)\\s*' + name + '\\s*=\\s*([^;]+)')?.pop() || ''
		)
		var cookieValue = getCookieValue("id");
		console.log("내가 만든 쿠키~", cookieValue);
		getMyPickPack()

	});
	function gotopack(pack_id){
		// console.log(document.getElementById('pack_form'+pack_id))
		document.getElementById('pack_form'+pack_id).submit();
	}


</script>



</html>
