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


    <title>#2_home_mylocal | 이름으로 찾기(검색전)</title>
    <link rel="stylesheet" href="../assets/css/mylocal.css">

</head>

<body>
<!-- #WRAP -->
<div id="wrap" class="search_mylocal"><!-- 이름으로 찾기 class="search_mylocal" 추가 -->
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
                이름으로 찾기
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
    <div id="contents" style="height:24%">
        <div class="sub" >
            <!-- 검색영역 -->
            <div class="loc_srch_wrap" >
                <!-- 검색 -->
                <div class="text_input">
                    <div>
                        <input type="text" id = "search_packname" placeholder="팩이름을 검색해주세요" onkeyup="search_pack()">
                        <button type="button" class="btn_submit" >
                            <i class="icon_submit i_srch"></i>
                        </button>
                    </div>
                </div>
                <!--// 검색 -->

                <!-- 검색결과 영역 -->
                <div class="res_wrap" >
                    <!-- 검색전 텍스트 -->
                    <ul id = "search_territory">

                    </ul>
                    <div class="data_none before" id = "search_init" style="display:blank">
                        <figure class="img">
                            <img src="http://localhost:8080/assets/assets_howon/image/logo_remove_icon.png" >
                        </figure>
                        <p class="txt_01">검색하면 다 나와요~</p>
                        <p class="txt_02">여러분의 관심사 또는 지역명을 검색해보세요!</p>
                    </div>

                    <!-- 검색전 텍스트 -->
                    <div class="data_none" id = "search_none" style="display:none">
                        <figure class="img">
                            <img src="http://localhost:8080/assets/assets_howon/image/logo_remove_icon.png" >
                        </figure>
                        <p class="txt_01">OOOPS!</p>
                        <p class="txt_02">다른 여행지를 검색해보세요!</p>
                    </div>
                    <!--// 검색전 텍스트 -->
                </div>
                <!--// 검색전 텍스트 -->
            </div>
            <!--// 검색결과 영역 -->
        </div>
        <!--// 검색영역 -->
    </div>
</div>
<!--// #CONTENTS -->

<!-- 메인탭바 -->
<aside class="tab_bar main">
    <div class="cotn">
        <div class="tab_btn home"><!-- 활성화시 class="on" 추가 -->
            <a href="home.php">
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
</body>
<script type="text/javascript" src="${path}/assets/js/getPackList.js"></script>
<script>


    $(".btn_submit").on("click", function(){
        search_pack();
    })


    function gotopack(pack_id){
        // console.log(document.getElementById('pack_form'+pack_id))
        document.getElementById('pack_form'+pack_id).submit();
    }
</script>
</html>

