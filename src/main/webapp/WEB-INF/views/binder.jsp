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

    <script type="text/javascript" src="js/common.js"></script>
    <title>#4_pack | BINDER</title>
    <link rel="stylesheet" href="../assets/css/map_pack.css">
</head>

<body>

<!-- #WRAP -->
<div id="wrap">
    <!-- #header -->
    <header id="header">
        <div class="header_wrap">
            <!-- 뒤로가기 -->
            <div class="tit_ctrl">
                <a href="mypack_list.php" class="back">
                    <span class="blind">뒤로가기</span>
                </a>
            </div>
            <!--// 뒤로가기 -->

            <!-- 타이틀 -->
            <h1>
                <strong>BINDER</strong>
            </h1>
            <!--// 타이틀 -->

            <!-- 버튼 -->
            <div class="btn_area">
                <div class="btn_head btn_chat">
                    <a href="#none" class="btn_full_pop" open-pop="talk_pop">
                        <span class="blind">채팅</span>
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
            <div class="binder_wrap">
                <!-- 팩 타이틀 -->
                <div class="pack_title">
                    <h2>졸업생이 알려주는   고양이 주요 출몰 지역 찾아보면 다나옴 </h2>
                </div>
                <!--// 팩 타이틀 -->

                <!-- 획득상태 -->
                <div class="bd_state "><!-- allca일경우 class="allca"추가 -->
                    <div class="card_count">
                        <div class="info_wrap">
                            <p class="tot_card">
                                총<strong id = "total_num">18</strong>사진
                            </p>
                            <p class="date">
                                최근 획득 일시 <em>23.03.27 PM 4:49</em>
                            </p>
                        </div>
                        <div class="bar">
                            <div class="tot_line">
                                <span class="start" id = "start_num">0</span>
                                <span class="end" id = "end_num">18</span>
                                <div class="current_line">
                                    <span class="crt_card" id = "crt_num">6</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--// 획득상태 -->

                <div class="bd_list">
                    <!-- 목록:리스트형 -->
                    <ul class="pack_gall" id = "poca_gallary">
                        <li>
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <figure class="img">
                                        <img src="../assets/image/temp/pack_02.png" >
                                    </figure>
                                </div>
                                <!--// 이미지영역 -->

                                <a href="#none" class="go_view btn_full_pop" open-pop="spot_pop">
                                    <span class="blind">상세이동</span>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <figure class="img">
                                        <img src="../assets/image/temp/pack_01.png" >
                                    </figure>
                                </div>
                                <!--// 이미지영역 -->

                                <a href="#none" class="go_view">
                                    <span class="blind">상세이동</span>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <figure class="img">
                                        <img src="../assets/image/temp/pack_03.png" >
                                    </figure>
                                </div>
                                <!--// 이미지영역 -->

                                <a href="#none" class="go_view">
                                    <span class="blind">상세이동</span>
                                </a>
                            </div>
                        </li>
                        <li class="none"><!-- 데이터없음 class="none"추가 -->
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <span class="blind">데이터없음</span>
                                </div>
                                <!--// 이미지영역 -->
                            </div>
                        </li>
                        <li class="none"><!-- 데이터없음 class="none"추가 -->
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <span class="blind">데이터없음</span>
                                </div>
                                <!--// 이미지영역 -->
                            </div>
                        </li>
                        <li>
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <figure class="img">
                                        <img src="../assets/image/temp/pack_03.png" >
                                    </figure>
                                </div>
                                <!--// 이미지영역 -->

                                <a href="#none" class="go_view">
                                    <span class="blind">상세이동</span>
                                </a>
                            </div>
                        </li>
                        <li class="none"><!-- 데이터없음 class="none"추가 -->
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <span class="blind">데이터없음</span>
                                </div>
                                <!--// 이미지영역 -->
                            </div>
                        </li>
                        <li>
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <figure class="img">
                                        <img src="../assets/image/temp/pack_01.png" >
                                    </figure>
                                </div>
                                <!--// 이미지영역 -->

                                <a href="#none" class="go_view">
                                    <span class="blind">상세이동</span>
                                </a>
                            </div>
                        </li>
                        <li class="none"><!-- 데이터없음 class="none"추가 -->
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <span class="blind">데이터없음</span>
                                </div>
                                <!--// 이미지영역 -->
                            </div>
                        </li>
                        <li>
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <figure class="img">
                                        <img src="../assets/image/temp/pack_02.png" >
                                    </figure>
                                </div>
                                <!--// 이미지영역 -->

                                <a href="#none" class="go_view">
                                    <span class="blind">상세이동</span>
                                </a>
                            </div>
                        </li>
                        <li class="none"><!-- 데이터없음 class="none"추가 -->
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <span class="blind">데이터없음</span>
                                </div>
                                <!--// 이미지영역 -->
                            </div>
                        </li>
                        <li>
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <figure class="img">
                                        <img src="../assets/image/temp/pack_03.png" >
                                    </figure>
                                </div>
                                <!--// 이미지영역 -->

                                <a href="#none" class="go_view">
                                    <span class="blind">상세이동</span>
                                </a>
                            </div>
                        </li>
                        <li class="none"><!-- 데이터없음 class="none"추가 -->
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <span class="blind">데이터없음</span>
                                </div>
                                <!--// 이미지영역 -->
                            </div>
                        </li>
                        <li>
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <figure class="img">
                                        <img src="../assets/image/temp/pack_01.png" >
                                    </figure>
                                </div>
                                <!--// 이미지영역 -->

                                <a href="#none" class="go_view">
                                    <span class="blind">상세이동</span>
                                </a>
                            </div>
                        </li>
                        <li class="none"><!-- 데이터없음 class="none"추가 -->
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <span class="blind">데이터없음</span>
                                </div>
                                <!--// 이미지영역 -->
                            </div>
                        </li>
                        <li>
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <figure class="img">
                                        <img src="../assets/image/temp/pack_02.png" >
                                    </figure>
                                </div>
                                <!--// 이미지영역 -->

                                <a href="#none" class="go_view">
                                    <span class="blind">상세이동</span>
                                </a>
                            </div>
                        </li>
                        <li class="none"><!-- 데이터없음 class="none"추가 -->
                            <div class="pack_item">
                                <!-- 이미지영역 -->
                                <div class="img_area">
                                    <span class="blind">데이터없음</span>
                                </div>
                                <!--// 이미지영역 -->
                            </div>
                        </li>
                    </ul>
                    <!--// 목록:리스트형 -->
                </div>
            </div>
        </div>
    </div>
    <!--// #CONTENTS -->

    <!-- 팩탭바 -->
    <aside class="tab_bar pack">
        <div class="cotn">
            <div class="tab_btn map"><!-- 활성화시 class="on" 추가 -->
                <a href="pack_local.php">
                    <span class="blind">내 위치</span>
                </a>
            </div>
            <div class="tab_btn ar">
                <a href="">
                    <span class="blind">AR</span>
                </a>
            </div>
            <div class="tab_btn binder on">
                <a href="pack_binder.php">
                    <span class="blind">binder</span>
                </a>
            </div>
        </div>
    </aside>
    <!--// 팩탭바 -->
