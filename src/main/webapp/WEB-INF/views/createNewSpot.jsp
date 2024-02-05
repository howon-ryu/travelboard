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
	<link rel="stylesheet" href="../assets/css/lib/jquery-ui.min.css">
	<link rel="stylesheet" href="../assets/css/lib/swiper-bundle.min.css">
	<link rel="stylesheet" href="../assets/css/setting.css">
	<link rel="stylesheet" href="../assets/css/common.css">
	<script type="text/javascript" src="../assets/js/lib/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="../assets/js/lib/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../assets/js/lib/swiper-bundle.min.js"></script>
	<script type="text/javascript" src="../assets/js/common.js"></script>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=3tlrvyabw0"></script>
	<title>#5_studio | 정보입력전</title>
	<link rel="stylesheet" href="${path}/assets/css/studio.css">
</head>

<body>
<!-- #WRAP -->
<div id="wrap">
	<!-- #header -->
	<header id="header">
		<div class="header_wrap">
			<!-- 뒤로가기 -->
			<div class="tit_ctrl">
				<a href="studio" class="back">
					<span class="blind">뒤로가기</span>
				</a>
			</div>
			<!--// 뒤로가기 -->

			<!-- 타이틀 -->
			<h1>
				<strong>SPOT</strong> INFO
			</h1>
			<!--// 타이틀 -->
		</div>
	</header>
	<!--// #header -->

	<!-- #CONTENTS -->
	<div id="contents">
		<div class="sub">
			<!-- 정보입력폼 -->
			<div class="info_form">
				<!-- 여행지커버 -->
				<div class="pack_cover">
					<!-- 등록이미지 -->
					<div class="cover_img none"><!-- 이미지없을경우 class="none"추가 -->
						<img id = "selected_img" src="../assets/image/temp/no_img.png">
					</div>
					<!--// 등록이미지 -->

					<!-- 등록버튼 -->
					<div class="apply_area">
						<div class="txt_wrap">
							<p>여행지 커버 만들기</p>
						</div>
						<div class="info_btn">
							<a href="#n" class="btn pt btn_pop" open-pop="cover_pop">
								<span>사진 올리기</span>
							</a>
							
						</div>
					</div>
					<!--// 등록버튼 -->
				</div>
				<!--// 여행지커버 -->

				<!-- 여행지제목 -->
				<div class="inpt_wrap">
					<p class="tit">여행지 제목</p>
					<input id = "spot_name" type="text" placeholder="여행지 제목을 입력하세요">
				</div>
				<!--// 여행지제목 -->

				<!-- 여행지설명 -->
				<div class="inpt_wrap">
					<p class="tit">여행지 설명</p>
					<textarea id = "spotComment" cols="30" rows="10" placeholder="여행지에 대한 설명을 입력하세요"></textarea>
				</div>
				<!--// 여행지설명 -->

				<div class="spot_loc">
					<!-- 주소입력 -->
					<div class="addr_area">
						<input type="text" placeholder="위치를 설정하세요" >
					</div>
					<!--// 주소입력 -->

					<!-- 지도영역 -->
					<div class="map_area">
						<div id="map" style="width:100%;height:100%;"></div>
						<!-- 지도 -->

						<!--// 선택된위치 -->
					</div>
					<!--// 지도영역 -->

					<a id="goToSelectPosition" class="go_view">
						<span class="blind">위치찾기</span>
					</a>
				</div>




				<!-- 인원제한 -->
				<div class="inpt_wrap inpt_horz" style="visibility: hidden">
					<p class="tit">참여자 수 제한</p>
					<div class="inner_wrap user_wrap">
						<label for="form_chk" class="form_chk">
							<input type="checkbox" id="form_chk">
							<i class="icon"></i>
						</label>
						<div class="user_cnt inactv"><!-- 비활성화시 class="inactv"추가 -->
							<p class="tit">제한 인원 수</p>
							<input type="text" id="user_inpt" placeholder="무제한" disabled>
						</div>
					</div>
				</div>
				<!--// 인원제한 -->

				<!-- 배경음악 -->
				<div class="inpt_wrap inpt_horz" style="visibility: hidden">
					<p class="tit">배경음악</p>
					<div class="inner_wrap">
						<a href="#n" class="play"></a>
						<div class="info_btn">
							<a href="#n" class="btn music btn_full_pop" open-pop="ai_music_pop">
								<span>AI와 함께 만들기</span>
							</a>
						</div>
					</div>
				</div>
				<!--// 배경음악 -->

				<!-- 배경음악 -->
				<div class="inpt_wrap inpt_horz" style="visibility: hidden">
					<p class="tit">상태</p>
					<div class="inner_wrap">
						<select>
							<option>제작 중</option>
							<option>공개</option>
							<option>비공개</option>
						</select>
					</div>
				</div>
				<!--// 배경음악 -->

				<!-- 여행지삭제하기 -->
				<div class="btn_wrap btn_del" style="display: none"><!-- 비활성화 class="inactv" 추가 -->
					<a href="#n" class="btn btn_pop" open-pop="studio_pop_04">
						<span>여행지 삭제하기</span>
					</a>
				</div>
				<!--// 여행지삭제하기 -->
			</div>
			<!--// 정보입력폼 -->

			<div class="btn_wrap btn_fixed" id = "createSpot">
