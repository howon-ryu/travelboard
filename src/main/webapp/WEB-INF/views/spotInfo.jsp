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
                <a class="back" onclick="goToBack()">
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
            <div class="talk_wrap" style="min-height: 40%">
                <div class="talk_tit">
                    <div class="tit_area">
                        <p>COMMENT</p>
                    </div>
                    <div class="talk_cnt">
                        <span>175</span>
                    </div>
                    <a   class="go_view btn_full_pop" open-pop="talk_pop">
                        <span class="blind">댓글영역보기</span>
                    </a>
                </div>
                <div class="talk_list">
<%--                    <div class="group gre"><!-- 텍스트 색상 초록 class="gre" 추가 -->--%>
<%--                        <span class="user">Chipster Original</span>--%>
<%--                        <span class="txt">경복궁 조아요!</span>--%>
<%--                    </div>--%>
<%--                    <div class="group pur"><!-- 텍스트 색상 보라 class="pur" 추가 -->--%>
<%--                        <span class="user">Chipster Original</span>--%>
<%--                        <span class="txt">튼튼이가 요즘에 안보여서 엄청 걱정했는데 덕분에 만날수 있었어요</span>--%>
<%--                    </div>--%>
<%--                    <div class="group">--%>
<%--                        <span class="user">댓글작성자닉네임</span>--%>
<%--                        <span class="txt">튼튼이가 요즘에 </span>--%>
<%--                    </div>--%>

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
            <div class="tab_btn ar " id = "userPick" onclick="userPick()">
                <a  >
                    <span class="blind">AR</span>
                </a>
            </div>
            <div class="tab_btn binder">
                <a onclick= "goToBinder()">
                    <span class="blind">binder</span>
                </a>
            </div>
        </div>
    </aside>
    <!--// 팩탭바 -->

</div>
<!--// #WRAP -->

<!-- LIVE TALK 전체팝업 -->

<!--// LIVE TALK 전체팝업 -->
</body>

<section class="full_pop talk_pop" ><!-- 전체팝업 활성화 class="on"추가 -->
    <!-- #header -->
    <header id="head">
        <div class="header_wrap">
            <!-- 뒤로가기 -->
            <div class="tit_ctrl">
                <a   class="close">
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
                    <h2 id = " spot_title"> </h2>
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
                                <a   class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
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
                                <a   class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
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
                                <a   class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
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
                                <a   class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
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
                                <a   class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
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
                                <a   class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
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
                                <a   class="btn_btm_pop" open-pop="btm_edit"><span class="blind">talk 상태변경</span></a>
                            </div>
                        </div>
                    </div>

                    <!-- 더보기 -->
                    <div class="chat_more" hidden>
                        <a   class="btn_more">
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
<section class="btm_pop btm_edit">
    <div class="cotn">
        <div class="btn_wrap">
            <a   class="edit" onclick=delete_comment() >
                <i class="i_edit i_del"></i>
                <span>삭제</span>
            </a>
            <a   class="edit close" onclick = btn_pop_click_out()>
                <i class="i_edit i_cancel"></i>
                <span>취소</span>
            </a>
        </div>

    </div>
