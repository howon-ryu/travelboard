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
    <title>#5_studio main | 스튜디오(메인)</title>
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
                <a  class="back" onclick="goToBack()">
                    <span class="blind">뒤로가기</span>
                </a>
            </div>
            <!--// 뒤로가기 -->

            <!-- 타이틀 -->
            <h1>
                <strong>STUDIO</strong>
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
            <!-- 스튜디오 메인 -->
            <div class="studio_main">
                <h2 class="tit_15">내가 만든 여행지</h2>
                <!-- 목록:리스트형 -->
                <ul class="pack_li">

                </ul>
                <!--// 목록:리스트형 -->
                <div class="btn_wrap btn_fixed">
                    <figure class="img">
                        <img src="../assets/image/common/chip_13.png" alt="">
                    </figure>
                    <a href="createNewSpot" class="btn btn_100p btn_more color_type2"><span>신규 여행지 만들기</span></a>
                </div>
            </div>
            <!--// 스튜디오 메인 -->
        </div>
    </div>
    <!--// #CONTENTS -->

    <!-- 메인탭바 -->
    <aside class="tab_bar main">
        <div class="cotn">
            <div class="tab_btn home"><!-- 활성화시 class="on" 추가 -->
                <a href="1_home.html">
                    <span class="blind">홈</span>
                </a>
            </div>
            <div class="tab_btn pack">
                <a href="3_list_01.html">
                    <span class="blind">my pack</span>
                </a>
            </div>
            <div class="tab_btn add on">
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

    getMyPack()


});
</script>
</html>
