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

    <link rel="stylesheet" href="${path}/assets/css/lib/jquery-ui.min.css">
    <link rel="stylesheet" href="${path}/assets/css/lib/swiper-bundle.min.css">
    <link rel="stylesheet" href="${path}/assets/css/setting.css">
    <link rel="stylesheet" href="${path}/assets/css/common.css">


    <script type="text/javascript" src="${path}/assets/js/lib/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="${path}/assets/js/lib/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${path}/assets/js/lib/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="${path}/assets/js/common.js"></script>
    <title>#6_mypage | 비밀번호변경</title>
    <link rel="stylesheet" href="${path}/assets/css/mypage.css">
</head>

<body>
<!-- 마이페이지 전체팝업 -->
<section class="full_pop mypage on"><!-- 전체팝업 활성화 class="on"추가 -->
    <!-- #header -->
    <header id="head">
        <div class="header_wrap">
            <!-- 뒤로가기 -->
            <div class="tit_ctrl">
                <a  class="close" onclick="goToBack()">
                    <span class="blind">닫기</span>
                </a>
            </div>
            <!--// 뒤로가기 -->

            <!-- 타이틀 -->
            <h1>
                <strong>MY PAGE</strong>
            </h1>
            <!--// 타이틀 -->
        </div>
    </header>
    <!--// #header -->

    <!-- #CONTENTS -->
    <div id="content">
        <div class="sub">
            <!-- 비밀번호변경 -->
            <div class="pw_wrap">
                <div class="txt_area">
                    <h2 class="pw_tit">비밀번호 변경</h2>
                    <p class="pw_txt">개인정보보호를 위해 3개월에 한번씩 비밀번호를 변경해주세요</p>
                </div>
                <div class="input_area">
                    <div class="inpt_wrap"><!-- input 오류시 class="wrn"추가 -->
                        <input type="password" placeholder="현재 비밀번호" id = "currentPassword">
                        <button type="button" class="btn_del"><!-- 활성화시 style="display:block" -->
                            <span class="blind">입력텍스트삭제</span>
                        </button>
                    </div>
                    <div class="inpt_wrap"><!-- input 오류시 class="wrn"추가 -->
                        <input type="password" placeholder="변경할 비밀번호" id = "changingPassword" oninput="equalCheck()">
                        <button type="button" class="btn_del"><!-- 활성화시 style="display:block" -->
                            <span class="blind">입력텍스트삭제</span>
                        </button>
                    </div>
                </div>
                <div class="btn_wrap " >
                    <a  id = "changePassword" class="btn color_type4 inactv not_hover">변경 완료</a><!-- 비활성화시 class="inactv"추가 -->
                </div>
            </div>
            <!--// 비밀번호변경 -->
        </div>
    </div>
    <!--// #CONTENTS -->
</section>
<!--// 마이페이지 전체팝업 -->
</body>


<script>

    function equalCheck(){


        const currentPassword = $("#currentPassword").val()
        const changingPassword = $("#changingPassword").val()
        if(currentPassword != changingPassword){
            document.getElementById('changePassword').classList.remove('inactv');
            document.getElementById('changePassword').classList.remove('not_hover');
        }else{

            if (!document.getElementById('changePassword').classList.contains('inactv')) {
                document.getElementById('changePassword').classList.add('inactv');
            }
            if (!document.getElementById('changePassword').classList.contains('not_hover')) {
                document.getElementById('changePassword').classList.add('not_hover');
            }


        }

    }
    // const getCookieValue = (name) => (
    //     document.cookie.match('(^|;)\\s*' + name + '\\s*=\\s*([^;]+)')?.pop() || ''
    // )
    $("#changePassword").on("click", function(){
        console.log("changebtn click")

        const currentPassword = $("#currentPassword").val()
        const changingPassword = $("#changingPassword").val()

        if(currentPassword != changingPassword){
            let dataValue = {
                "userId" : getCookieValue("id"),
                "currentPassword" : currentPassword,
                "changingPassword" : changingPassword
            }


            console.log(dataValue)

            $.ajax({
                type : "POST",

                url : "http://localhost:8080/travelboard/changePassword",
                data : JSON.stringify(dataValue),
                contentType:"application/json",
                dataType: "json",
                success: function(data) {
                    console.log("data",data)
                    alert("비밀번호 변경이 완료되었습니다.")
                    location.href = "mypage";


                },


                error: function(xhr, textStatus, errorThrown) {
                    alert("비밀번호 변경에 실패하였습니다.")
                    console.log("XHR status: " + xhr.status);
                    console.log("Text status: " + textStatus);
                    console.log("Error thrown: " + errorThrown);
                    console.log("Response text: " + xhr.responseText);
                }
            });




        }






    });




</script>


</html>
