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
	<script type="text/javascript" src="${path}/assets/js/common.js"></script>
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
								<input id = "img_name" type="text" style = "display: none">
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
							<input type="text" id = "road_name_disabled"  placeholder="위치를 설정하세요"  disabled >
							<input type="text" id = "latitude" hidden>
							<input type="text" id = "longitude" hidden>
							<input type="text" id = "map_id" hidden>

						</div>
					<!--// 주소입력 -->

					<!-- 지도영역 -->
					<div class="map_area">
						<div id="map_mini" style="width:100%;height:100%;"></div>
						<!-- 지도 -->

						<!--// 선택된위치 -->
					</div>
					<!--// 지도영역 -->

					<a  class="go_view btn_full_pop" open-pop="pick_pop" >
<%--						<a id="goToSelectPosition" class="go_view" open-pop>--%>
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
				<a  class="btn color_type6 "><span>저장하기</span></a><!-- 비활성일경우 class="inactv"추가 -->
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



<section class="full_pop pick_pop"><!-- 전체팝업 활성화 class="on"추가 -->
	<!-- #header -->
	<header id="head">
		<div class="header_wrap">
			<!-- 뒤로가기 -->
			<div class="tit_ctrl">
				<a id = "closePosition" class="close" onclick="setRoadName()">
					<span class="blind">닫기</span>
				</a>
			</div>
			<!--// 뒤로가기 -->

			<!-- 타이틀 -->
			<h1>
				위치 등록
			</h1>
			<!--// 타이틀 -->
		</div>
	</header>
	<!--// #header -->

	<!-- #CONTENTS -->
	<div id="content">
		<div class="sub">
			<!-- 위치찾기 -->
			<div class="pick_wrap">
				<!-- 검색영역 -->
				<div class="srch_wrap">
					<div class="inpt_wrap">
						<input id = "road_name" type="text" placeholder="주소 입력">
						<input id = "packId" type="text" style = "display: none">
					</div>
				</div>
				<!--// 검색영역 -->

				<div class="pick_map">
					<!-- 지도영역 -->
					<div class="map_area">
						<!-- 지도 -->
						<div id="map" style="width:100%;height:100vh;"></div>
						<!--// 선택된위치 -->
					</div>
					<!--// 지도영역 -->

					<!-- 내위치버튼 -->
					<a href="#none" class="local_btn on"><!-- 활성화시 class="on"추가 -->
						<i class="i_loc"></i>
					</a>
					<!--// 내위치버튼 -->
				</div>
			</div>
			<!--// 위치찾기 -->
		</div>
	</div>
	<!--// #CONTENTS -->
</section>



<!--// 삭제불가 팝업 -->
</body>


