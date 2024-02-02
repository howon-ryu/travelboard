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
							<span>내가 만든 여행지</span>
						</a>
					</li>
					<li>
						<a href="2_mylocal.html">
							<img src="${path}/assets/image/common/icon_quick_02.svg" alt="내 주변 찾기">
							<span>내 주변 찾기</span>
						</a>
					</li>
					<li>
						<a href="2_search_01.html">
							<img src="${path}/assets/image/common/icon_srch_bk.svg" alt="이름으로 찾기">
							<span>이름으로 찾기</span>
						</a>
					</li>
					<li>
						<a href="5_studio_01.html">
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
						<div class="pack_slide swiper-slide">
							<div class="pack_item">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${path}/assets/image/temp/pack_01.png" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="tit">TravelBoard 공식 No.1 경복궁</p>
								</div>
								<!--// 텍스트영역 -->
								<a href="4_pack_01.html" class="go_view">
									<span class="blind">상세이동</span>
								</a>
							</div>
						</div>
						<div class="pack_slide swiper-slide">
							<div class="pack_item">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="../assets/image/temp/pack_02.png" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="tit">졸업생이 알려주는 고양이 주요 출몰 지역</p>
								</div>
								<!--// 텍스트영역 -->
								<a href="4_pack_01.html" class="go_view">
									<span class="blind">상세이동</span>
								</a>
							</div>
						</div>
						<div class="pack_slide swiper-slide">
							<div class="pack_item">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${path}/assets/image/temp/pack_03.png" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="tit">일이삼사오육칠팔구십일이삼사오육칠팔구십</p>
								</div>
								<!--// 텍스트영역 -->
								<a href="4_pack_01.html" class="go_view">
									<span class="blind">상세이동</span>
								</a>
							</div>
						</div>
						<div class="pack_slide swiper-slide">
							<div class="pack_item">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${path}/assets/image/temp/pack_04.png" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="tit">나만아는 서울근교 맛집 카페 모음</p>
								</div>
								<!--// 텍스트영역 -->
								<a href="4_pack_01.html" class="go_view">
									<span class="blind">상세이동</span>
								</a>
							</div>
						</div>
						<div class="pack_slide swiper-slide">
							<div class="pack_item">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${path}/assets/image/temp/pack_04.png" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="tit">나만아는 서울근교 맛집 카페 모음</p>
								</div>
								<!--// 텍스트영역 -->
								<a href="4_pack_01.html" class="go_view">
									<span class="blind">상세이동</span>
								</a>
							</div>
						</div>
						<div class="pack_slide swiper-slide">
							<div class="pack_item">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${path}/assets/image/temp/pack_03.png" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="tit">일이삼사오육칠팔구십일이삼사오육칠팔구십</p>
								</div>
								<!--// 텍스트영역 -->
								<a href="4_pack_01.html" class="go_view">
									<span class="blind">상세이동</span>
								</a>
							</div>
						</div>
						<div class="pack_slide swiper-slide">
							<div class="pack_item">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${path}/assets/image/temp/pack_04.png" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="tit">나만아는 서울근교 맛집 카페 모음</p>
								</div>
								<!--// 텍스트영역 -->
								<a href="4_pack_01.html" class="go_view">
									<span class="blind">상세이동</span>
								</a>
							</div>
						</div>
						<div class="pack_slide swiper-slide">
							<div class="pack_item">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${path}/assets/image/temp/pack_03.png" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="tit">일이삼사오육칠팔구십일이삼사오육칠팔구십</p>
								</div>
								<!--// 텍스트영역 -->
								<a href="4_pack_01.html" class="go_view">
									<span class="blind">상세이동</span>
								</a>
							</div>
						</div>
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
				<a href="3_list_01.html">
					<span class="blind">my pack</span>
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

<script type="text/javascript" src="${path}/assets/js/home_init.js"></script>

<script>
	$(document).ready(function(){
		const getCookieValue = (name) => (
				document.cookie.match('(^|;)\\s*' + name + '\\s*=\\s*([^;]+)')?.pop() || ''
		)
		var cookieValue = getCookieValue("id");
		console.log("내가 만든 쿠키~", cookieValue);

	});






</script>



</html>