<%--				<a href="studio" class="btn color_type6 inactv"><span>저장하기</span></a><!-- 비활성일경우 class="inactv"추가 -->--%>
				<a  class="btn color_type6 inactv"><span>저장하기</span></a><!-- 비활성일경우 class="inactv"추가 -->
			</div>
		</div>
	</div>
	<!--// #CONTENTS -->
</div>
<!--// #WRAP -->

<!-- 여행지 커버 만들기 팝업 -->
<section class="popup cover_pop"><!-- 팝업 활성화시 style="display:block" -->
	<div class="cotn">
		<p class="tit">여행지 커버 만들기</p>
		<p class="co_txt">운영 정책에 어긋나는 이미지 등록 시<br>이용에 제한이 있을 수 있습니다.</p>
		<ul>
			<li>
				<a href="#n">
					<i class="i_ab"></i>

					<label for = "chooseFile">
					<span>앨범에서 사진 선택</span>
					</label>

					<input id="chooseFile" name="chooseFile" type="file"
						   accept="image/*" onchange="changeImgValue()">


				</a>
			</li>
			<li>
				<a href="#n">
					<i class="i_pt"></i>
					<span>사진 촬영</span>
				</a>
			</li>
			<li>
				<a href="#n">
					<i class="i_file"></i>
					<span>파일 선택</span>
				</a>
			</li>
		</ul>
	</div>
	<a href="#n" class="pop_close close">
		<img src="../assets/image/common/btn_close.svg">
	</a>
</section>
<!--// 여행지 커버 만들기 팝업 -->

