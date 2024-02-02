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
				MY <strong>PACK</strong>
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
			<!-- 팩현황 -->
			<div class="pack_board">
				<figure class="img">
					<img src="${path}/assets/image/common/chip_01.png" >
				</figure>
				<div class="board_tit">
					<p>내가 보유한 팩</p>
					<span>총<strong>3</strong>개</span>
				</div>
				<div class="allca">
					<figure class="img">
						<img src="${path}/assets/image/common/allca.svg" alt="allca">
					</figure>
					<span>
						<strong>1</strong>개
					</span>
				</div>
			</div>
			<!--// 팩현황 -->

			<!-- 보유팩목록 -->
			<div class="pack_list_wrap">
				<!-- 정렬 -->
				<div class="sort_area">
					<a href="3_list_01.html" class="sort_li on"><!-- 활성화시 class="on" 추가 -->
						<span class="blind">리스트형</span>
					</a>
					<a href="3_list_02.html" class="sort_gallery"><!-- 활성화시 class="on" 추가 -->
						<span class="blind">갤러리형</span>
					</a>
				</div>
				<!--// 정렬 -->

				<!-- 목록:리스트형 -->
				<ul class="pack_li">
					<li>
						<div class="pack_group">
							<div class="cotn">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${path}/assets/image/temp/pack_02.png" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="nickname">닉네임</p>
									<p class="tit">졸업생이 알려주는 여행지 고양이 주요 출몰 지역 고양이 주요 출몰 지역</p>
									<div class="addr">
										<span class="cnt">12</span>
										<p class="txt">/ 경기도 고양시 덕양구 항공대학로 76 외</p>
									</div>
									<div class="pack_info">
										<div class="count">
											<p>
												<em class="current">28</em> / <em class="tot">999</em>
											</p>
										</div>
										<div class="chat">
											<span>1,045</span>
										</div>
									</div>
								</div>
								<!--// 텍스트영역 -->
							</div>
							<div class="card_count">
								<div class="info_wrap">
									<p class="tot_card">
										총<strong>1</strong>카드
									</p>
									<p class="date">
										최근 획득 일시 <em>23.03.27 PM 4:49</em>
									</p>
								</div>
								<div class="bar">
									<div class="tot_line">
										<span class="start">0</span>
										<span class="end">12</span>
										<div class="current_line">
											<span class="crt_card">6</span>
										</div>
									</div>
								</div>
							</div>
							<a href="4_pack_01.html" class="go_view">
								<span class="blind">상세이동</span>
							</a>
						</div>
					</li>
					<li>
						<div class="pack_group">
							<div class="cotn">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${path}/assets/image/temp/pack_01.png" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="nickname">Chipster Original</p>
									<p class="tit">칩스터 공식 No.1 경복궁</p>
									<div class="addr">
										<span class="cnt">12</span>
										<p class="txt">/ 서울특별시 종로구 사직로 161 외</p>
									</div>
									<div class="pack_info">
										<div class="count">
											<p>
												<em class="current">999</em> / <em class="tot">무제한</em>
											</p>
										</div>
										<div class="chat">
											<span>23.4 K</span>
										</div>
									</div>
								</div>
								<!--// 텍스트영역 -->
							</div>
							<div class="card_count">
								<div class="info_wrap">
									<p class="tot_card">
										총<strong>1</strong>카드
									</p>
									<p class="date">
										최근 획득 일시 <em>23.03.27 PM 4:49</em>
									</p>
								</div>
								<div class="bar">
									<div class="tot_line">
										<span class="start">0</span>
										<span class="end">12</span>
										<div class="current_line">
											<span class="crt_card">5</span>
										</div>
									</div>
								</div>
							</div>
							<a href="4_pack_01.html" class="go_view">
								<span class="blind">상세이동</span>
							</a>
						</div>
					</li>
					<li class="allca"><!-- class="allca"추가 -->
						<div class="pack_group">
							<div class="cotn">
								<!-- 이미지영역 -->
								<div class="img_area">
									<figure class="img">
										<img src="${path}/assets/image/temp/pack_03.png" >
									</figure>
									<figure class="label_allca">
										<img src="${path}/assets/image/common/allca.svg" >
									</figure>
								</div>
								<!--// 이미지영역 -->

								<!-- 텍스트영역 -->
								<div class="txt_area">
									<p class="nickname">Chipster Original</p>
									<p class="tit">칩스터 공식 No.1 경복궁</p>
									<div class="addr">
										<span class="cnt">12</span>
										<p class="txt">/ 서울특별시 종로구 사직로 161 외</p>
									</div>
									<div class="pack_info">
										<div class="count">
											<p>
												<em class="current">999</em> / <em class="tot">무제한</em>
											</p>
										</div>
										<div class="chat">
											<span>23.4 K</span>
										</div>
									</div>
								</div>
								<!--// 텍스트영역 -->
							</div>
							<div class="card_count">
								<div class="info_wrap">
									<p class="tot_card">
										총<strong>1</strong>카드
									</p>
									<p class="date">
										최근 획득 일시 <em>23.03.27 PM 4:49</em>
									</p>
								</div>
								<div class="bar">
									<div class="tot_line">
										<span class="start">0</span>
										<span class="end">24</span>
										<div class="current_line">
											<span class="crt_card">24</span>
										</div>
									</div>
								</div>
							</div>
							<a href="4_pack_01.html" class="go_view">
								<span class="blind">상세이동</span>
							</a>
						</div>
					</li>
				</ul>
				<!--// 목록:리스트형 -->
			</div>
			<!--// 보유팩목록 -->
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
</html>