<script>
	var currentUrl = window.location.href;

	// URL에서 파라미터를 추출하는 함수
	function getParameterByName(name, url) {
		if (!url) url = window.location.href;
		name = name.replace(/[\[\]]/g, "\\$&");
		var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
				results = regex.exec(url);
		if (!results) return null;
		if (!results[2]) return '';
		return decodeURIComponent(results[2].replace(/\+/g, " "));
	}

	// pack_id 값을 추출합니다.
	const isPackId = getParameterByName('pack_id', currentUrl);
	$(document).ready(function(){
		console.log("isPackId",isPackId)
		if(isPackId!=null){

			let dataValue = {
				"packId" : isPackId,


			}
			console.log("dataValue",dataValue)
			$.ajax({
				type : "POST",

				url : "http://localhost:8080/travelboard/getSpotInfo",
				data : JSON.stringify(dataValue),
				contentType:"application/json",
				dataType: "json",
				success: function(data) {
					console.log("data",data)
					$('#spot_name').attr('value', data.spot_name);
					$('#spotComment').attr('value', data.spotComment);
					$('#spotComment').text(data.spotComment);


					$.ajax({
						url: "http://localhost:8080/travelboard/getMapInfo",

						data: JSON.stringify({"map_id":data.map_id}),
						type: "POST",
						contentType:"application/json",
						success: function (data) {
							console.log("Image uploaded successfully");
							console.log("getmap",data)
							$('#latitude').attr('value', data.latitude);
							$('#longitude').attr('value', data.longitude);
							$('#road_name').attr('value', data.road_name);
							// Additional actions after successful upload
						},
						error: function (request, status, error) {
							console.log("Error uploading image: " + error);
						}
					});




					$('#map_id').attr('value', data.map_id);
					var cookieValue = getCookieValue("id");

					$('#img_name').attr('value', data.img_name);
					tempImgName = data.img_name
					document.getElementById("selected_img").src = "http://localhost:8080/assets/spot/"+isPackId+"/"+tempImgName+"?a="+Math.random();

				},


				error: function(xhr, textStatus, errorThrown) {
					alert("여행지 불러오기에 실패하였습니다.")
					console.log("XHR status: " + xhr.status);
					console.log("Text status: " + textStatus);
					console.log("Error thrown: " + errorThrown);
					console.log("Response text: " + xhr.responseText);
				}
			});

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
		document.getElementById("selected_img").src = "http://localhost:8080/assets/image/userUploads/"+imgName+"?a="+Math.random();


	}
	function setRoadName(){
		$('#road_name_disabled').attr('value', $("#road_name").val());

	}

	// $('#goToSelectPosition').on("click",function(){
	//
	// 	let temp_name = $("#spot_name").val()
	// 	let temp_comment = $("#spotComment").val()
	//
	//
	// 	let temp_tempImgName = tempImgName
	//
	//
	//
	// 	if(temp_name != null){
	//
	//
	// 		setCookie("temp_name", temp_name,'1')
	// 	}
	// 	if(temp_comment != null){
	//
	// 		setCookie("temp_comment", temp_comment,'1')
	// 	}
	// 	if(temp_tempImgName != null){
	//
	// 		setCookie("temp_tempImgName", tempImgName,'1')
	// 	}
	//
	// 	location.href='selectPosition';
	//
	//
	//
	//
	// })

	function updateMapInfo(){
		const latitude = $("#latitude").val()
		const longitude = $("#longitude").val()
		const road_name = $("#road_name").val()
		const map_id = $("#map_id").val()
		let dataValue = {
			"latitude" : latitude,
			"longitude" : longitude,
			"road_name":road_name,
			"id" : map_id,


		}
		console.log("map datavalue",dataValue)
		let result = ""
		$.ajax({
			type : "POST",

			url : "http://localhost:8080/travelboard/updateMap",
			data : JSON.stringify(dataValue),
			contentType:"application/json",
			dataType: "json",
			async:false,
			success: function(data) {
				console.log("map insert data",data)
				result = data.id

				console.log("result",result)

			},


			error: function(xhr, textStatus, errorThrown) {
				alert("로그인에 실패하였습니다.")
				console.log("XHR status: " + xhr.status);
				console.log("Text status: " + textStatus);
				console.log("Error thrown: " + errorThrown);
				console.log("Response text: " + xhr.responseText);
			}
		});
		return map_id

	}

	function createMapInfo(){

		const latitude = $("#latitude").val()
		const longitude = $("#longitude").val()
		const road_name = $("#road_name").val()
		let dataValue = {
			"latitude" : latitude,
			"longitude" : longitude,
			"road_name":road_name,



		}
		console.log("map datavalue",dataValue)
		let result = ""
		$.ajax({
			type : "POST",

			url : "http://localhost:8080/travelboard/insertMap",
			data : JSON.stringify(dataValue),
			contentType:"application/json",
			dataType: "json",
			async:false,
			success: function(data) {
				console.log("map insert data",data)
				result = data.id

				console.log("result",result)

			},


			error: function(xhr, textStatus, errorThrown) {
				alert("로그인에 실패하였습니다.")
				console.log("XHR status: " + xhr.status);
				console.log("Text status: " + textStatus);
				console.log("Error thrown: " + errorThrown);
				console.log("Response text: " + xhr.responseText);
			}
		});
		return result
	}


	$("#createSpot").on("click", function(){
		var cookieValue = getCookieValue("id");
		console.log("btn click")
		const spot_name = $("#spot_name").val()
		const spotComment = $("#spotComment").val()
		//여기서 위경도로 위치값을 받아오고 받은 위경도로 map 에 insert후 해당 map id를 넘겨야함






		if(isPackId){
			let map_id = updateMapInfo()
			console.log("map_id",map_id)
			let dataValueUpdate = {
				"spot_name" : spot_name,
				"spotComment" : spotComment,
				"img_name":tempImgName,
				"user_id" : cookieValue,
				"map_id":map_id,
				"id":isPackId



			}
			console.log("dataValueUpdate",dataValueUpdate)
			$.ajax({
				type : "POST",

				url : "http://localhost:8080/travelboard/updateSpot",
				data : JSON.stringify(dataValueUpdate),
				contentType:"application/json",
				dataType: "json",
				success: function(data) {
					console.log("data",data)
					alert("spot 업데이트가 완료되었습니다.")
					location.href = "studio";

				},


				error: function(xhr, textStatus, errorThrown) {
					alert("여행지 업데이트에 실패하였습니다.")
					console.log("XHR status: " + xhr.status);
					console.log("Text status: " + textStatus);
					console.log("Error thrown: " + errorThrown);
					console.log("Response text: " + xhr.responseText);
				}
			});

		}
		else{

			let map_id = createMapInfo()
			console.log("map_id",map_id)
			alert(map_id)
			let dataValueInsert = {
				"spot_name" : spot_name,
				"spotComment" : spotComment,
				"img_name":tempImgName,
				"user_id" : cookieValue,
				"map_id":map_id


			}
			console.log(dataValueInsert)

			$.ajax({
				type : "POST",

				url : "http://localhost:8080/travelboard/createSpot",
				data : JSON.stringify(dataValueInsert),
				contentType:"application/json",
				dataType: "json",
				success: function(data) {
					console.log("data",data)
					alert("spot 생성이 완료되었습니다.")


					location.href = "studio";



				},


				error: function(xhr, textStatus, errorThrown) {
					alert("여행지 생성에 실패하였습니다.")
					console.log("XHR status: " + xhr.status);
					console.log("Text status: " + textStatus);
					console.log("Error thrown: " + errorThrown);
					console.log("Response text: " + xhr.responseText);
				}
			});

		}





	});

</script>

<script>


	var lat = ""
	var lng = ""
	var markers = []

	function createMiniMap(geolocationPosition){
		console.log("geolocationPosition",geolocationPosition.coords)
		var map = new naver.maps.Map('map_mini', {
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

	getCurrentPosition().then(point=>createMiniMap(point))



</script>

<script>

	var currentUrl = window.location.href;
	function getParameterByName(name, url) {
		if (!url) url = window.location.href;
		name = name.replace(/[\[\]]/g, "\\$&");
		var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
				results = regex.exec(url);
		if (!results) return null;
		if (!results[2]) return '';
		return decodeURIComponent(results[2].replace(/\+/g, " "));
	}


	// pack_id 값을 추출합니다.

	var origin = getParameterByName('origin', currentUrl);
	var packId = getParameterByName('pack_id', currentUrl);
	if(packId!=""){
		$('#packId').attr('value', packId);

	}
	var lat = "";
	var lng = "";
	var markers = [];

	function createMap(geolocationPosition) {
		console.log("geolocationPosition", geolocationPosition.coords);
		var map = new naver.maps.Map('map', {
			center: new naver.maps.LatLng(geolocationPosition.coords.latitude, geolocationPosition.coords.longitude),
			zoom: 15,

		});

		var cur_loc = new naver.maps.LatLng(geolocationPosition.coords.latitude, geolocationPosition.coords.longitude);

		var i1 = {
			content: "<span class='my_loc on' style='left:50%; top:20%;'></span>",
			size: new naver.maps.Size(55, 72),
			anchor: new naver.maps.Point(0, 0),
			origin: new naver.maps.Point(55 / 2, 72),
		};

		markers.push(new naver.maps.Marker({
			map: map,
			position: cur_loc,
			icon: i1,
		}));

		var i2 = {
			content: "<div class='pick' id = 'selectPositon' name = 'selectPositon'> <span>위치 선택</span> <img src='../assets/image/common/icon_map_03.svg'></div>",
			size: new naver.maps.Size(55, 72),
			anchor: new naver.maps.Point(0, 0),
			origin: new naver.maps.Point(55 / 2, 72),
		};

		naver.maps.Event.addListener(map, 'click', function (e) {
			// 지도를 클릭하면 아래 내용이 실행됩니다.
			lat = e.coord.lat();
			lng = e.coord.lng();

			alert('클릭한 위치로 설정되었습니다');
			$('#latitude').val(lat)
			$('#longitude').val(lng)

			let cli_loc = new naver.maps.LatLng(lat, lng);
			console.log("cli_loc", cli_loc);

			// 이전의 모든 마커 삭제 (첫 번째 마커는 남김)
			for (var i = 1; i < markers.length; i++) {
				markers[i].setMap(null);
			}

			// 새로운 마커 추가
			markers = [markers[0]]; // 기존 첫 번째 마커를 유지하고 나머지는 초기화
			markers.push(new naver.maps.Marker({
				map: map,
				position: cli_loc,
				icon: i2,
			}));


			// let input_position = $('#selectPositon').val()
			//
			// $('input[name=selectPositon]').attr('value', input_position, lat," ",lng);
			// setCookie("lat", lat,'1')
			// setCookie("lng", lng,'1')




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
	}

	function error(err) {
		console.warn('ERROR(' + err.code + '): ' + err.message);
	}

	function getCurrentPosition() {
		return new Promise(function (resolve, reject) {
			navigator.geolocation.getCurrentPosition(resolve, reject);
		});
	}

	getCurrentPosition().then(point => createMap(point));
</script>



</html>