<!-- AI로 만들기 전체팝업 -->
<section class="full_pop ai_pop"><!-- 전체팝업 활성화 class="on"추가 -->
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
				AI로 만들기
			</h1>
			<!--// 타이틀 -->
		</div>
	</header>
	<!--// #header -->

	<!-- #CONTENTS -->
	<div id="content">
		<div class="sub">
			<div class="ai_wrap">
				<div class="ai_form">
					<p class="ai_tit">Ai와 함께 직접 이미지를 만들어 사용하세요!</p>
					<div class="textarea">
						<textarea cols="30" rows="10" placeholder="원하는 이미지 설명을 입력하세요"></textarea>
					</div>
					<div class="btn_wrap">
						<a href="#n" class="btn">
							<span>이미지 만들기</span>
						</a>
					</div>
				</div>

				<!-- 이미지 제작결과 -->
				<div class="res_wrap">
					<p class="ai_tit">이미지 제작완료! 원하는 이미지를 골라보세요</p>
					<ul>
						<li>
							<div class="form_rdo">
								<label for="ai_01">
									<figure class="img">
										<img src="../assets/image/temp/ai_01.jpg">
									</figure>
									<input type="radio" name="ai" id="ai_01">
									<span class="icon">
										<i></i>
									</span>
								</label>
							</div>
						</li>
						<li>
							<div class="form_rdo">
								<label for="ai_02">
									<figure class="img">
										<img src="../assets/image/temp/ai_02.jpg">
									</figure>
									<input type="radio" name="ai" id="ai_02" checked>
									<span class="icon">
										<i></i>
									</span>
								</label>
							</div>
						</li>
						<li>
							<div class="form_rdo">
								<label for="ai_03">
									<figure class="img">
										<img src="../assets/image/temp/ai_03.jpg">
									</figure>
									<input type="radio" name="ai" id="ai_03">
									<span class="icon">
										<i></i>
									</span>
								</label>
							</div>
						</li>
						<li>
							<div class="form_rdo">
								<label for="ai_04">
									<figure class="img">
										<img src="../assets/image/temp/ai_04.jpg">
									</figure>
									<input type="radio" name="ai" id="ai_04">
									<span class="icon">
										<i></i>
									</span>
								</label>
							</div>
						</li>
					</ul>
				</div>
				<!--// 이미지 제작결과 -->
			</div>

			<div class="btn_wrap btn_fixed">
				<a href="#n" class="btn color_type6"><span>완료</span></a><!-- 비활성일경우 class="inactv"추가 -->
			</div>
		</div>
	</div>
	<!--// #CONTENTS -->
</section>
<!--// AI로 만들기 전체팝업 -->

<!-- AI로 만들기 전체팝업 -->
<section class="full_pop ai_music_pop"><!-- 전체팝업 활성화 class="on"추가 -->
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
				AI로 배경음악 만들기
			</h1>
			<!--// 타이틀 -->
		</div>
	</header>
	<!--// #header -->

	<!-- #CONTENTS -->
	<div id="content">
		<div class="sub">
			<div class="ai_wrap">
				<div class="ai_form">
					<p class="ai_tit">Ai와 함께 직접 이미지를 만들어 사용하세요!</p>
					<div class="textarea">
						<textarea cols="30" rows="10" placeholder="어떤 음악이면 좋을까요?&#13;&#10;여행지의 성격이나 설명을 적어주세요."></textarea>
					</div>
					<div class="btn_wrap">
						<a href="#n" class="btn">
							<span>음악 만들기</span>
						</a>
					</div>
				</div>

				<!-- 음악 제작결과 -->
				<div class="res_wrap res_music">
					<p class="ai_tit">이미지 제작완료! 원하는 음악을 골라보세요</p>
					<ul>
						<li>
							<div class="form_rdo">
								<div class="music_wrap">
									<figure class="img">
										<img src="../assets/image/temp/music.png">
									</figure>
									<a href="#n" class="m_play">
										<span class="blind">재생</span>
									</a>
								</div>
								<label for="ai_011">
									<input type="radio" name="ai1" id="ai_011" checked>
									<span class="icon">
										<i></i>
									</span>
								</label>
							</div>
						</li>
						<li>
							<div class="form_rdo">
								<div class="music_wrap">
									<figure class="img">
										<img src="../assets/image/temp/music.png">
									</figure>
									<a href="#n" class="m_play">
										<span class="blind">재생</span>
									</a>
								</div>
								<label for="ai_021">
									<input type="radio" name="ai1" id="ai_021">
									<span class="icon">
										<i></i>
									</span>
								</label>
							</div>
						</li>
						<li class="on"><!-- 음악파일 재생시 class="on" 추가 -->
							<div class="form_rdo">
								<div class="music_wrap">
									<figure class="img">
										<img src="../assets/image/temp/music.png">
									</figure>
									<a href="#n" class="m_play">
										<span class="blind">재생</span>
									</a>
								</div>
								<label for="ai_031">
									<input type="radio" name="ai1" id="ai_031">
									<span class="icon">
										<i></i>
									</span>
								</label>
							</div>
						</li>
						<li>
							<div class="form_rdo">
								<div class="music_wrap">
									<figure class="img">
										<img src="../assets/image/temp/music.png">
									</figure>
									<a href="#n" class="m_play">
										<span class="blind">재생</span>
									</a>
								</div>
								<label for="ai_041">
									<input type="radio" name="ai1" id="ai_041">
									<span class="icon">
										<i></i>
									</span>
								</label>
							</div>
						</li>
					</ul>
				</div>
				<!--// 음악 제작결과 -->
			</div>

			<div class="btn_wrap btn_fixed">
				<a href="#n" class="btn color_type6"><span>완료</span></a><!-- 비활성일경우 class="inactv"추가 -->
			</div>
		</div>
	</div>
	<!--// #CONTENTS -->