</div>
<!--// #WRAP -->

<!-- spot상세 전체팝업 -->
<section class="full_pop spot_pop" id = "poca_section" ><!-- 전체팝업 활성화 class="on"추가 -->
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
        </div>
    </header>
    <!--// #header -->

    <!-- #CONTENTS -->
    <div id="content">
        <div class="sub">
            <div class="spot_detail">
                <!-- spot상세정보 -->
                <div class="detail_card" id = "poca_info">
                    <div class="cotn">
                        <!-- 이미지영역 -->
                        <div class="img_area">
                            <figure class="img">
                                <img src="../assets/image/temp/pack_05.jpg">
                            </figure>
                        </div>
                        <!--// 이미지영역 -->

                        <!-- 텍스트영역 -->
                        <div class="txt_area"><!-- 텍스트 전체보기 class="on"추가 -->
                            <p class="tit">항공우주박물관 앞 공터</p>
                            <p class="info">
                                <span class="num">sp No.<em>02</em></span> :
                                <span class="addr">경기도 고양시  학로 76</span>
                            </p>
                            <p class="txt">
                                햇빛이 좋은 날이면 창업보육센터 주차장 한쪽 구석에서 플닢이가 풀향기 맡으면서 졸고 있어요글자제한이 어느정도는 있겠지만 내용이 꽤 많을꺼라, 일이삼사오육칠팔구십 일이삼사오육칠팔구십 일이삼사오육칠팔구십 일이삼사오육칠팔구십일이삼사오육칠팔구십 일이삼사오육칠팔구십 일이삼사오육칠팔구십 일이삼사오육칠팔구십 일이삼사오육칠팔구십 일이삼사오 육칠팔구십 일이삼사오육칠 팔구십 일이삼사오 육칠팔구십 일이삼사 오육칠팔구십
                            </p>
                            <p class="date">2023.03.31</p>
                        </div>
                        <!--// 텍스트영역 -->

                        <button type="button" class="btn_more">
                            <span class="blind">더보기</span>
                        </button>
                    </div>
                </div>
                <!--// spot상세정보 -->

                <!-- TALK -->
                <div class="pop_talk">
                    <!-- live talk -->
                    <div class="talk_wrap">
                        <div class="talk_tit">
                            <div class="talk_cnt">
                                <span>175</span>
                            </div>
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
                                <span class="txt">Good! Good!  </span>
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
                                <span class="txt">Good! Good!  </span>
                            </div>
                        </div>
                    </div>
                    <!--// live talk -->
                    <a href="#none" class="go_view btn_full_pop" open-pop="talk_pop">
                        <span class="blind">댓글팝업 이동</span>
                    </a>
                </div>
                <!--// TALK -->
            </div>
        </div>
    </div>
    <!--// #CONTENTS -->
