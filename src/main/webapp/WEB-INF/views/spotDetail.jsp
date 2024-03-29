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
    <title>#5_studio main | 스튜디오(공개중 여행지)</title>
    <link rel="stylesheet" href="../assets/css/studio.css">
</head>

<body>
<!-- #WRAP -->
<div id="wrap" class="studio"><!-- STUDIO class="studio" 추가 -->
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
                <strong>PACK</strong>
            </h1>
            <!--// 타이틀 -->
        </div>
    </header>
    <!--// #header -->

    <!-- #CONTENTS -->
    <div id="contents">
        <div class="sub">
            <!-- 공개중 여행지 -->
            <div class="studio_release">
                <div class="btn_wrap">
                    <a href="4_pack_01.html" class="btn btn_100p btn_full color_type4 btn_link"><span>여행지 바로 가기</span></a>
                </div>
                <!-- 목록:리스트형 -->
                <div class="pack_cotn">
                    <div class="pack_group release">
                        <!--
                            공개중 class="release" 추가
                            작성중 class="writing" 추가
                        -->
                        <div class="cotn">
                            <!-- 이미지영역 -->
                            <div class="img_area">
                                <figure class="img">
                                    <img id = "spot_img" src="../assets/image/temp/pack_02.png" >
                                </figure>
                                <span class="studio_pack_tag"></span>
                            </div>
                            <!--// 이미지영역 -->

                            <!-- 텍스트영역 -->
                            <div class="txt_area">
                                <p class="date">2023.03.27</p>
                                <p class="tit" id = "spot_name">졸업생이 알려주는 항공대 고양이 주요 출몰 지역 고양이 주요 출몰 지역</p>
                                <p class="txt" id = "spotComment">마냥 나른해 있는 냥이들을 보면 나도 나른해지면서 치열했던 고민들을 잠시 잊게 되어요. 항공대 이곳 저곳에서 나름의 영역을 지키며 존재감을 뿜뿜하고</p>
                            </div>
                            <!--// 텍스트영역 -->
                        </div>
                        <div class="pack_info">
                            <div class="count" style="visibility: hidden">
                                <p>
                                    <em class="current">28</em> / <em class="tot">300</em>
                                </p>
                            </div>

                            <div class="allca" style="visibility: hidden">
                                <span><em>1</em> 명</span>
                            </div>
                            <div class="chat">
                                <span id = "commentCount"></span>
                            </div>
                        </div>
                        <a class="go_view" onclick = "goToPack()">
                            <span class="blind">상세이동</span>
                        </a>
                    </div>
                </div>
                <!--// 목록:리스트형 -->

                <!-- 목록:스팟 리스트 -->
                <ul class="spot_li">

                </ul>
                <!--// 목록:스팟 리스트 -->
                <div class="btn_wrap btn_fixed">
                    <a id="goToPhotoDetail" class="btn btn_100p color_type3"><span>스팟 추가</span></a>
                </div>
            </div>
            <!--// 공개중 여행지 -->
        </div>
    </div>
    <!--// #CONTENTS -->
</div>
<!--// #WRAP -->
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
    const packId = getParameterByName('pack_id', currentUrl);

    // 결과 확인
    console.log(packId);

function getSpotDetail(packId){

    console.log(packId)
    let dataValue = {
        "packId" : packId,


    }
    console.log(dataValue)
    $.ajax({
        type : "POST",

        url : "http://localhost:8080/travelboard/getSpotInfo",
        data : JSON.stringify(dataValue),
        contentType:"application/json",
        dataType: "json",
        success: function(data) {
            console.log("data",data)

            setSpotInfo(data)



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
function setSpotInfo(data){

        let spotNameTag = document.getElementById('spot_name');
        let spotCommentTag = document.getElementById('spotComment');
        let commentCountTag = document.getElementById('commentCount');

        document.getElementById("spot_img").src = "http://localhost:8080/assets/spot/"+data.id+"/"+data.img_name;

        spotNameTag.innerText = data.spot_name;
        spotCommentTag.innerText =data.spotComment;
        commentCountTag.innerText = data.commentCount;


    }



</script>
<script type="text/javascript" src="${path}/assets/js/photoList.js"></script>


<script>
    getSpotDetail(packId)
    photoList(packId)
</script>


<script>

    $('#goToPhotoDetail').on("click",function(){

        location.href = "createPhotoDetail?pack_id="+packId


    })
    function goToPack(){
        location.href = "createSpotDetail?pack_id="+packId

    }





</script>



</html>