</section>
<!--// AI로 만들기 전체팝업 -->

<!-- 삭제불가 팝업 -->
<section class="popup studio_pop_04"><!-- 팝업 활성화시 style="display:block" -->
	<div class="cotn">
		<p class="txt">이미 공개된 여행지은<br>삭제 할 수 없습니다.</p>
		<div class="btn_wrap">
			<a href="studio" class="btn color_type4 close">
				<span>확인</span>
			</a>
		</div>
	</div>
	<a href="#n" class="pop_close close">
		<img src="../assets/image/common/btn_close.svg">
	</a>
</section>
<!--// 삭제불가 팝업 -->
</body>


<script>
	$(document).ready(function(){

		let temp_name = getCookieValue("temp_name");
		let temp_comment = getCookieValue("temp_comment");



		let lng = getCookieValue("lng");
		let lat = getCookieValue("lat");
		let temp_tempImgName = getCookieValue("temp_tempImgName");

		console.log(temp_name,temp_comment,lat,lng,temp_tempImgName)

		if(temp_name!=""){
			$('#spot_name').attr('value', temp_name);
		}
		if(temp_comment!=""){
			$('#spotComment').attr('value', temp_comment);
			$('#spotComment').text(temp_comment);
		}

		if(temp_tempImgName!=""){
			var cookieValue = getCookieValue("id");
			document.getElementById("selected_img").src = "http://localhost:8080/assets/image/userUploads/"+cookieValue+"/"+temp_tempImgName+"?a="+Math.random();
		}


	});





	// const getCookieValue = (name) => (
	// 		document.cookie.match('(^|;)\\s*' + name + '\\s*=\\s*([^;]+)')?.pop() || ''
	// )
	let tempImgName=""
	function changeImgValue() {
		console.log("!!!");

		var cookieValue = getCookieValue("id");
		var file_data = $("#chooseFile").prop("files")[0];

		if (!file_data || !file_data.type.match(/image.*/)) {
			console.log("Invalid image file");
			return false;
		}

		var form_data = new FormData();
		form_data.append("user_id", cookieValue);
		form_data.append("file", file_data);

		$.ajax({
			url: "http://localhost:8080/travelboard/uploadImage",

			data: form_data,
			type: "POST",
			contentType: false,
			processData: false,
			cache: false,
			success: function (data) {
				console.log("Image uploaded successfully");
				$('.pop_close').click();
				tempImgName = data;
				select_img(data);
				// Additional actions after successful upload
			},
			error: function (request, status, error) {
				console.log("Error uploading image: " + error);
			}
		});
	}

	function select_img(imgName){
		console.log("selectimg")
		var cookieValue = getCookieValue("id");
		document.getElementById("selected_img").src = "http://localhost:8080/assets/image/userUploads/"+cookieValue+"/"+imgName+"?a="+Math.random();


	}

	$('#goToSelectPosition').on("click",function(){

		let temp_name = $("#temp_name").val()
		let temp_comment = $("#spotComment").val()


		let temp_tempImgName = tempImgName



		if(temp_name != null){


			setCookie("temp_name", temp_name,'1')
		}
		if(temp_comment != null){

			setCookie("temp_comment", temp_comment,'1')
		}
		if(temp_tempImgName != null){

			setCookie("temp_tempImgName", tempImgName,'1')
		}

		location.href='selectPosition';




	})



	$("#createSpot").on("click", function(){
		var cookieValue = getCookieValue("id");
		console.log("btn click")
		const spot_name = $("#spot_name").val()
		const spotComment = $("#spotComment").val()


		let dataValue = {
			"spot_name" : spot_name,
			"spotComment" : spotComment,
			"img_name":tempImgName,
			"user_id" : cookieValue

		}
		console.log(dataValue)
		alert("before")
		$.ajax({
			type : "POST",

			url : "http://localhost:8080/travelboard/createSpot",
			data : JSON.stringify(dataValue),
			contentType:"application/json",
			dataType: "json",
			success: function(data) {
				console.log("data",data)
				alert("spot 생성이 완료되었습니다.")
				deleteCookie("lat");
				deleteCookie("lng");
				deleteCookie("spot_name");
				deleteCookie("spotComment");
				deleteCookie("temp_tempImgName")

				location.href = "studio";



			},


			error: function(xhr, textStatus, errorThrown) {
				alert("로그인에 실패하였습니다.")
				console.log("XHR status: " + xhr.status);
				console.log("Text status: " + textStatus);
				console.log("Error thrown: " + errorThrown);
				console.log("Response text: " + xhr.responseText);
			}
		});



	});