</section>
<script>
    let delete_num_key = ""
    $(document).ready(function() {
        checkPick()
    });
    function btn_pop_click_out(){
        $('.btm_pop').removeClass('on');
        setTimeout(dimHide, 150);
    }

    function checkPick(){
        let checkPickData =
            {

                "user_id":getCookieValue("id"),

                "pick_spot_id":getParameterByName("pack_id",currentUrl)


            }

        $.ajax({

            url: "http://localhost:8080/travelboard/checkPick",
            type: "post",
            contentType:"application/json",
            async:false,
            data : JSON.stringify(checkPickData),
            datatype: "JSON",
            success: function(obj){


                console.log("checkPick",obj);



            },
            error: function(xhr, status, error){
                console.log(`error: ${error}`)
                console.log(`status: ${status}`)
                return
            }
        })


    }

    function delete_comment(){
        let delete_data =
            {

                "id" : delete_num_key,

            }
        console.log("delete_data",delete_data)
        $.ajax({

            url: "http://localhost:8080/travelboard/deleteComment",
            type: "post",
            contentType:"application/json",
            async:false,
            data : JSON.stringify(delete_data),
            datatype: "JSON",
            success: function(obj){


                console.log(obj);


                btn_pop_click_out()
                updateSimpleChatListSpot()



            },
            error: function(xhr, status, error){
                console.log(`error: ${error}`)
                console.log(`status: ${status}`)
                return
            }
        })

    }
    function userPick(){



        if(document.getElementById('userPick').classList.contains('on')){
            alert("내 저장 리스트에서 삭제합니다.")
            document.getElementById('userPick').classList.remove('on');
            let deletePickData =
                {

                    "user_id":getCookieValue("id"),

                    "pick_spot_id":getParameterByName("pack_id",currentUrl)


                }
            $.ajax({

                url: "http://localhost:8080/travelboard/deletePick",
                type: "post",
                contentType:"application/json",
                async:false,
                data : JSON.stringify(deletePickData),
                datatype: "JSON",
                success: function(obj){


                    console.log(obj);

                },
                error: function(xhr, status, error){
                    console.log(`error: ${error}`)
                    console.log(`status: ${status}`)
                    return
                }
            })
        }else{
            alert("내 저장 리스트에 추가합니다.")
            document.getElementById('userPick').classList.add('on');
            let userPickData =
                {

                    "user_id":getCookieValue("id"),

                    "pick_spot_id":getParameterByName("pack_id",currentUrl)


                }
            $.ajax({

                url: "http://localhost:8080/travelboard/sendUserPick",
                type: "post",
                contentType:"application/json",
                async:false,
                data : JSON.stringify(userPickData),
                datatype: "JSON",
                success: function(obj){


                    console.log(obj);

                },
                error: function(xhr, status, error){
                    console.log(`error: ${error}`)
                    console.log(`status: ${status}`)
                    return
                }
            })

        }



    }

    function btn_pop_click(commentKey, user_id){
        console.log(user_id, getCookieValue("id"))
        if(user_id == getCookieValue("id")){
            console.log("commentKey",commentKey)
            delete_num_key = commentKey
            $('.btm_pop').addClass('on');
            dimShow()

        }


    }
    function dimShow(){ /* 딤드 show */
        $('body').addClass('dim');
    }
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

                var  spot_title = document.getElementById(' spot_title')
                spot_title.innerText = data.spot_name

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
    updateSimpleChatListSpot()
function goToBinder(){
    var packId = getParameterByName("pack_id",currentUrl)
    location.href = "binder?pack_id="+packId


}
function updateSimpleChatListSpot(){
        var pack_id = getParameterByName('pack_id', currentUrl);


        let dataValue = {
            "spot_id" : pack_id,
            "photo_id" : "0"
        };

        $.ajax({
            type: "POST",
            url: "http://localhost:8080/travelboard/getCommentList",
            data: JSON.stringify(dataValue),
            contentType: "application/json",
            dataType: "json",
            success: function(response) {
                console.log("data",response);

                let chatList_small = '';
                let chatList_full = '';

                Object.keys(response).forEach(function(commentKey) {
                    const commentData = response[commentKey];
                    const commentHtml = `
                    <div class="group">
                        <span class="user">`+commentData.user_nickname+`</span>
                        <span class="txt">`+commentData.content+`</span>
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
                                <span class="user">`+commentData.user_nickname+`</span>
                                <span class="date">`+commentData.create_timestamp+`</span>
                            </p>
                            <div class="txt_des">
                                <span class="txt">`+commentData.content+`</span>

                            </div>
                        </div>
                        <div class="btn_edit">
                            <a   class="btn_btm_pop" open-pop="btm_edit" onclick="btn_pop_click(`+commentData.id+`,`+commentData.user_id+`)"><span class="blind">talk 상태변경</span></a>
                        </div>
                    </div>`
                    chatList_full += commentHtml;
                });

                $('.talk_list').html(chatList_small);
                $('.chat_list').html(chatList_full);
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
    $(".btn_submit").on("click", function(){
        console.log("btn click")
        send_msg();
    })
    function send_msg(){
        var send_text = document.getElementById('send_text').value;
        var pack_id = getParameterByName('pack_id', currentUrl);
        let send_text_data =
            {
                "spot_id":pack_id,
                "user_id":getCookieValue("id"),
                "photo_id":0,
                "content":send_text


            }
        console.log("send_text_data",send_text_data)


        $.ajax({

            url: "http://localhost:8080/travelboard/sendComment",
            type: "post",
            contentType:"application/json",
            async:false,
            data : JSON.stringify(send_text_data),
            datatype: "JSON",
            success: function(obj){


                console.log(obj);
                $('#send_text').val('');

                updateSimpleChatListSpot()



            },
            error: function(xhr, status, error){
                console.log(`error: ${error}`)
                console.log(`status: ${status}`)
                return
            }
        })

    }




</script>





</html>