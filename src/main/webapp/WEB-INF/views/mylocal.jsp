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
    <script type="text/javascript" src="${path}/assets/js/common.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=3tlrvyabw0"></script>
    <title>#2_home_mylocal | 내주변찾기</title>
    <link rel="stylesheet" href="../assets/css/mylocal.css">
</head>

<body>
<!-- #WRAP -->
<div id="wrap" class="mylocal_map"><!-- 내 주변 찾기 class="mylocal_map" 추가 -->
    <!-- #header -->
    <header id="header">
        <div class="header_wrap">
            <!-- 뒤로가기 -->
            <div class="tit_ctrl">
                <a href="home_rhw.php" class="back">
                    <span class="blind">뒤로가기</span>
                </a>
            </div>
            <!--// 뒤로가기 -->

            <!-- 타이틀 -->
            <h1>
                내 주변 찾기
            </h1>
            <!--// 타이틀 -->

            <!-- 버튼 -->
            <div class="btn_area">
                <div class="btn_head btn_my">
                    <a href="mypage.php">
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
            <div class="mylocal_wrap">
                <!-- 지도영역 -->
                <div class="map_area">
                    <!-- 지도 -->
                    <div id="map" style="width:100%;height:100%;"></div>

                    <!-- 내위치 아이콘 -->
                    <!-- <span class="my_loc" style="left:50%; top:50%;" ></span> -->
                    <!--// 내위치 아이콘 -->
                </div>
                <!--// 지도영역 -->

                <!-- 내위치버튼 -->
                <a href="#none" class="local_btn"><!-- 활성화시 class="on"추가 -->
                    <i class="i_loc"></i>
                </a>
                <!--// 내위치버튼 -->

                <!-- 팩정보 -->
                <div class="spot_pack_info"><!-- 활성화시 class="on"추가 -->
                    <div class="cotn">
                        <div class="pack_group">
                            <div class="cotn">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <figure class="img">
                                        <img id = "pack_img" src="../assets/image/temp/pack_02.png" >
                                    </figure>
                                </div>
                                <!--// 이미지영역 -->

                                <!-- 텍스트영역 -->
                                <div class="txt_area">
                                    <p class="nickname" id ="nickname">닉네임</p>
                                    <p class="tit" id ="tit">졸업생이 알려주는 항공대 고양이 주요 출몰 지역 고양이 주요 출몰 지역</p>
                                    <div class="addr">
                                        <span class="cnt" id ="cnt">12</span>
                                        <p class="txt" id ="txt">/ 경기도 고양시 덕양구 항공대학로 76 외</p>
                                    </div>
                                    <div class="pack_info">
                                        <div class="count">
                                            <p>
                                                <em class="current" id = "current">28</em>  <em class="tot" hidden>999</em>
                                            </p>
                                        </div>
                                        <div class="chat" hidden>
                                            <span>1,045</span>
                                        </div>
                                    </div>
                                </div>
                                <!--// 텍스트영역 -->
                            </div>
                            <form id = "pack_form" action = "pack.php" method = "post">
                                <input name = "pack_id" id = "pack_id" value = "" hidden>
                                <!-- <input name = "no_have" id = "getflag" value = "true" hidden> -->
                                <a  class="go_view" onclick = "gotopack()">
                                    <span class="blind">상세이동</span>
                                </a>
                            </form>

                        </div>
                    </div>
                </div>
                <!--// 팩정보 -->
            </div>
        </div>
    </div>
    <!--// #CONTENTS -->

    <!-- 메인탭바 -->
    <aside class="tab_bar main">
        <div class="cotn">
            <div class="tab_btn home"><!-- 활성화시 class="on" 추가 -->
                <a href="home_rhw.php">
                    <span class="blind">홈</span>
                </a>
            </div>
            <div class="tab_btn pack">
                <a href="mypack_list.php">
                    <span class="blind">my pack</span>
                </a>
            </div>
            <div class="tab_btn add">
                <a href="studio.php">
                    <span class="blind">스튜디오</span>
                </a>
            </div>
        </div >
    </aside>
    <!--// 메인탭바 -->