</script>

<script>


	var lat = ""
	var lng = ""
	var markers = []

	function createMap(geolocationPosition){
		console.log("geolocationPosition",geolocationPosition.coords)
		var map = new naver.maps.Map('map', {
			center: new naver.maps.LatLng(geolocationPosition.coords.latitude, geolocationPosition.coords.longitude),
			// center: new naver.maps.LatLng(37.6009, 126.8644),
			zoom: 15


		});
		var cur_loc = new naver.maps.LatLng(geolocationPosition.coords.latitude, geolocationPosition.coords.longitude);

		var i1 = {
			content: "<span class='my_loc on' style='left:50%; top:20%;'></span>",
			size: new naver.maps.Size(55, 72),
			anchor: new naver.maps.Point(27, 72),
			origin: new naver.maps.Point(1*29, 0),
		}



		markers.push(new naver.maps.Marker({
			map: map,
			position: cur_loc,
			icon:i1,
		}));


		var i2 = {
			content: "<div class='pick'> <span>위치 선택</span> <img src='../assets/image/common/icon_map_03.svg'></div>",
			size: new naver.maps.Size(55, 72),
			anchor: new naver.maps.Point(27, 72),
			origin: new naver.maps.Point(2*29, 0),
		}

		naver.maps.Event.addListener(map, 'click', function(e){
			// 지도를 클릭하면 아래 내용이 실행됩니다.
			lat = e.coord.lat()
			lng =  e.coord.lng()

			alert('클릭한 위치로 설정되었습니다')
			let cli_loc = new naver.maps.LatLng(lat, lng);



			markers.push(new naver.maps.Marker({
				map: map,
				position: cli_loc,
				icon:i2,
			}));


		});



	}




	var options = {
		enableHighAccuracy: true,
		timeout: 5000,
		maximumAge: 0
	};

	function success(pos) {
		var crd = pos.coords;

		console.log('Your current position is:');
		console.log('Latitude : ' + crd.latitude);
		console.log('Longitude: ' + crd.longitude);
		console.log('More or less ' + crd.accuracy + ' meters.');


	};

	function error(err) {
		console.warn('ERROR(' + err.code + '): ' + err.message);
	};

	function getCurrentPosition(){
		return new Promise (function(resolve, reject){
			console.log("resolve",resolve)
			navigator.geolocation.getCurrentPosition(resolve,reject);
		})
	}

	getCurrentPosition().then(point=>createMap(point))



</script>



</html>
