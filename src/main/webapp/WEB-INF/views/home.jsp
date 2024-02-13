<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");
	response.setDateHeader("Expires",0);
	if (request.getProtocol().equals("HTTP/1.1"))
		response.setHeader("Cache-Control", "no-cache");
%>
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



	<!-- 임시로 howon asset main.css로 변경 -->
	<link href="${path}/assets/assets_howon/css/main.css" rel="stylesheet"/>





</head>

<body>
<!-- #WRAP -->
<div id="wrap">
	<!-- #header -->
	<header id="header">
		<div class="header_wrap">
			<!-- 타이틀 -->
			<h1 class="logo">
				<a href="home.html">
				<link href="${path}/assets/assets_howon/css/main.css" rel="stylesheet"/>
				    <img src="${path}/assets/assets_howon/image/logo_remove_title_svg.svg" alt="title" style="width:150%">

					<!-- <img src="../assets/assets_howon/image/logo_remove_title_svg.svg" alt="CHIPSTER"
					style="width:150%"


					> -->


				</a>
			</h1>
			<!--// 타이틀 -->

			<!-- 버튼 -->
			<div class="btn_area">
				<div class="btn_head btn_my">
					<a href="mypage">
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
		<div class="main">
			<!-- QuickMenu -->
			<div class="quick_wrap">
				<ul>
					<li>
						<a href="boardList">
							<img src="${path}/assets/image/common/icon_quick_01.png" alt="내가 가진 여행지">
							<span>내가 저장한 여행지</span>
						</a>
					</li>
					<li>
						<a href="mylocal">
							<img src="${path}/assets/image/common/icon_quick_02.svg" alt="내 주변 찾기">
							<span>내 주변 찾기</span>
						</a>
					</li>
					<li>
						<a href="search">
							<img src="${path}/assets/image/common/icon_srch_bk.svg" alt="이름으로 찾기">
							<span>이름으로 찾기</span>
						</a>
					</li>
					<li>
						<a href="studio">
							<img src="${path}/assets/image/common/icon_quick_04.svg" alt="내가 만들기">
							<span>내가 만들기</span>
						</a>
					</li>
				</ul>

				<!-- qr인증버튼 -->
<%--				<div class="btn_wrap">--%>
<%--					<a href="#n" class="btn btn_qr" >--%>
<%--						<span>QR코드 인증</span>--%>
<%--					</a>--%>
<%--				</div>--%>
				<!--// qr인증버튼 -->
			</div>
			<!--// QuickMenu -->

			<!-- 새로나온여행지 -->
			<!-- style 수정 필요!!! 240131 -->
			<div class="pack_slide_wrap" style = "height:210px">
				<h2 class="tit_15">새로 나온 여행지</h2>

				<!-- 슬라이드 -->
				<div class="swiper">
					<div class="swiper-wrapper">



					</div>
				</div>
				<!--// 슬라이드 -->
			</div>
			<!--// 새로나온여행지 -->

			<!-- 인기여행지 -->
			<div class="pack_popular">
				<h2 class="tit_15">인기 여행지</h2>

				<!-- 목록:리스트형 -->
				<ul class="pack_li">

				</ul>
				<!--// 목록:리스트형 -->

				<!-- 더보기 -->
				<div class="btn_wrap">
					<a href="#n" class="btn btn_more">
						<span>더보기</span>
					</a>
				</div>
				<!--// 더보기 -->
			</div>
			<!--// 인기여행지 -->
		</div>
	</div>
	<!--// #CONTENTS -->

	<!-- 메인탭바 -->
	<aside class="tab_bar main">
		<div class="cotn">
			<div class="tab_btn home on"><!-- 활성화시 class="on" 추가 -->
				<a href="home">
					<span class="blind">홈</span>
				</a>
			</div>
			<div class="tab_btn pack">
				<a href="boardList">
					<span class="blind">my pack</span>
				</a>
			</div>
			<div class="tab_btn add">
				<a href="studio">
					<span class="blind">스튜디오</span>
				</a>
			</div>
		</div >
	</aside>
	<!--// 메인탭바 -->
</div>
<script type="text/javascript" src="${path}/assets/js/getPackList.js"></script>
<script type="text/javascript" src="${path}/assets/js/lib/swiper-bundle.min.js"></script>
<script type="text/javascript" src="${path}/assets/js/common.js"></script>
<script>
	getNewPack()
	getPopularPack()

	$(document).ready(function(){
		const getCookieValue = (name) => (
				document.cookie.match('(^|;)\\s*' + name + '\\s*=\\s*([^;]+)')?.pop() || ''
		)
		var cookieValue = getCookieValue("id");
		console.log("내가 만든 쿠키~", cookieValue);

		
	});








</script>

<!--// #WRAP -->
</body>





</html>
