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
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=3tlrvyabw0"></script>
    <script type="text/javascript" src="../assets/js/common.js"></script>
    <title>#5_studio | 위치 찾기</title>
    <link rel="stylesheet" href="../assets/css/studio.css">
</head>

<body>
<!-- 위치 찾기 전체팝업 -->
<section class="full_pop pick_pop on"><!-- 전체팝업 활성화 class="on"추가 -->
    <!-- #header -->
    <header id="head">
        <div class="header_wrap">
            <!-- 뒤로가기 -->
            <div class="tit_ctrl">
                <a href="createNewSpot" class="close">
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
                        <input id = "address" type="text" placeholder="주소 입력">
                    </div>
                </div>
                <!--// 검색영역 -->

                <div class="pick_map">
                    <!-- 지도영역 -->
                    <div class="map_area">
                        <!-- 지도 -->
                        <div id="map" style="width:100%;height:100%;"></div>
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
<!--// 위치 찾기 전체팝업 -->
</body>


<script>
    var lat = "";
    var lng = "";
    var markers = [];

    function createMap(geolocationPosition) {
        console.log("geolocationPosition", geolocationPosition.coords);
        var map = new naver.maps.Map('map', {
            center: new naver.maps.LatLng(geolocationPosition.coords.latitude, geolocationPosition.coords.longitude),
            zoom: 15
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


            let input_position = $('#selectPositon').val()

            $('input[name=selectPositon]').attr('value', input_position, lat," ",lng);
            setCookie("lat", lat,'1')
            setCookie("lng", lng,'1')




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
