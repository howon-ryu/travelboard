<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
	<link rel="stylesheet" href="${path}/assets/css/setting.css">
	<link rel="stylesheet" href="${path}/assets/assets_howon/css/common_temp.css">
	<link rel="stylesheet" href="${path}/assets/assets_howon/css/joinMain.css">
	<script type="text/javascript" src="../assets/js/lib/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="../assets/js/lib/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../assets/js/lib/swiper-bundle.min.js"></script>
	<script type="text/javascript" src="${path}/assets/js/common.js"></script>

	<link rel="stylesheet" href="${path}/assets/css/mypage.css">
</head>

<body>
<div id="cu10_c" class="cu10" style="padding: 25% 0px 0px;">

  <div >
          <nav>
                <span id="member_close" class="close"></span>
           </nav>
  </div>
  <div class="mb_title">
    <h2>빠른 회원 가입</h2>
    <h4>오래 걸리지 않아요~ 2분이면 <strong>OK!</strong></h4>
  </div>
  <div class="mb_content">
    <div id="member_input" class="mb_form">
      <!--

      <input id="name" class="input_style" type="text" name="name" placeholder="이름">

      -->
      <div class="alert hidden"></div>
      <input id="id" class="input_style" type="text" name="id" placeholder="아이디" maxlength="20">
      <div class="alert hidden">6~20자의 공백 없는 영문+숫자로 입력하세요.</div>
      <input id="password_org" class="input_style" type="password" name="password" placeholder="비밀번호" maxlength="16">
      <div class="alert hidden">
        8~16자의 공백 없는 영문+숫자+특수문자로 입력하세요.
      </div>
      <input id="password" class="input_style" type="password" name="password" placeholder="비밀번호 확인">

      <!--
      <div class="alert hidden">비밀번호를 한번 더 입력해주세요.</div>


      <input id="tel" class="input_style" type="tel" name="phone" placeholder="- 제외한 휴대폰 번호" maxlength="11">
      <div class="alert hidden">이미 사용 중인 휴대폰 번호입니다.</div>

       -->

      <input id="nick" class="input_style" type="text" name="nick" placeholder="닉네임" maxlength="20">
      <div class="alert hidden">
        한글 1~10자, 영문 2~20자, 숫자를 입력하세요. (조합 가능)
      </div>
    </div>
    <button id="goJoin" class="btn_bora">
      회원 가입 <img src="/images/cu10_ic_write.png" alt="">
    </button>
  </div>
</div>
</body>

<script>

    $(".close").on("click", function(){
             location.href = "init";



    });

    $(".btn_bora").on("click", function(){
        console.log("btn click")
        const id = $("#id").val()
        const password = $("#password_org").val()
        const nickname = $("#nick").val()

        let dataValue = {
            "id" : id,
            "password" : password,
            "nickname" : nickname
        }
        console.log(dataValue)

         $.ajax({
              type : "POST",

              url : "http://localhost:8080/travelboard/joinUser",
              data : JSON.stringify(dataValue),
              contentType:"application/json",
              dataType: "json",
              success: function(data) {
                    console.log("data",data)
                    alert("회원가입이 완료되었습니다.")
                    location.href = "login";


                },


              error: function(xhr, textStatus, errorThrown) {
              alert("회원가입에 실패하였습니다.")
                console.log("XHR status: " + xhr.status);
                    console.log("Text status: " + textStatus);
                    console.log("Error thrown: " + errorThrown);
                    console.log("Response text: " + xhr.responseText);
              }
            });



     });




</script>



</html>