</div>
<!--// #WRAP -->
<script type="text/javascript" src="${path}/assets/js/mapList.js"></script>
<script>


    let pack_location_list = ""

    $(document).ready(function(){
        pack_location_list = getPackLocation()
        getCurrentPosition().then(point=>createMap(point))
        //setting_location()
        // make_poca_section(pack_poca_data)
        // poca_pop(pack_poca_data[0].id)
    })
    let pack_data = ""
    function getpack(pack_id){
        console.log("pack_id",pack_id)
        if(pack_id!=undefined){
            $.ajax({
                url: "<?=$api_url?>"+"/api/v1/arpocasWithPackInfo/"+pack_id,
                type: "get",
                contentType:"application/json",
                async:false,
                //   data:get_pack_data,
                datatype: "JSON",
                success: function(obj){
                    console.log("poca",obj);
                    pack_data = obj
                    make_poca_info()
                },
                error: function(xhr, status, error){
                    console.log(`error: ${error}`)
                    console.log(`status: ${status}`)
                    return
                }
            })
        }

    }
    function make_poca_info(){
        let img = makeImgPath(pack_data.packInfo.packId, pack_data.packInfo.img);
        console.log("img")
        document.getElementById("pack_img").src = img
        document.getElementById("tit").innerText = pack_data.packInfo.name;
        document.getElementById("nickname").innerText = pack_data.packInfo.makerUserNickName;
        document.getElementById("cnt").innerText = pack_data.packInfo.totalPocaSize;
        document.getElementById("txt").innerText = "/ "+pack_data.packInfo.representPocaAddress;
        document.getElementById("current").innerText = pack_data.packInfo.totalPocaSize;
    }

    function get_pack_location(){

        // console.log("user_id = "+"<?=$user_id?>");
        // // console.log(tt)
        // $.ajax({

        //   url: "<?=$api_url?>"+"/api/v1/arpoca/locations",
        //   type: "get",
        //   contentType:"application/json",
        //   async:false,
        // //   data:get_pack_data,
        //   datatype: "JSON",
        //   success: function(obj){
        //     console.log(obj);
        //     pack_location_list = obj
        //     // Datatable 의 reinitialize 를 없애기 위해 destroy
        //   },
        //   error: function(xhr, status, error){
        //     console.log(`error: ${error}`)
        //     console.log(`status: ${status}`)
        //     return
        //   }
        // })
        console.log("user_id = "+"<?=$user_id?>");
        // console.log(tt)
        $.ajax({

            url: "api/my_local_action.php",
            type: "get",
            contentType:"application/json",
            async:false,
            //   data:get_pack_data,
            datatype: "JSON",
            success: function(obj){
                console.log(obj);
                pack_location_list = obj
                // Datatable 의 reinitialize 를 없애기 위해 destroy
            },
            error: function(xhr, status, error){
                console.log(`error: ${error}`)
                console.log(`status: ${status}`)
                return
            }
        })
    }

    function setting_location(){
        for(var _l=0; _l<pack_location_list.length; _l++) {

            var distance = parseInt(pack_location_list[_l].distance);
            let pack_id= ""
            if(pack_location_list[_l].poca!=null){
                pack_id = pack_location_list[_l].pack
            }
            // if(distance<1) {
            latlngs.push(new naver.maps.LatLng(pack_location_list[_l].latitude, pack_location_list[_l].longitude));
            // 221005 pack_id별 pin 이미지로 셋팅
            iconList.push("<a href = '#none' class = 'spot' onclick = getpack("+pack_id+")> <img style='position: absolute; display: block; width: 50px; height: 50px; background-size: contain; background-repeat: no-repeat;' src='../assets/image/common/target_chip.png' alt=''> </a>");
            // }
        }
        for (var i=0, ii=latlngs.length; i<ii; i++) {

            var icon = {
                    // url:  iconList[i],
                    content: iconList[i],
                    size: new naver.maps.Size(55, 72),
                    anchor: new naver.maps.Point(27, 72),
                    origin: new naver.maps.Point(i*29, 0),
                },
                marker = new naver.maps.Marker({
                    position: latlngs[i],
                    map: map,
                    icon: icon
                });

            marker.set('seq', i);

            markerList.push(marker);



            icon = null;
            marker = null;
        }
    }



    // var entrance = new naver.maps.LatLng(37.6009, 126.8644);
    // var seven = new naver.maps.LatLng(37.6023, 126.8662);
    // var home = new naver.maps.LatLng(37.5981, 126.8664);
    // var markers = []



    function getCurrentPosition(){
        return new Promise (function(resolve, reject){
            console.log("resolve",resolve)
            navigator.geolocation.getCurrentPosition(resolve,reject);
        })
    }


    function createMap(geolocationPosition){


        var map = new naver.maps.Map('map', {
            center: new naver.maps.LatLng(geolocationPosition.coords.latitude, geolocationPosition.coords.longitude),
            zoom: 15
        });
        var locationBtnHtml = "<span class='my_loc on' style='left:50%; top:50%;' ></span>";
        var iconinit = {
            // url:  iconList[i],
            content: locationBtnHtml,
            size: new naver.maps.Size(55, 72),
            anchor: new naver.maps.Point(27, 72),
            origin: new naver.maps.Point(1*29, 0),
        }
        var marker = new naver.maps.Marker({
            position: new naver.maps.LatLng(geolocationPosition.coords.latitude, geolocationPosition.coords.longitude),
            map: map,
            icon: iconinit
        });

        let currloc = "<a href='#none' class='local_btn'><i class='i_loc'></i></a>"


        naver.maps.Event.once(map, 'init', function() {

            //customControl 객체 이용하기
            var customControl = new naver.maps.CustomControl(currloc, {
                position: naver.maps.Position.RIGHT_BOTTOM
            });
            customControl.setMap(map);
            console.log("!!!!!",customControl)
            naver.maps.Event.addDOMListener(customControl.getElement(), 'click', function() {
                console.log("!!!!!",customControl)
                map.setCenter(new naver.maps.LatLng(geolocationPosition.coords.latitude, geolocationPosition.coords.longitude));
            });
        });
        var iconList = [];
        var markerList = [];
        var latlngs = [];
        for(var _l=0; _l<pack_location_list.length; _l++) {

            var distance = parseInt(pack_location_list[_l].distance);
            let pack_id= ""
            if(pack_location_list[_l].poca!=null){
                pack_id = pack_location_list[_l].pack
            }
            // if(distance<1) {
            latlngs.push(new naver.maps.LatLng(pack_location_list[_l].latitude, pack_location_list[_l].longitude));
            // 221005 pack_id별 pin 이미지로 셋팅
            iconList.push("<a href = '#none' class = 'spot' onclick = getpack("+pack_id+")> <img style='position: absolute; display: block; width: 50px; height: 50px; background-size: contain; background-repeat: no-repeat;' src='../assets/image/common/target_chip.png' alt=''> </a>");
            // }
        }
        for (var i=0, ii=latlngs.length; i<ii; i++) {

            var icon = {
                    // url:  iconList[i],
                    content: iconList[i],
                    size: new naver.maps.Size(55, 72),
                    anchor: new naver.maps.Point(27, 72),
                    origin: new naver.maps.Point(i*29, 0),
                },
                marker = new naver.maps.Marker({
                    position: latlngs[i],
                    map: map,
                    icon: icon
                });

            marker.set('seq', i);

            markerList.push(marker);



            icon = null;
            marker = null;
        }
        $('.spot').on('click', function(){
            var $this = $(this),
                spot = $('.spot'),

                spot_info = $('.spot_pack_info'),
                infoH = spot_info.height() + 12;
            console.log("click")
            if(!$this.hasClass('use')){//미획득 spot 클릭시
                if($this.hasClass('on')){
                    spot.removeClass('on');
                    spot_info.removeClass('on');
                    $('.local_btn').css('bottom','12px')
                }else{
                    spot.removeClass('on');
                    $this.addClass('on');
                    spot_info.addClass('on');
                    $('.local_btn').css('bottom',infoH)
                }
            }else{
                spot.removeClass('on');
                spot_info.removeClass('on');
                $('.local_btn').css('bottom','12px')
            }
        });
        $(document).mouseup(function (e){ /* 닫기 */
            var spot = $('.spot');
            if(spot.has(e.target).length === 0 && $('.local_btn').has(e.target).length === 0 && $('.spot_pack_info').has(e.target).length === 0 && spot.hasClass('on')){
                spot.removeClass('on');
                $('.spot_pack_info').removeClass('on')
                $('.local_btn').css('bottom','12px')
            }
        });


    }

    function gotopack(){

        $("#pack_id").val(pack_data.packInfo.packId);
        // let listlist = ""
        // $.ajax({
        //   url: "<?=$api_url?>"+"/api/v1/arpoca/pack/"+pack_data.packInfo.packId,
        //   type: "get",
        //   contentType:"application/json",
        //   async:false,
        // //   data:get_pack_data,
        //   datatype: "JSON",
        //   success: function(obj){
        //     listlist = obj
        // 	obj.forEach((pack,index,array) => {
        // 		console.log("1",pack)
        // 	})
        //     // Datatable 의 reinitialize 를 없애기 위해 destroy
        //   },
        //   error: function(xhr, status, error){
        //     console.log(`error: ${error}`)
        //     console.log(`status: ${status}`)
        //     return
        //   }
        // })


        // $("#getflag").val(pack_data.packInfo.packId);







        document.getElementById('pack_form').submit();
    }
    // var i1 = {
    // 	content: "<a href = '#none' class = 'spot'> <img style='position: absolute; display: block; width: 50px; height: 50px; background-size: contain; background-repeat: no-repeat;' src='../assets/image/common/target_chip.png' alt=''> </a>",
    // 	size: new naver.maps.Size(55, 72),
    // 	anchor: new naver.maps.Point(27, 72),
    // 	origin: new naver.maps.Point(1*29, 0),
    // }
    // var i2 = {
    // 	content: "<a href = '#none' class = 'spot'> <img  style='position: absolute; display: block; width: 50px; height: 50px; background-size: contain; background-repeat: no-repeat;' src='../assets/image/common/target_chip.png' alt=''> </a>",
    // 	size: new naver.maps.Size(55, 72),
    // 	anchor: new naver.maps.Point(27, 72),
    // 	origin: new naver.maps.Point(2*29, 0),
    // }
    // var i3 = {
    // 	content: "<a href = '#none' class = 'spot'> <img  style='position: absolute; display: block; width: 50px; height: 50px; background-size: contain; background-repeat: no-repeat;' src='../assets/image/common/target_chip.png' alt=''> </a>",
    // 	size: new naver.maps.Size(55, 72),
    // 	anchor: new naver.maps.Point(27, 72),
    // 	origin: new naver.maps.Point(3*29, 0),
    // }



    // markers.push(new naver.maps.Marker({
    //     map: map,
    //     position: entrance,
    // 	icon:i1,
    // }));
    // markers.push(new naver.maps.Marker({
    //     map: map,
    //     position: seven,
    // 	icon:i2,
    // }));
    // markers.push(new naver.maps.Marker({
    //     map: map,
    //     position: home,
    // 	icon:i3,
    // }));



</script>
<script type="text/javascript" src="../assets/js/common.js"></script>
</body>
</html>