</section>
<!--// spot상세팝업 전체팝업 -->

<!-- LIVE TALK 전체팝업 -->
<section class="full_pop talk_pop" ><!-- 전체팝업 활성화 class="on"추가 -->
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
                    <h2>졸업생이 알려주는 고양이 주요 출몰 지역 찾아보면 다나옴 </h2>
                </div>
                <!--// 팩 타이틀 -->

                <!-- talk목록 -->
                <div class="chat_list_wrap">
                    <div class="chat_list" id = "poca_list">
                        <div class="group">
                            <div class="img_area">
                                <figure class="img">
                                    <img src="../assets/image/common/profile_none.png" alt=""><!-- 프로필이미지 없음 -->
                                </figure>
                            </div>
                            <div class="txt_area">
                                <p class="chat_info">
                                    <span class="user">언제나스마일</span>
                                    <span class="date">2023.03.29 18:45</span>
                                </p>
                                <div class="txt_des">
                                    <span class="txt">튼튼이가 요즘에 안보여서 엄청 걱정했는데 덕분에 만날수 있었어요</span>
                                    <span class="loc">창업보육센터 주차장</span>
                                    <span class="num">sp No.<em>01</em></span>
                                </div>
                            </div>
                            <div class="btn_edit">
                                <a href="#none" class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
                            </div>
                        </div>
                        <div class="group">
                            <div class="img_area">
                                <figure class="img">
                                    <img src="../assets/image/temp/profile_02.png" alt="">
                                </figure>
                            </div>
                            <div class="txt_area">
                                <p class="chat_info">
                                    <span class="user">언제나스마일</span>
                                    <span class="date">2023.03.29 18:45</span>
                                </p>
                                <div class="txt_des">
                                    <span class="txt">나도 만나고 싶다구!!</span>
                                </div>
                            </div>
                            <div class="btn_edit">
                                <a href="#none" class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
                            </div>
                        </div>
                        <div class="group">
                            <div class="img_area">
                                <figure class="img">
                                    <img src="../assets/image/temp/profile_02.png" alt="">
                                </figure>
                            </div>
                            <div class="txt_area">
                                <p class="chat_info">
                                    <span class="user">댓글작성자닉네임</span>
                                    <span class="date">2023.03.29 18:45</span>
                                </p>
                                <div class="txt_des">
                                    <span class="txt">글의 내용이 전체적으로 다 보입니다. 스팟명은 따로 선택이나 입력없이 해시태그로 자동 붙는건 어떨까요? 그리고 사용자도 해시태그를 #이용해서 넣을 수도 있고요</span>
                                    <span class="loc">항공우주박물관 앞 공터</span>
                                    <span class="num">sp No.<em>02</em></span>
                                </div>
                            </div>
                            <div class="btn_edit">
                                <a href="#none" class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
                            </div>
                        </div>
                        <div class="group"><!-- 텍스트 색상 초록 class="pur" 추가 -->
                            <div class="img_area">
                                <figure class="img">
                                    <img src="../assets/image/temp/profile_02.png" alt="">
                                </figure>
                            </div>
                            <div class="txt_area">
                                <p class="chat_info">
                                    <span class="user">댓글작성자닉네임</span>
                                    <span class="date">2023.03.29 18:45</span>
                                </p>
                                <div class="txt_des">
                                    <span class="txt">글의 내용이 전체적으로 다 보입니다. 스팟명은 따로 선택이나 입력없이 해시태그로 자동 붙는건 어떨까요? 그리고 사용자도 해시태그를 #이용해서 넣을 수도 있고요</span>
                                    <span class="loc">항공우주박물관 앞 공터</span>
                                    <span class="num">sp No.<em>02</em></span>
                                </div>
                            </div>
                            <div class="btn_edit">
                                <a href="#none" class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
                            </div>
                        </div>
                        <div class="group">
                            <div class="img_area">
                                <figure class="img">
                                    <img src="../assets/image/temp/profile_02.png" alt="">
                                </figure>
                            </div>
                            <div class="txt_area">
                                <p class="chat_info">
                                    <span class="user">댓글작성자닉네임</span>
                                    <span class="date">2023.03.29 18:45</span>
                                </p>
                                <div class="txt_des">
                                    <span class="txt">글의 내용이 전체적으로 다 보입니다. 스팟명은 따로 선택이나 입력없이 해시태그로 자동 붙는건 어떨까요? 그리고 사용자도 해시태그를 #이용해서 넣을 수도 있고요</span>
                                    <span class="loc">항공우주박물관 앞 공터</span>
                                    <span class="num">sp No.<em>02</em></span>
                                </div>
                            </div>
                            <div class="btn_edit">
                                <a href="#none" class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
                            </div>
                        </div>
                        <div class="group pur"><!-- 텍스트 색상 초록 class="pur" 추가 -->
                            <div class="img_area">
                                <figure class="img">
                                    <img src="../assets/image/temp/profile_01.png" alt="">
                                </figure>
                            </div>
                            <div class="txt_area">
                                <p class="chat_info">
                                    <span class="user">Chipster Original</span>
                                    <span class="date">2023.03.29 18:45</span>
                                </p>
                                <div class="txt_des">
                                    <span class="txt">글의 내용이 전체적으로 다 보입니다. 스팟명은 따로 선택이나 입력없이 해시태그로 자동 붙는건 어떨까요? 그리고 사용자도 해시태그를 #이용해서 넣을 수도 있고요</span>
                                    <span class="loc">항공우주박물관 앞 공터</span>
                                    <span class="num">sp No.<em>02</em></span>
                                </div>
                            </div>
                            <div class="btn_edit">
                                <a href="#none" class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
                            </div>
                        </div>
                        <div class="group">
                            <div class="img_area">
                                <figure class="img">
                                    <img src="../assets/image/common/profile_none.png" alt="">
                                </figure>
                            </div>
                            <div class="txt_area">
                                <p class="chat_info">
                                    <span class="user">댓글작성자닉네임</span>
                                    <span class="date">2023.03.29 18:45</span>
                                </p>
                                <div class="txt_des">
                                    <span class="txt">스팟명은 따로 선택이나 입력없이 해시태그로 자동 붙는건 어떨까요? 그리고 사용자도 해시태그를 #이용해서 넣을 수도 있고요. 상단에 팩명도 긴데, 스팟명은 또 어디까지 넣어야할지 막막합니다요. 나중에 해시태그 이용해서 팩안에서 소팅처럼 쓸 수도 있음 좋을 거 같고요.</span>
                                    <span class="loc">본관</span>
                                    <span class="num">sp No.<em>02</em></span>
                                </div>
                            </div>
                            <div class="btn_edit">
                                <a href="#none" class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
                            </div>
                        </div>
                    </div>

                    <!-- 더보기 -->
                    <div class="chat_more">
                        <a href="#none" class="btn_more">
                            <span>더보기</span>
                        </a>
                    </div>
                    <!--// 더보기 -->
                </div>
                <!--// talk목록 -->

                <!-- 채팅입력 -->
                <div class="btm_fixed">
                    <!-- 검색 -->
                    <div class="text_input">
                        <form>
                            <input type="text" id = "send_text" placeholder="글을 입력해 주세요">
                            <!-- <input type="text" placeholder="글을 입력해 주세요"> -->
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

