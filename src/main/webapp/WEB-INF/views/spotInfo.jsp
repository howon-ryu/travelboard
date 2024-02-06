<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, viewport-fit=cover, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
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
    <title>#4_pack | 보유팩</title>
    <link rel="stylesheet" href="../assets/css/map_pack.css">
</head>

<body>
<!-- #WRAP -->
<div id="wrap" class="pack_info"><!-- #4_pack_map : class="pack_info" 추가 -->
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
                <figure class="img"><img src="../assets/image/common/chip_03.png"></figure>
            </h1>
            <!--// 타이틀 -->
        </div>
    </header>
    <!--// #header -->

    <!-- #CONTENTS -->
    <div id="contents">
        <div class="sub">
            <!-- 팩영역 -->
            <div class="pack_box">
                <div class="card pack_group"><!-- ★★ allca인경우 class="allca" -->
                    <div class="box_tit">
                        <p class="nickname">Chipster Original</p>
                        <p id = "spot_name" class="tit"></p>
                    </div>
                    <div class="box_info">
                        <div class="addr">
                            <p class="txt">총<span class="cnt">18</span>스팟</p>
                        </div>
                        <div class="pack_info">
                            <div class="count">
                                <p>
                                    <em class="current">999</em>명 참여<em class="tot">200</em>
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- NFT버튼 -->
                    <div class="btn_nft">
                        <a href="#none" class="rcv">
                            <!--
                            NFT발행 class="rcv"추가
                            NFT발행완료 class="cmplt"추가
                        -->
                            <span class="blind">NFT발행</span>
                        </a>
                    </div>
                    <!--// NFT버튼 -->

                    <!-- 카드뒤집기영역 -->
                    <div class="flip">
                        <div class="box_cotn">
                            <div class="img_wrap">
                                <figure class="img">
                                    <img id = "imgTag" src="../assets/image/temp/pack_05.jpg">
                                </figure>
                            </div>
                            <div class="txt_wrap">
                                <div class="txt_top">
                                    <!-- ALLCA아닌경우 삭제 -->
                                    <div class="txt_des">
                                        <figure class="img"><img src="../assets/image/common/allca.svg"></figure>
                                        <p class="clear">언제나스마일님 외 <span>5</span>명</p>
                                    </div>
                                    <!--// ALLCA아닌경우 삭제 -->
                                </div>
                                <p id = "spotComment" class="txt">

                                </p>
                                <div class="date">
                                    <span>팩 등록일 <em>2023.03.30</em></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--// 카드뒤집기영역 -->
                </div>
            </div>
            <!--// 팩영역 -->

            <!-- live talk -->
            <div class="talk_wrap">
                <div class="talk_tit">
                    <div class="tit_area">
                        <p>LIVE TALK</p>
                    </div>
                    <div class="talk_cnt">
                        <span>175</span>
                    </div>
                    <a href="#none" class="go_view btn_full_pop" open-pop="talk_pop">
                        <span class="blind">댓글영역보기</span>
                    </a>
                </div>
                <div class="talk_list">
                    <div class="group gre"><!-- 텍스트 색상 초록 class="gre" 추가 -->
                        <span class="user">Chipster Original</span>
                        <span class="txt">경복궁 조아요!</span>
                    </div>
                    <div class="group pur"><!-- 텍스트 색상 보라 class="pur" 추가 -->
                        <span class="user">Chipster Original</span>
                        <span class="txt">튼튼이가 요즘에 안보여서 엄청 걱정했는데 덕분에 만날수 있었어요</span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">튼튼이가 요즘에 </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">Good! Good! :</span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">튼튼이가 요즘에 </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">튼튼이가 요즘에 </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">나도 만나고 싶다구!!! </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">Good! Good! </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">튼튼이가 요즘에 안보여서 엄청 걱정했는데 덕분에 만날수 있었어요</span>
                    </div>
                    <div class="group">
                        <span class="user">닉넴</span>
                        <span class="txt">칩스칩스님이 올카 성공! 칩스칩스님이 올카 성공!칩스칩스님이 올카 성공!칩스칩스님이 올카 성공!칩스칩스님이 올카 성공!</span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">Good! Good! </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">튼튼이가 요즘에 </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">Good! Good! :</span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">튼튼이가 요즘에 </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">튼튼이가 요즘에 </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">나도 만나고 싶다구!!! </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">Good! Good! </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">칩스칩스님이 올카 성공!</span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">나도 만나고 싶다구!!! </span>
                    </div>
                    <div class="group">
                        <span class="user">댓글작성자닉네임</span>
                        <span class="txt">Good! Good! </span>
                    </div>
                </div>
            </div>
            <!--// live talk -->
        </div>
    </div>
    <!--// #CONTENTS -->

    <!-- 팩탭바 -->
    <aside class="tab_bar pack">
        <div class="cotn">
            <div class="tab_btn map"><!-- 활성화시 class="on" 추가 -->
                <a href="4_pack_local.html">
                    <span class="blind">내 위치</span>
                </a>
            </div>
            <div class="tab_btn ar">
                <a href="#none">
                    <span class="blind">AR</span>
                </a>
            </div>
            <div class="tab_btn binder">
                <a href="4_binder.html">
                    <span class="blind">binder</span>
                </a>
            </div>
        </div>
    </aside>
    <!--// 팩탭바 -->

