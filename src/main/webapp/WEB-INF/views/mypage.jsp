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
	<link rel="stylesheet" href="../assets/css/lib/jquery-ui.min.css">
	<link rel="stylesheet" href="../assets/css/lib/swiper-bundle.min.css">
	<link rel="stylesheet" href="../assets/css/setting.css">
	<link rel="stylesheet" href="../assets/css/common.css">
	<script type="text/javascript" src="../assets/js/lib/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="../assets/js/lib/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../assets/js/lib/swiper-bundle.min.js"></script>
	<script type="text/javascript" src="../assets/js/common.js"></script>
	<title>#6_mypage | 마이페이지</title>
	<link rel="stylesheet" href="../assets/css/mypage.css">
</head>

<body>
<!-- 마이페이지 전체팝업 -->
<section class="full_pop mypage on"><!-- 전체팝업 활성화 class="on"추가 -->
	<!-- #header -->
	<header id="head">
		<div class="header_wrap">
			<!-- 뒤로가기 -->
			<div class="tit_ctrl">
				<a href="#n" class="close">
					<span class="blind">닫기</span>
				</a>
			</div>
			<!--// 뒤로가기 -->

			<!-- 타이틀 -->
			<h1>
				<strong>MY PAGE</strong>
			</h1>
			<!--// 타이틀 -->
		</div>
	</header>
	<!--// #header -->

	<!-- #CONTENTS -->
	<div id="content">
		<div class="sub">
			<div class="my_wrap">
				<!-- 프로필이미지 -->
				<div class="profile">
					<a href="#n">
						<figure class="img">
							<img src="../assets/image/common/my_profile_none.png" alt="">
						</figure>
					</a>
				</div>
				<!--// 프로필이미지 -->

				<!-- 프로필정보 -->
				<div class="pro_info">
					<div class="group">
						<div class="item">
							<p class="label">이름</p>
							<div class="cotn">
								<p class="txt">칩칩스스</p>
							</div>
						</div>
						<div class="item">
							<p class="label">ID</p>
							<div class="cotn">
								<div class="pw_group">
									<p class="txt"  id = "login_id">hjtest0403</p>
									<a href="changePassword" class="btn_pw">비밀번호 변경</a>
								</div>
							</div>
						</div>
						<div class="item">
							<p class="label">닉네임</p>
							<div class="cotn">
								<div class="nick_wrap">
									<input type="text" name = "nickname" id = "nickname" value="헤이칩스">
									<button type="button" id = "changeNickname"></button>
								</div>
							</div>
						</div>
						<div class="item">
							<p class="label">휴대폰</p>
							<div class="cotn">
								<p class="txt">01011223344</p>
							</div>
						</div>
						<div class="item">
							<p class="label">wallet</p>
							<div class="cotn">
								<div class="btn_wrap">
									<a href="#n" class="btn color_type4 not_hover">Wallet으로 연결하기</a>
								</div>
							</div>
						</div>
					</div>
					<div class="group link_grp">
						<p class="tit">고객센터</p>
						<div class="item">
							<a href="#n" class="my_link">1 : 1 문의</a>
						</div>
						<div class="item">
							<a href="6_mypage_04.html" class="my_link">서비스 약관</a>
						</div>
					</div>
					<div class="group link_grp">
						<p class="tit">기타</p>
						<div class="item">
							<a href="#n" class="my_link btn_pop" open-pop="my_pop_01">로그아웃</a>
						</div>
						<div class="item">
							<p class="label">현재 버전</p>
							<div class="cotn">
								<p class="txt ver">1.1.3</p>
							</div>
						</div>
						<div class="item">
							<a href="#n" class="my_link btn_pop" open-pop="my_pop_02">회원 탈퇴</a>
						</div>
					</div>
				</div>
				<!--// 프로필정보 -->
			</div>
		</div>
	</div>
	<!--// #CONTENTS -->
</section>
<!--// 마이페이지 전체팝업 -->

<!-- 로그아웃 팝업 -->
<section class="popup my_pop_01"><!-- 팝업 활성화시 style="display:block" -->
	<div class="cotn">
		<div class="img_area i_noti">
			<figure class="img">
				<img src="../assets/image/common/icon_noti_gr.svg">
			</figure>
		</div>
		<p class="txt">로그아웃 하시겠습니까?</p>
		<div class="btn_wrap db">
			<a href="#n" class="btn color_type4">
				<span>확인</span>
			</a>
			<a href="#n" class="btn color_type3 close">
				<span>취소</span>
			</a>
		</div>
	</div>
</section>
<!--// 로그아웃 팝업 -->

<!-- 탈퇴 팝업 -->
<section class="popup my_pop_02"><!-- 팝업 활성화시 style="display:block" -->
	<div class="cotn">
		<div class="img_area i_noti">
			<figure class="img">
				<img src="../assets/image/common/icon_noti_red.svg">
			</figure>
		</div>
		<p class="txt">정말 탈퇴하시겠습니까?<br>탈퇴 시 게시글이 모두 삭제됩니다.</p>
		<div class="btn_wrap db">
			<a href="#n" class="btn color_type7">
				<span>확인</span>
			</a>
			<a href="#n" class="btn color_type8 close">
				<span>취소</span>
			</a>
		</div>
	</div>
</section>
<!--// 탈퇴 팝업 -->
</body>

<script>


	$(document).ready(function(){

		var cookieValue = getCookieValue("id");
		console.log("내가 만든 쿠키~", cookieValue);
		getUserInfo()




	});

	const getCookieValue = (name) => (
			document.cookie.match('(^|;)\\s*' + name + '\\s*=\\s*([^;]+)')?.pop() || ''
	)

	function getUserInfo(){
		let userTableId = getCookieValue("id")

		// let dataValue = {
		// 	"id" : temp_id
		// }


		$.ajax({
			type: "POST",
			url: "http://localhost:8080/travelboard/getUserInfo",
			data: JSON.stringify({ "id": userTableId }),
			contentType: "application/json",
			dataType: "json",
			success: function(data) {
				console.log("data", data);
				setUserInfo(data);
			},
			error: function(xhr, textStatus, errorThrown) {
				alert("유저 정보 가져오기에 실패하였습니다.");
				console.log("XHR status: " + xhr.status);
				console.log("Text status: " + textStatus);
				console.log("Error thrown: " + errorThrown);
				console.log("Response text: " + xhr.responseText);
			}
		});


	}

	function setUserInfo(prop){

		document.getElementById("login_id").innerText = prop.login_id;

		$('input[name=nickname]')[0].value = prop.nickname;

	}
	$(".close").on("click", function(){
		location.href = "home";



	});

	$("#changeNickname").on("click", function(){


		const nick = $("#nickname").val()
		let dataValue = {
			"id" : getCookieValue("id"),
			"nickname" : nick
		}
		console.log(dataValue)

		$.ajax({
			type : "POST",

			url : "http://localhost:8080/travelboard/changeNickname",
			data : JSON.stringify(dataValue),
			contentType:"application/json",
			dataType: "json",
			success: function(data) {
				console.log("data",data)
				alert("닉네임이 변경되었습니다.")
				location.href = "mypage";


			},


			error: function(xhr, textStatus, errorThrown) {
				alert("닉네임 변경에 실패하였습니다.")
				console.log("XHR status: " + xhr.status);
				console.log("Text status: " + textStatus);
				console.log("Error thrown: " + errorThrown);
				console.log("Response text: " + xhr.responseText);
			}
		});




	});











</script>


</html>