<!-- 삭제/신고 팝업 -->
<section class="btm_pop btm_edit">
    <div class="cotn">
        <div class="btn_wrap">
            <a href="#none" class="edit" onclick=delete_comment() >
                <i class="i_edit i_del"></i>
                <span>삭제</span>
            </a>
            <a href="#none" class="edit close" onclick = btn_pop_click_out()>
                <i class="i_edit i_cancel"></i>
                <span>취소</span>
            </a>
        </div>

    </div>
</section>
<!--// 삭제/신고 팝업 -->
</body>
</html>


<script>
    let pack_list = []
    let pack_poca_data = ""
    let selected_poca_data = "null"

    $(document).ready(function(){
        let ad_poca = <?=$ad_poca_id?>;
        get_pack_pocalist()
        getTotalPackList()
        console.log("pack_poca_data",pack_poca_data)
        make_poca_gal(pack_poca_data)
        if(ad_poca!=null){
            poca_pop(ad_poca)
        }
        // make_poca_section(pack_poca_data)
        // poca_pop(pack_poca_data[0].id)
    })

    function getSpotPhotolist(){
        console.log("pack_id = "+"pack_id");
        console.log("poca_id = "+"photo_id");
        // console.log(tt)
        $.ajax({

            url: "<?=$api_url?>"+"/api/v1/arpocas/"+pack_id,
        type: "get",
            contentType:"application/json",
            async:false,
            //   data:get_pack_data,
            datatype: "JSON",
            success: function(obj){


            console.log(obj);
            pack_poca_data = obj
            // Datatable 의 reinitialize 를 없애기 위해 destroy


        },
        error: function(xhr, status, error){
            console.log(`error: ${error}`)
            console.log(`status: ${status}`)
            return
        }
    })
    }
    function make_poca_gal(poca_list_data){
        let poca_list = document.getElementById("poca_gallary");

        poca_list.innerHTML =``
        <%--poca_list_data.forEach((poca,index,array) => {--%>
        <%--    console.log("poca",poca)--%>

        <%--    poca_list.innerHTML +=--%>
        <%--        `--%>
		<%--<li>--%>
		<%--	<div class="pack_item" >--%>
		<%--		<!-- 이미지영역 -->--%>
		<%--		<div class="img_area" id = "poca_chat_start">--%>
		<%--			<figure class="img">--%>

		<%--				<img src="../media/arpoca/${pack_id}/${poca.img}" >--%>
		<%--			</figure>--%>
		<%--		</div>--%>

		<%--		<a href="#" class="go_view btn_full_pop"  open-pop="spot_pop" onclick="poca_pop(${poca.id})">--%>
		<%--			<span class="blind">상세이동</span>--%>
		<%--		</a>--%>
		<%--	</div>--%>
		<%--</li>--%>


		<%--`--%>
        <%--});--%>



    }
    // function poca_pop(pocadata){
    // 	make_poca_section(pocadata)
    // 	let poca_section = document.getElementById("poca_section");
    // 	console.log("classList",poca_section.classList)


    // 	if(poca_section.classList[2]!="on"){
    // 		$('#poca_section').addClass('on')
    // 		console.log("selected_poca_data",selected_poca_data)
    // 		updateSimpleChatList();

    // 	}else{
    // 		$('#poca_section').removeClass('on')
    // 	}






    // }
    function make_poca_section(pocaid){
        let poca_data = ""
        $.ajax({

            url: "<?=$api_url?>"+"/api/v1/arpoca/"+pocaid,
            type: "get",
            contentType:"application/json",
            async:false,
            //   data:get_pack_data,
            datatype: "JSON",
            success: function(obj){


                console.log(obj);
                poca_data = obj
                selected_poca_data = poca_data
                // Datatable 의 reinitialize 를 없애기 위해 destroy


            },
            error: function(xhr, status, error){
                console.log(`error: ${error}`)
                console.log(`status: ${status}`)
                return
            }
        })
        console.log("pocaid",pocaid)
        let poca_section = document.getElementById("poca_section");
        let poca_info = document.getElementById("poca_info");
        poca_info.innerHTML =``
        poca_info.innerHTML =
            `<div class="cotn">
						<!-- 이미지영역 -->
						<div class="img_area">
							<figure class="img">
							<img src="../media/arpoca/${pack_id}/${poca_data.img}" >
							</figure>
						</div>
						<!--// 이미지영역 -->

						<!-- 텍스트영역 -->
	 					<div class="txt_area" id = "textMore"><!-- 텍스트 전체보기 class="on"추가 -->
	 						<p class="tit">${poca_data.name}!!!</p>
	 						<p class="info">
	 							<span class="num">sp No.<em>${poca_data.number}</em></span> :
	 							<span class="addr">${poca_data.address}</span>
	 						</p>
	 						<p class="txt">
	 							${poca_data.content}
	 						</p>
	 						<p class="date">2023.03.31</p>
	 					</div>
	 					<!--// 텍스트영역 -->

						<button type="button" class="btn_more" onclick = testOn()>
							<span class="blind">더보기</span>
						</button>
					</div>
		</div>`

        ;



    }

    function testOn(){
        let text_more = document.getElementById("textMore");
        console.log("text_more",text_more.classList)
        if(text_more.classList[1]=="on"){
            $( '#textMore' ).removeClass( 'on' );
        }else{
            $( '#textMore' ).addClass( 'on' );
        }
        // end_num.innerHTML=pack.totalPocaSize
        // crt_num.innerHTML=pack.pocaGetSize
        // total_num.innerHTML = pack.totalPocaSize
        // if(pack.totalPocaSize==pack.pocaGetSize){
        // 	$( '.bd_state' ).addClass( 'allca' );
        // }else{
        // 	$( '.bd_state' ).removeClass( 'allca' );
        // 			}
    }


    function getTotalPackList(){


        // console.log(tt)
        $.ajax({
            url: "<?=$api_url?>"+"/api/v1/arpoca/userPack/"+<?=$user_id?>,
        type: "get",
            contentType:"application/json",
            async:false,
            //   data:get_pack_data,
            datatype: "JSON",
            success: function(obj){


            console.log(obj);
            obj.forEach((pack,index,array)=>{
                console.log("pack",pack)
                // pack.pocaList.forEach((poca,index,array)=>{
                // 	console.log("poca",poca)

                // })
                if(JSON.stringify(pack.pocaList)==JSON.stringify(pack_poca_data)){
                    console.log("@@@")
                    let end_num = document.getElementById("end_num");
                    let crt_num = document.getElementById("crt_num");
                    let total_num = document.getElementById("total_num");
                    end_num.innerHTML=pack.totalPocaSize
                    crt_num.innerHTML=pack.pocaGetSize
                    total_num.innerHTML = pack.totalPocaSize
                    if(pack.totalPocaSize==pack.pocaGetSize){
                        $( '.bd_state' ).addClass( 'allca' );
                    }else{
                        $( '.bd_state' ).removeClass( 'allca' );
                    }

                }else{
                    console.log(pack.pocaList,pack_poca_data)
                }
            })

            // Datatable 의 reinitialize 를 없애기 위해 destroy


        },
        error: function(xhr, status, error){
            console.log(`error: ${error}`)
            console.log(`status: ${status}`)
            return
        }
    })
    }