</div>
<!--// #WRAP -->

<!-- LIVE TALK 전체팝업 -->
<section class="full_pop talk_pop "><!-- 전체팝업 활성화 class="on"추가 -->
    <!-- #header -->
    <header id="head">
        <div class="header_wrap">
            <!-- 뒤로가기 -->
            <div class="tit_ctrl">
                <a href="#none" class="close">
                    <span class="blind">닫기</span>
                </a>
            </div>
            <!--// 뒤로가기 -->

            <!-- 타이틀 -->
            <h1>
                LIVE <strong>TALK</strong>
            </h1>
            <!--// 타이틀 -->
        </div>
    </header>
    <!--// #header -->

    <!-- #CONTENTS -->
    <div id="content">
        <div class="sub">
            <div class="talk_inner">
                <!-- 팩 타이틀 -->
                <div class="pack_title">
                    <h2 id = "spot_name"></h2>
                </div>
                <!--// 팩 타이틀 -->

                <!-- talk목록 -->
                <div class="chat_list_wrap">
                    <!-- 데이터없음 -->
                    <div class="data_none">
                        <figure class="img">
                            <img src="../assets/image/common/chip_10.png">
                        </figure>
                        <p class="txt_01">안녕하세요~</p>
                        <p class="txt_02">팩톡을 남겨주세요!<br>첫 톡을 남겨주시면 복이 온대요~</p>
                    </div>
                    <!--// 데이터없음 -->
                </div>
                <!--// talk목록 -->

                <!-- 채팅입력 -->
                <div class="btm_fixed">
                    <!-- 검색 -->
                    <div class="text_input">
                        <form>
                            <input type="text" placeholder="글을 입력해 주세요">
                            <button type="button" class="btn_submit">
                                <i class="icon_submit i_chat"></i>
                            </button>
                        </form>
                    </div>
                    <!--// 검색 -->
                </div>
                <!--// 채팅입력 -->
            </div>
        </div>
    </div>
    <!--// #CONTENTS -->
</section>
<!--// LIVE TALK 전체팝업 -->
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


    var lng_t = getCookieValue("lng");
    function setSpotInfo(data){
        var packId = getParameterByName("pack_id",currentUrl)
        let spotNameTag = document.getElementById('spot_name');
        let spotCommentTag = document.getElementById('spotComment');



        spotNameTag.innerText = data.spot_name;
        spotCommentTag.innerText =data.spotComment;
        // document.getElementById("imgTag").src = "http://localhost:8080/assets/image/userUploads/"+cookieValue+"/"+tempImgName_t+"?a="+Math.random();
        document.getElementById("imgTag").src = "${path}/assets/spot/"+packId+"/"+data.img_name+"?a="+Math.random();
    }


    function getSpotInfo(){
        var packId = getParameterByName("pack_id",currentUrl)
        let dataValue = {
            "packId" : packId,


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
    getSpotInfo()





</script>
</html>