</script>

<script type="module">
    // Firebase 구성 객체
    import { initializeApp } from "https://www.gstatic.com/firebasejs/9.22.1/firebase-app.js";
    const firebaseConfig = {
        apiKey: "AIzaSyC244fuuZufmyzxltTHnJHrQYfpOU7fuBk",
        authDomain: "soundgram-tot.firebaseapp.com",
        databaseURL: "https://soundgram-tot-default-rtdb.asia-southeast1.firebasedatabase.app",
        projectId: "soundgram-tot",
        storageBucket: "soundgram-tot.appspot.com",
        messagingSenderId: "186758434361",
        appId: "1:186758434361:web:e6d4c5a7b262bfdd7e87e8",
        measurementId: "G-KNCDL0V8L9"
    };

    // Firebase 앱 초기화

    const app = initializeApp(firebaseConfig);

    // 나머지 코드 추가
    // ...
</script>
<!-- <script type="text/javascript" src="../chat-api/vendor/firebase-config.js"></script> -->
<script type="module">

    import { getDatabase, ref, onChildAdded, onChildChanged,onChildRemoved } from "https://www.gstatic.com/firebasejs/9.22.1/firebase-database.js";

    const db = getDatabase();
    const commentsRef = ref(db, 'comments');
    console.log("!!pack_poca_data",pack_poca_data)
    let global_poca_id = selected_poca_data.id
    let packId = pack_id;
    let pocaId = global_poca_id;

    // const pocaId = 231;
    let reqUrl = (pocaId == null) ? `chat-api/get-comments-api.php?pack_id=${packId}` : `chat-api/get-comments-api.php?pack_id=${packId}&poca_id=${pocaId}`

    // AJAX로 채팅 목록 업데이트하는 함수
    window.updateSimpleChatList = function() {
        let global_poca_id = selected_poca_data.id
        let packId = pack_id;
        let pocaId = global_poca_id;

        // const pocaId = 231;
        let reqUrl = (pocaId == null) ? `chat-api/get-comments-api.php?pack_id=${packId}` : `chat-api/get-comments-api.php?pack_id=${packId}&poca_id=${pocaId}`
        console.log("selected_poca_data!!",selected_poca_data)
        if(selected_poca_data!="null"){
            $.ajax({
                url: reqUrl,
                type: 'GET',
                // dataType: 'json',
                // data: JSON.stringify({ pack_id: "934", poca_id: "231" }),
                success: function(response) {
                    // 업데이트된 채팅 목록을 생성
                    console.log("response",response)
                    let chatList_small = '';
                    let chatList_full = '';
                    Object.keys(response).forEach(function(commentKey) {
                        const commentData = response[commentKey];
                        const commentHtml = `
                        <div class="group">
                            <span class="user">${commentData.user_nickname}</span>
                            <span class="txt">${commentData.comment_content}</span>
                        </div>`;
                        chatList_small += commentHtml;
                    });
                    Object.keys(response).forEach(function(commentKey) {

                        const commentData = response[commentKey];
                        console.log("commentData",commentData,commentKey)
                        const commentHtml =
                            `<div class="group">
							<div class="img_area">
								<figure class="img">
									<img src="../assets/image/common/profile_none.png" alt=""><!-- 프로필이미지 없음 -->
								</figure>
							</div>
							<div class="txt_area">
								<p class="chat_info">
									<span class="user">${commentData.user_nickname}</span>
									<span class="date">${commentData.create_timestamp}</span>
								</p>
								<div class="txt_des">
									<span class="txt">${commentData.comment_content}</span>
									<span class="loc">${selected_poca_data.address}</span>
									<span class="num">sp No.<em>${selected_poca_data.number}</em></span>
								</div>
							</div>
							<div class="btn_edit">
								<a href="#none" class="btn_btm_pop" open-pop="btm_edit" onclick = "btn_pop_click('${commentKey}')"><span class="blind">talk 상태변경</span></a>
							</div>
						</div>`
                        chatList_full += commentHtml;
                    });

                    $('.talk_list').html(chatList_small);
                    $('.chat_list').html(chatList_full);

                }
            });}

    }

    //"comments" 데이터 추가되면 실시간 업데이트하는 리스너
    onChildAdded(commentsRef, (snapshot) => {
        updateSimpleChatList();
    });

    //"comments" 데이터 수정되면 실시간 업데이트하는 리스너
    onChildChanged(commentsRef, (snapshot) => {
        updateSimpleChatList();
    });

    // "comment" 데이터 삭제되면 실시간 업데이트하는 리스너
    onChildRemoved(commentsRef, (snapshot) => {
        updateSimpleChatList();
    });


    // 페이지 로드 시 초기 채팅 목록 업데이트
    // $(document).ready(function() {
    //     updateSimpleChatList();
    // });

</script>
<script>

    function poca_pop(pocadata){

        make_poca_section(pocadata)
        let poca_section = document.getElementById("poca_section");
        console.log("classList",poca_section.classList)


        if(poca_section.classList[2]!="on"){
            $('#poca_section').addClass('on')
            console.log("selected_poca_data",selected_poca_data)
            updateSimpleChatList();

        }else{
            $('#poca_section').removeClass('on')
        }






    }
</script>
<script>
    $(".btn_submit").on("click", function(){
        send_msg();
    })


    function send_msg(){
        let send_text = document.getElementById('send_text').value;
        let send_text_data =
            {
                "user_id" : <?=$user_id?>,
        "user_nickname" : "귤버섯",
            "pack_id" : pack_id,
        "poca_id" : selected_poca_data.id,

            "comment_content" : send_text
    }
        console.log("send_text_data",send_text_data)


        $.ajax({
            url: "https://chipsterplay.soundgram.co.kr/chat-api/chat-send.php",
            type: "post",
            //   contentType:"application/json",
            async:false,
            data:JSON.stringify(send_text_data),

            //   datatype: "JSON",
            success: function(obj){
                console.log(obj);
                console.log("sendresponse",obj)
                // Datatable 의 reinitialize 를 없애기 위해 destroy
            },
            error: function(xhr, status, error){
                console.log(`error: ${error}`)
                console.log(`status: ${status}`)
                return
            }
        })

    }
    // function btmclick(){ /* 팝업열기 */
    // 		// e.preventDefault();
    // 		alert("!!!!")
    // 		var target = $(this).attr('open-pop') ;
    // 		$('.btm_pop' + '.' + target).addClass('on');
    // 		dimShow();
    // 	};
    // function dimShow(){ /* 딤드 show */
    // 	$('body').addClass('dim');
    // }
</script>
<script>
    let delete_num_key = ""
    function btn_pop_click(commentKey){
        console.log("commentKey",commentKey)
        delete_num_key = commentKey
        $('.btm_pop').addClass('on');
        dimShow()
    }
    function btn_pop_click_out(){
        $('.btm_pop').removeClass('on');
        setTimeout(dimHide, 150);
    }
    $(document).mouseup(function (e){ /* 닫기 */
        var popArea = $('.btm_pop');
        if(popArea.has(e.target).length === 0 && $('body').hasClass('dim')){
            popArea.removeClass('on');
            setTimeout(dimHide, 150);
        }
    });
    function delete_comment(){
        let delete_data =
            {
                "user_id" : 934,
                "key" : delete_num_key,

            }
        console.log("delete_data",delete_data)
        $.ajax({
            url: "https://chipsterplay.soundgram.co.kr/chat-api/chat-delete.php",
            type: "post",
            //   contentType:"application/json",
            async:false,
            data:JSON.stringify(delete_data),

            //   datatype: "JSON",
            success: function(obj){
                console.log(obj);
                console.log("sendresponse",obj)
                btn_pop_click_out()
                // Datatable 의 reinitialize 를 없애기 위해 destroy
            },
            error: function(xhr, status, error){
                console.log(`error: ${error}`)
                console.log(`status: ${status}`)
                return
            }
        })
    }

</script>



