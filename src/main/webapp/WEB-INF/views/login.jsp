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
<div class="container_popup">

  <!-- 1차 수정 추가 부분 해당페이지에 1개 있습니다.
  주석 검색어 : 추가부분01 -->
<!-- 서버에 올리는 부분 start -->
<div id="cu10_b" class="cu10" style="padding: 25% 0px 0px;">
 <div >
             <nav>
                   <span id="member_close" class="close"></span>
              </nav>
     </div>
  <div class="mb_title">
    <h2 class="sg_app">회원 로그인</h2>
    <h2 class="chst_app">여행지 문 열기</h2>
    <h4 class="sg_app">사운드그램 계정으로 로그인해 주세요.</h4>
    <!--<h4 class="chst_app">칩칩이 포탈문 열기 암호를 대시오~</h4>-->
  </div>
  <div class="mb_content">
    <div class="mb_form">
      <input id="loginid" class="input_style" type="text" name="id" placeholder="ID (6~20자 영문+숫자)">
      <div id="loginidalert" class="alert hidden">
        아이디는 공백 없이 영문 소문자, <br>숫자 6~20자로 입력하세요.
      </div>
      <input id="loginpassword" class="input_style" type="password" name="password" placeholder="Password (8~16자 영문+숫자+특수문자)">
      <div id="loginpassalert" class="alert hidden">
        비밀번호는 영문 소문자, <br>숫자를 조합하여 8~16자로 입력하세요.
      </div>
    </div>
    <button class="btn_bora">
      회원 로그인 <img src="images/cu10_ic_login_white.png" alt="">
    </button>
    <button id="srhidpass" class="btn_boraline">아이디 / 비밀번호 찾기</button>

    <!-- 220713 start 삭제 -->

    <!-- <ul class="mb_sns">
      <li>
        <a id="kakao" href="#">
          <span class="kakao"></span>
        </a>
      </li>
      <li id="naverIdLogin">
        <a
          id="naverIdLogin_loginButton"
          href="https://nid.naver.com/oauth2.0/authorize?response_type=code&amp;client_id=jqs6fMhdlwDS46pHx3D2&amp;redirect_uri=http%3A%2F%2Fdisk.soundgram.co.kr%3A10080%2Fdev%2Flogin_popup.php%3Flogintype%3Dnaver%26albumid%3D619%26device_id%3D1101%26uuid%3D9646eb8d-b560-857f-e5bc-412f0f4e5402%26isiplayer%3Dfalse&amp;state=72a7291d4cde850569e1b8cf6a8f759d"
        >
          <span class="naver"></span>
        </a>
      </li>
      <li id="li-apple">
        <a id="apple" href="#">
          <span class="apple"></span>
        </a>
      </li>
    </ul>
     -->

    <!-- 220713 end 삭제 -->
    <p>
      간편 로그인 및 회원가입 시, <br>본 서비스의
      <strong id="accessterms">이용약관 및 개인정보처리방침</strong>에
      <br>따라 정보가 관리됩니다.
    </p>
    <button id="join" class="btn_boraline2">
      빠른 회원가입 <i></i>
      <!-- <img src="images/cu10_ic_join.png" alt="" /> -->
    </button>
  </div>
</div>
<!-- 서버에 올리는 부분 end -->

<div id="cu10_c" class="hidden cu10" style="padding: 25% 0px 0px;">
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
      <input id="name" class="input_style" type="text" name="name" placeholder="이름">
      <div class="alert hidden"></div>
      <input id="id" class="input_style" type="text" name="id" placeholder="아이디" maxlength="20">
      <div class="alert hidden">6~20자의 공백 없는 영문+숫자로 입력하세요.</div>
      <input id="password_org" class="input_style" type="password" name="password" placeholder="비밀번호" maxlength="16">
      <div class="alert hidden">
        8~16자의 공백 없는 영문+숫자+특수문자로 입력하세요.
      </div>
      <input id="password" class="input_style" type="password" name="password" placeholder="비밀번호 확인">
      <div class="alert hidden">비밀번호를 한번 더 입력해주세요.</div>
      <input id="tel" class="input_style" type="tel" name="phone" placeholder="- 제외한 휴대폰 번호" maxlength="11">
      <div class="alert hidden">이미 사용 중인 휴대폰 번호입니다.</div>
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


	<meta charset="utf-8">
	<style>
		#cu01_d {
		  padding: 20% 0 0 0;
		  width: 100%;
		  clear: both;
		  position: relative;
		}

		.mb_title {
		  width: -webkit-calc(100% - 44px);
		  width: -moz-calc(100% - 44px);
		  width: calc(100% - 44px);
		  height: 70px;
		  margin-left: 44px;
		  background-size: contain;
		  background-position: right 20px bottom;
		  background-repeat: no-repeat;
		}
		.mb_title h1 {
		  font-weight: 200;
		  font-family: "Noto Sans CJK KR Light";
		  padding-top: 14px;
		}

		#cu01_d .mb_title {
		  height: 20px;
		}

		#cu10_d h2 {
			font-size: 1.3em;
		  font-weight: 500;
		  margin: 0 0 20px;
		  font-family: "Noto Sans CJK KR";
		}
		#cu01_d {
		  height: 100%;
		  overflow-y: scroll;
		}

		.mb_title h4 {
		  font-size: 0.8em;
		}
		.mb_title h4 strong,
		.mb_content p strong {
		  color: #ce4ec4;
		}

		.mb_content {
		  width: -webkit-calc(100% - 44px);
		  width: -moz-calc(100% - 44px);
		  width: calc(100% - 44px);
		  margin: 14px 22px 24px;
		}
		.mb_content p {
		  margin: 12px auto;
		  font-size: 0.8em;
		}

		.mb_text {
		  border: thin solid #ccc;
		  background: #fff;
		  padding: 14px;
		  height: 180px;
		  overflow-y: scroll;
		  font-size: 0.8em;
		}
		@media only screen and (device-width: 375px) and (device-height: 812px) and (-webkit-device-pixel-ratio: 3),
		  screen and (device-width: 414px) and (device-height: 896px) and (-webkit-device-pixel-ratio: 2),
		  screen and (device-width: 414px) and (device-height: 896px) and (-webkit-device-pixel-ratio: 3),
		  screen and (device-width: 390px) and (device-height: 844px) and (-webkit-device-pixel-ratio: 3),
		    screen and (device-width: 428px) and (device-height: 926px) and (-webkit-device-pixel-ratio: 3) {
		      .mb_text {
		        height: 220px !important;
		      }
		}
		@media (min-height: 812px) and (max-height: 926px) {
			.mb_text {
				height: 260px !important;
			}
		}
		@media only screen and (max-width: 424px) and (max-height: 753px) {
			.mb_text {
				height: 220px !important;
			}
		}
		@media only screen and (max-height: 667px) {
			.mb_text {
				height: 180px !important;
			}
		}
	</style>


	<div id="cu10_d" class="cu10 hidden">
		<div >
                    <nav>
                          <span id="member_close" class="close"></span>
                     </nav>
            </div>
		<div class="mb_title">
		<h2>이용 약관</h2>
		</div>
		<div class="mb_content">
		<div class="mb_text">
		<b>[ 사운드그램 모바일 음반 이용약관 ]</b><br><br>
	제&nbsp;1&nbsp;장&nbsp;:&nbsp;총칙<br>
	제&nbsp;2&nbsp;장&nbsp;:&nbsp;계약당사자의&nbsp;의무<br>
	제&nbsp;3&nbsp;장&nbsp;:&nbsp;서비스&nbsp;이용<br>
	제&nbsp;4&nbsp;장&nbsp;:&nbsp;기타<br><br>
	제1장&nbsp;총&nbsp;칙<br><br>
	제1조&nbsp;(목적)<br>
	이 약관은 회원이 주식회사 사운드그램(이하 “회사”라 합니다)에서 제공하는 무선 인터넷 음악서비스인 사운드그램 서비스(이하 ‘서비스'라 합니다)를 이용함에 있어 회원과 회사간의 권리, 의무 및 책임사항, 서비스 이용조건 및 절차 등 기본적인 사항을 규정함을 목적으로 합니다.<br><br>
	제2조&nbsp;(용어의&nbsp;정의)<br>
	이&nbsp;약관에서&nbsp;사용하는&nbsp;용어의&nbsp;정의는&nbsp;다음&nbsp;각&nbsp;호와&nbsp;같습니다.<br>
	1.	서비스 : 구현되는 단말기(휴대형 단말기 등의 각종 유무선 장치를 포함)와 상관없이 "이용자"가 이용할 수 있는 콘텐츠 서비스를 의미합니다.<br>
	2.	이용자 : 본 약관에 따라 회사가 제공하는 서비스를 받는 자<br>
	3.	콘텐츠 : 회사가 저작권을 획득, 위탁, 보유하여 본 서비스에서 제공하는 음악, 영상, 사진, 디자인 이미지, 스마트 미디어 등의 모든 콘텐츠<br>
	4.	게시물 : 이용자가 서비스를 이용함에 있어 서비스 상에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.<br>
	5.	게시자 : 서비스를 통해 자신의 게시물을 등록한 이용자<br>
	운영자&nbsp;:&nbsp;서비스의&nbsp;전반적인&nbsp;관리와&nbsp;원활한&nbsp;운영을&nbsp;위하여&nbsp;회사가&nbsp;선정한&nbsp;자<br><br>
	제3조&nbsp;(약관의&nbsp;효력&nbsp;및&nbsp;변경)<br>
	이용자는 변경된 약관에 동의하지 않을 경우 서비스 이용 내용 삭제를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.<br>
	1.	이 약관은 대한민국 및 해외에서 서비스를 이용하고자 하는 모든 회원에 대하여 그 효력이 발생합니다. <br>&nbsp;
	2.	이 약관의 내용은 서비스 화면에 게시하거나 기타의 방법으로 회원에게 공시하고, 이에 동의한 회원이 서비스에 가입함으로써 효력이 발생합니다. 회사는 회원이 동의하기에 앞서 약관의 내용을 회원이 쉽게 이해하여 착오 없이 거래할 수 있도록 별도의 연결 화면 또는 팝업 화면 등을 제공하여 회원의 확인을 구합니다.<br>
	3.	회사는 필요하다고 인정되는 경우 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 서비스 화면에 공지하며, 공지 후 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.<br>
	4.	이용자가 변경된 약관에 동의하지 않는 경우 서비스 이용을 중단하고 본인의 회원 등록을 취소할 수 있으며, 계속 사용하시는 경우에는 약관 변경에 동의한 것으로 간주되며 변경된 약관은 전항과 같은 방법으로 효력이 발생합니다.<br><br>
	제4조&nbsp;(약관&nbsp;외&nbsp;준칙)<br>
	이 약관에 명시되지 않은 사항은 콘텐츠산업진흥법, 전자상거래등에서의 소비자보호에 관한 법률, 저작권법 등 관련 법령의 규정과 일반 상관례에 의합니다.<br><br>
	제2장&nbsp;계약당사자의&nbsp;의무<br><br>
	제5조&nbsp;(회사의&nbsp;의무)<br>
	회사는 서비스 제공과 관련해서 알고 있는 회원의 신상 정보를 본인의 승낙 없이 제3자에게 누설하거나 배포하지 않습니다. 단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 또는 기타 관계법령에서 정한 절차에 의한 요청이 있을 경우에는 그러하지 아니합니다.<br><br>
	제6조&nbsp;(이용자의&nbsp;의무)<br>
	1.	이용자는 서비스를 이용할 때 다음 각 호의 행위를 하지 않아야 합니다.<br>①	다른 회원의 ID를 부정하게 사용하는 행위 <br>
	②	서비스에서 얻은 정보를 복제, 출판 또는 제3자에게 제공하는 행위<br>
	③	회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 행위 <br>
	④	공공질서 및 미풍양속에 위반되는 내용을 유포하는 행위 <br>
	⑤	범죄와 결부된다고 객관적으로 판단되는 행위 <br>
	⑥	기타 관계법령에 위반되는 행위 <br><br>
	2.	이용자는 콘텐츠를 서비스에서 제공 하는 방식 외에 복제하여 소장할 수 없으며 복제를 통한 제3자에게 유포 및 양도를 하지 아니한다 이를 위반할 경우 법적인 책임 외에 콘텐츠의 원저작권자 및 회사에서 발생한 손해에 대해 배상하여야 한다. <br>
	3.	이용자는 서비스를 이용하여 영업활동을 할 수 없으며, 영업활동에 이용하여 발생한 결과에 대하여 회사는 책임을 지지 않습니다.<br>
	4.	이용자는 서비스의 이용권한, 기타 이용계약상 지위를 타인에게 양도하거나 증여할 수 없으며, 이를 담보로도 제공할 수 없습니다. <br><br>
	제3장&nbsp;서비스&nbsp;이용<br><br>
	제7조&nbsp;(이용자의&nbsp;의무)<br>
	1.&nbsp;이용자는 필요에 따라 자신의 메일, 게시판, 등록 자료 등 유지보수에 대한 관리책임을 갖습니다. 회사에서 제공하는 자료를 임의로 삭제, 변경할 수 없습니다.<br>
	2.	이용자는 회사의 서비스에서 공공질서 및 미풍양속에 위반되는 내용물이나 제3자의 저작권 등 기타 권리를 침해하는 내용물을 등록하는 행위를 하지 않아야 합니다. 만약 이와 같은 내용물을 게재하였을 때 발생하는 결과에 대한 모든 책임은 이용자에게 있습니다.<br>
	3.	만 14세 미만의 미성년자 이용자의 경우 법정대리인의 동의를 구해야 합니다.<br><br>
	제8조&nbsp;(게시물&nbsp;관리&nbsp;및&nbsp;삭제)<br>
	회사는 효율적인 서비스 운영을 위하여 회원의 메모리 공간, 메시지 크기, 보관일 수 등을 제한할 수 있으며 회원이 게시하거나 전달하는 서비스 내의 내용물(회원간 전달 포함)이 다음 각 호의 경우에 해당한다고 판단되는 경우 사전통지 없이 삭제할 수 있으며, 이에 대해 회사는 어떤 책임도 지지 않습니다.<br>
	1.	회사, 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우<br>
	2.	공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등의 유포에 해당하는 경우 <br>
	3.	범죄적 행위에 결부된다고 인정되는 내용인 경우 <br>
	4.	회사의 저작권, 제3자의 저작권, 서비스 콘텐츠의 저작권 및 초상권 등 기타 권리를 침해하는 내용인 경우<br>
	5.	회사에서 제공하는 서비스와 관련 없는 내용인 경우<br>
	6.	승인되지 않은 광고, 판촉물을 게재하는 경우<br>
	7.	이용자가 음란물을 게재하거나 음란 사이트를 링크하는 경우 <br>
	8.	기타 관계법령에 위반된다고 판단되는 경우 <br><br>
	제9조&nbsp;(게시물의&nbsp;저작권)<br>
	1.	게시물의 저작권은 게시자 본인에게 있으며 이용자는 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다. 게시물과 관련하여 발생하는 부분에 대해서는 게시자에게 그 책임이 있습니다.<br>
	2.	회사는 이용자가 서비스 내에 게시한 게시물이 타인의 저작권, 프로그램 저작권 등을 침해하더라도 이에 대한 민, 형사상의 책임을 부담하지 않습니다. 만일 회원이 타인의 저작권, 프로그램저작권 등을 침해하였음을 이유로 회사가 타인으로부터 손해배상청구 등 이의 제기를 받은 경우 회원은 회사의 면책을 위하여 노력하여야 하며, 회사가 면책되지 못한 경우 회원은 그로 인해 회사에 발생한 모든 손해를 부담하여야 합니다.<br>
	3.	회사가 작성한 저작물, 기타 콘텐츠에 대한 저작권 등 기타 권리는 회사에 귀속합니다.<br><br>
	제10조&nbsp;(서비스&nbsp;이용시간)<br>
	서비스의 이용은 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만 정기 점검 등의 사유 발생 시는 그러하지 않습니다.<br><br>
	제11조&nbsp;(서비스&nbsp;이용&nbsp;책임)<br>
	서비스를 이용하여 해킹, 음란사이트 링크, 상용S/W 불법 배포, 게시된 자료에 대하여 무단 도용 등의 행위를 하여서는 아니 되며, 이를 위반 시 발생한 영업활동의 결과 및 손실, 관계기관에 의한 법적 조치 등에 관하여는 회사는 책임을 지지 않습니다.<br><br>
	제12조 (서비스 제공의 중지)<br>
	다음&nbsp;각&nbsp;호에&nbsp;해당하는&nbsp;경우에는&nbsp;서비스&nbsp;제공을&nbsp;중지할&nbsp;수&nbsp;있습니다.<br>
	1.	서비스가 종료되는 경우<br>
	2.	콘텐츠의 원저작권자가 서비스의 중지를 요청하는 경우<br>
	3.	서비스용 설비의 보수 등 공사로 인한 부득이한 경우 <br>
	4.	전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우<br>
	5.	시스템 점검이 필요한 경우<br>
	6.	기타 불가항력적 사유가 있는 경우<br><br>
	제4장&nbsp;기&nbsp;타<br><br>
	제13조&nbsp;(양도&nbsp;금지)<br>
	회원은 서비스의 이용권한, 기타 이용계약상의 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.<br><br>
	제14조&nbsp;(손해&nbsp;배상)<br>
	1.	회사는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 동 손해가 회사의 고의 또는 중대한 과실로 인한 손해를 제외하고 이에 대하여 책임을 부담하지 아니합니다.<br>
	2.	회원이 서비스를 이용함에 있어 행한 불법행위나 이 약관 위반행위로 인하여 회사가 당해 회원 이외의 제3자로부터 손해배상 청구 또는 소송을 비롯한 각종 이의제기를 받는 경우 당해 회원은 자신의 책임과 비용으로 회사를 면책하여야 하며, 회사가 면책되지 못한 경우 당해 회원은 그로 인하여 회사에 발생한 모든 손해를 배상하여야 합니다.<br><br>
	제15조&nbsp;(면책&nbsp;조항)<br>
	1.	회사는 천재지변, 전쟁 또는 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.<br>
	2.	회사는 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 발생한 손해에 대한 책임이 면제됩니다.<br>
	3.	회사는 회원의 귀책사유로 인한 서비스이용의 장애에 대하여 책임을 지지 않습니다.<br>
	4.	회사는 회원이 서비스를 이용하여 기대하는 이익이나 서비스를 통하여 얻는 자료로 인한 손해에 관하여 책임을 지지 않습니다.<br>
	5.	회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.<br>
	6.	회사는 회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.<br><br>
	제16조(관할&nbsp;법원)<br>
	서비스 이용으로 발생한 분쟁에 대해 소송이 제기 될 경우 회사의 소재지를 관할하는 법원을 전속 관할법원으로 합니다.<br><br>
	부&nbsp;칙&nbsp;<br>
	(시행일) 이 약관은 2020년 11월 01일부터 시행합니다.
	</div>
	</div>
	<div class="mb_title">
	<h2>개인정보 보호정책</h2>
	</div>
	<div class="mb_content">
	<div class="mb_text">
	<b>[ 사운드그램 모바일 음반 개인정보처리방침 ]</b><br><br>
	제1조 의의<br>
	회사는 이용자(이하 "회원" 또는 "이용자")의 동의를 기반으로 개인정보를 수집•이용•제공하고 있으며, 「정보통신망 이용촉진 및 정보보호에 관한 법률」(이하 "정보통신망법")을 준수하여 이용자의 개인정보 자기결정권을 적극적으로 보장합니다. 본 「개인정보처리방침」을 통하여 이용자는 자신의 개인정보가 어떠한 용도와 방식으로 취급되고 있으며, 회사가 개인정보 보호를 위해 어떠한 조치들을 취하고 있는지 알 수 있습니다.<br><br>
	「개인정보처리방침」은 다음과 같은 의미를 가지고 있습니다.<br><br>
	1.	회사가 어떤 정보를 수집하고, 어떻게 이용하며, 어떻게 위탁 또는 제공하고, 언제 어떤 방식으로 파기하는지에 관한 사항을 규정합니다.<br>
	2.	정보 주체로서 이용자가 자신의 개인정보에 대해 갖는 권리(변경 및 삭제)와 이를 행사하는 방법을 안내해 드립니다.<br>
	3.	개인정보 침해사고가 발생하는 경우 추가 피해를 예방하고 발생한 피해를 복구하기 위한 도움처를 알려드립니다.<br><br>
	「개인정보처리방침」은 정부의 법령 및 지침의 변경 또는 나은 서비스의 제공을 위하여 그 내용이 변경될 수 있습니다. 회사는 「개인정보처리방침」을 개정하는 경우, 약관 안내 화면에 공지할 것입니다.<br><br>
	제2조 개인정보의 수집 범위 및 방법<br>
	회사는 이용자들에게 다양한 서비스를 제공하고 이용자들의 계정 생성을 돕기 위해 개인 정보를 제공받고 이를 활용하여야 합니다. 회사는 이용자들이 제공받는 서비스에 따라 다음과 같은 방법으로 개인정보를 수집합니다.<br><br>
	1.	회원가입 시 수집하는 개인정보는 아래와 같습니다.<br>
	일반 회원 가입 : 성명, 계정 이메일, 비밀번호, 휴대폰 번호, 닉네임<br>
	카카오톡 간편 가입 : 이용자 식별자 등 카카오톡 간편 가입 시 자동 수집되는 정보<br>
	네이버 간편 가입 : 이용자 식별자 등 네이버 간편 가입 시 자동 수집되는 정보<br>
	페이스북 간편 가입 : 페이스북 공개 프로필 등 페이스북 간편 가입 시 자동 수집되는 정보<br>
	2.	서비스 이용과정에서 IP 주소, 쿠키, 서비스이용기록, 기기 정보가 생성되어 수집될 수 있습니다.<br>
	기기 정보는 모바일 어플리케이션 이용 과정에서 자동으로 생성되어 수집될 수 있습니다.<br>
	3.	회사는 아래의 방법을 통해 개인정보를 수집합니다.<br>
	&nbsp;회원 가입 및 서비스 이용과정에서 이용자가 개인정보 수집에 대해 동의하고 직접 정보를 입력하는 경우 해당 개인정보를 수집합니다.<br><br>
	제3조 개인정보의 이용<br>
	회사는 회원 관리, 서비스 개발, 제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.<br>
	1.	회원 가입 의사의 확인, 이용자의 본인 확인, 이용자 식별, 회원 탈퇴 의사의 확인 등 회원관리<br>
	2.	부정이용 방지, 비인가사용 방지, 계정 도용, 서비스의 원활한 운영에 지장을 주는 행위에 대한 이용제한 조치, 분쟁조정을 위한 기록보존, 불만이나 민원의 처리, 약관 개정 등의 고지사항 전달 등 이용자 보호 및 서비스 운영<br>
	3.	설문조사, 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅<br>
	4.	신규 서비스(콘텐츠) 개발 및 특화, 서비스 이용 기록과 접속 빈도 분석, 서비스 이용에 대한 통계 서비스 분석 및 통계에 따른 맞춤 서비스 제공<br><br>
	제4조 개인정보수집 및 이용에 대한 동의<br><br>
	1.	회사는 「개인정보 수집 및 이용에 대한 동의」에 대해 로그인 화면 내 회원가입 버튼 하단에 개인정보처리방침 약관 보기 링크를 마련하고, 회원 가입 시 개인정보수집에 대해 동의한 것으로 봅니다.<br>
	2.	휴대폰 번호 등 개인정보가 부정확하여 서비스 제공에 지장을 초래하는 경우 회사가 해당 정보의 수정이나 삭제를 회원에게 요청할 수 있습니다.<br>
	3.	회원이 온라인 상에서 자발적으로 제공하는 개인정보는 제3자가 수집하여 사용할 수 있으며 이에 대한 책임은 회원이 부담합니다.<br>
	제5조 개인정보의 공유<br>
	개인정보의 제3자 제공은 제공받는 자의 업무처리와 이익을 위하여 개인정보가 제공되는 것을 의미합니다. 개인정보가 제공된 이후에는 제공받는 자의 책임하에 개인정보가 처리됩니다. 또한 회사는 원칙적으로 이용자의 개인정보를 외부에 제공하지 않습니다.<br>
	단, ① 이용자가 개인정보 제공에 직접 동의한 경우, ② 법률에 특별한 규정이 있거나 법령상 의무 준수를 위해 불가피한 경우, ③ 공공기관이 법령 등에서 정하는 소관 업무의 수행을 위하여 불가피한 경우, ④ 이용자 또는 그 법정 대리인의 사전 동의를 받을 수 없는 경우로서 명백히 이용자 또는 제3자의 생명이나 안전에 급박한 위험이 확인되어 이를 해소하기 위한 경우, 정보 주체의 개인정보를 제3자에게 제공할 수 있습니다.<br>
	이용자가 개인정보 제공에 직접 동의한 경우, 회사는 이용자에게 ① 개인정보를 제공받는 자 ② 제공받는 자의 개인정보 이용목적 ③ 제공하는 개인정보의 항목 ④ 개인정보를 제공받는 자의 개인정보 보유 및 이용기간 ⑤ 개인정보의 제3자 제공을 거부할 권리가 있으며 동의 거부 시 불이익이 있는 경우 그 내용을 고지하여야 합니다.<br><br>
	제6조 개인정보 파기<br>
	회사는 원칙적으로 개인정보수집 및 이용목적이 달성된 후에는 해당 개인정보를 지체 없이 파기합니다. 회사는 회원 탈퇴, 서비스 종료와 같이 개인정보 수집 및 이용목적이 달성된 개인정보는 재생이 불가능한 방법으로 파기하고 있습니다. 전자적 파일의 경우 복구 및 재생이 되지 않도록 기술적 방법을 이용하여 안전하게 삭제하며, 출력물 등은 분쇄하거나 소각하는 방식 등으로 파기합니다.<br><br>
	제7조 링크 사이트<br>
	회사는 회원에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 회사는 외부사이트 및 자료에 대한 통제권이 전무하므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임지거나 보증할 수 없습니다. 회사가 포함한 링크를 클릭하여 타 사이트의 페이지로 옮겨 갈 경우 해당 사이트의 개인정보보호정책은 회사와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.<br><br>
	제8조 회원의 권리와 그 행사 방법<br>
	회원은 언제든지 사운드그램 계정 및 프로필 설정 등을 통해 자신의 개인정보를 조회하거나 수정할 수 있습니다.<br>
	회원은 언제든지 프로필 화면 하단의 '탈퇴하기' 버튼을 통해 회원 가입 해지 절차를 요청하여 개인정보의 수집 및 동의를 철회할 수 있습니다. 이용자 또는 이용자의 법정대리인은 언제든지 개인정보의 열람, 오류 등이 있을 경우 정정, 삭제, 처리 정지 요구를 할 수 있습니다. 이러한 권리 행사는 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.<br>
	이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 해당 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리 결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.<br><br>
	제9조 개인정보의 관리적 보호대책<br>
	회사는 회원들의 개인정보를 보호하기 위하여 다음과 같은 보호대책을 시행하고 있습니다.<br>
	1.	회사는 회원의 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 최선을 다하여 보호대책을 강구하고 있습니다.<br>
	2.	회사는 법령에서 암호화를 요구하고 있는 비밀번호는 암호화되어 보관하고 있습니다. 비밀번호는 오직 회원 본인만이 알 수 있으며 개인정보 확인 및 변경 역시 비밀번호를 알고 있는 본인만이 가능합니다. 따라서 회원의 비밀번호가 타인에게 알려지지 않도록 각별히 유의하시기 바랍니다.<br>
	3.	회사는 해킹이나 컴퓨터바이러스에 의하여 회원들의 개인정보가 유출되거나 훼손되는 것을 막기 위하여 필요한 보안조치를 이용하고 있으며, 더욱 향상된 보안조치를 확보할 수 있도록 가능한 모든 기술적 방법을 구비하기 위하여 노력하고 있습니다.<br>
	4.	회사는 개인정보를 취급하는 직원을 최소한으로 제한하고 있으며, 관련 직원들에 대한 교육을 수시로 실시하여 「개인정보처리방침」의 이행 및 준수여부를 확인하고 있습니다.<br><br>
	제10조 개인정보 관리책임자<br>
	회원의 개인정보를 보호하고 개인정보와 관련된 불만을 처리하기 위하여 회사는 개인정보관리책임자를 두고 있습니다. 회원의 개인정보와 관련한 문의사항은 아래의 개인정보관리책임자에게 연락하여 주시기 바랍니다.<br>
	- 성명&nbsp;:&nbsp;박미연<br>
	- 직책&nbsp;:&nbsp;대표이사<br>
	- 전화번호&nbsp;:&nbsp;02-455-2346<br>
	- 이메일&nbsp;:&nbsp;soundgram@soundgram.co.kr<br>
	- 귀속서버 : svrR1.dev <br>
	기타 개인정보에 관한 신고나 상담이 필요한 경우에는 개인정보침해신고센터, 경찰청사이버안전국, 대검찰청사이버수사과 등으로 문의하실 수 있습니다.<br>
	-&nbsp;개인정보침해신고센터(한국인터넷진흥원)&nbsp;(privacy.kisa.or.kr&nbsp;/ 전화번호 :&nbsp;118)<br>
	-&nbsp;경찰청사이버안전국&nbsp;(cyberbureau.police.go.kr&nbsp;/ 전화번호 :&nbsp;&nbsp;182)<br>
	-&nbsp;대검찰청사이버수사과&nbsp;(spo.go.kr&nbsp;/ 전화번호 :&nbsp;&nbsp;1301)<br><br>
	제11조 「개인정보처리방침」의 개정과 그 공지<br>
	본 방침은 2020년 11월 1일부터 시행됩니다. 본 「개인정보처리방침」이 변경될 경우, 회사는 변경내용을 그 시행일 7일 전부터 홈페이지를 통해 공지할 예정입니다.<br><br>
	다만, 수집하는 개인정보의 항목, 이용목적의 변경 등과 같이 이용자 권리의 중대한 변경이 발생한 때에는 30일 전 공지하며, 필요 시 이용자 동의를 다시 받을 수도 있습니다.<br><br>
	부칙<br>
	(시행일) 이 약관은 2020년 11월 1일부터 시행합니다. <br>
		</div>
		</div>
	</div>


<!-- <div id='cu10_e' class='hidden cu10' style="height:100%; overflow-y: scroll; position: absolute;"> -->
<div id="cu10_e" class="hidden cu10" style="height: 100%; overflow-y: scroll; padding: 25% 0px 0px;">
	<div >
                <nav>
                      <span id="member_close" class="close"></span>
                 </nav>
        </div>
	<div class="mb_title">
	<h2>아이디 찾기</h2>
	</div>
	<div class="mb_content" style="height:150px">
	<div class="mb_form">
	<input id="id_srhname" class="input_style" type="text" name="name" placeholder="이름">
	<div id="srhid_alert_name" class="alert hidden"></div>
	<input id="id_srhtel" class="input_style" type="tel" name="phone" placeholder="- 제외한 휴대폰 번호" maxlength="11">
	<div id="srhid_alert_tel" class="alert hidden"></div>
	</div>
	<button id="srhid" class="btn_bora">
	아이디 찾기 <img src="/images/cu10_ic_idcheck.png" alt="">
	</button>
	</div>
	<div class="mb_title">
	<h2>비밀번호 찾기</h2>
	</div>
	<div class="mb_content" style="height:200px">
	<div id="srhpass" class="mb_form">
	<input id="pass_srhid" class="input_style" type="text" name="id" placeholder="아이디">
	<div id="srhpass_alert_id" class="alert hidden"></div>
	<input id="pass_srhtel" class="input_style" type="tel" name="phone" placeholder="- 제외한 휴대폰 번호" maxlength="11">
	<div id="srhpass_alert_tel" class="alert hidden"></div>
	</div>
	<button id="temp_pass" class="btn_bora">
	임시 비밀번호 재발급 <img src="/images/cu10_ic_pwcheck.png" alt="">
	</button>
	</div>
</div>
<div id="cu10_f" class="hidden cu10" style="padding: 25% 0px 0px;">
  <div >
            <nav>
                  <span id="member_close" class="close"></span>
             </nav>
    </div>
  <div class="mb_title">
    <h2>비밀번호 변경</h2>
    <h4>
      개인정보보호를 위해 3개월에 한번씩<br>
      비밀번호를 바꿔주시는 센스!
    </h4>
  </div>
  <div class="mb_content">
    <div class="mb_form">
      <input id="inputcpass" class="input_style" type="password" name="password" placeholder="이전 비밀번호">
      <div id="changepass" class="alert hidden"></div>
      <input id="inputcnpass" class="input_style" type="password" name="password" placeholder="변경할 비밀번호">
      <div id="changenewpass" class="alert hidden"></div>
    </div>
    <button id="newpasschange" class="btn_bora">
      변경 <img src="/images/cu10_ic_write.png" alt="">
    </button>
  </div>
</div>
<div id="cu10_g" class="cu10 hidden" style="padding:0 !important">
<!-- <div id="cu10_g" class="cu10 hidden"> -->
  <div class="si_toolbar">
    <div class="temp"></div>
    <h2>My Page</h2>
    <div class="close_btn" onclick="javascript:_PopClose();">
    </div>
  </div>

  <div class="content">
    <div class="profile" style="
        background-image: url(disk01/tpl01/p0700/images/gn10_img_profile_df.png);
      ">
      <button id="camera" class="btn_boraone">
        <img src="/images/cu10_ic_photo.png" alt="">
        <!-- 프로필 이미지 변경 -->
      </button>
      <input id="uploadImage" name="uploadImage" type="file" style="display: none" accept="image/*" onchange="changeValue(this, &quot;profile&quot;, &quot;&quot;)">
    </div>
    <div class="mb_content_edt">
      <ul class="mb_profile">
        <li id="profile_name"><span>이름</span>우영우</li>
        <li id="profile_id">
          <span>ID</span>cheerioep
          <!-- 220719 start 비밀번호 변경 버튼이 오른쪽 옆에 나와야합니다. -->
          <button id="changepass" class="btn_changepass" onclick="javascript:_MoveChangePasswd();" style="display: none;">
            비밀번호 변경
            <img src="/images/cu10_ic_login_white.png" alt="">
          </button>
          <!-- 220719 end 비밀번호 변경 버튼이 오른쪽 옆에 나와야합니다. -->

        </li>
        <li class="nick">
          <span>닉네임</span>
          <input id="profile_nick" class="input_style" type="text" name="text" maxlength="20">
          <button id="changenick" class="btn_boraone">
            <img src="/images/cu10_ic_write.png" alt="">
          </button>
        </li>
        <li id="phone_number" class="nick"></li>
        <li class="nick wallet">
          <span>Wallet</span>
          <!-- 220719 start 연결 안된 상태일 경우 -->
          <button id="" class="btn_wallet" onclick="linkWallet();"><img src="/images/cu10_ic_klip.png" alt="">Klip 지갑으로 연결</button>
          <!-- 220719 end 연결 안된 상태일 경우 -->

          <!-- 220719 start 연결된 상태일 경우 -->
          <p hidden="">15cXhtfzWETXSGDS62DGXefgghgsfsdgsdgvsdgETXSGDS62DGXef</p>
          <button id="wallet_unlink" class="btn_boraone" onclick="unlinkWallet();" hidden="">
            <img src="/images/cu10_unlink_write.png" alt="">
          </button>
          <!-- 220719 연결된 상태일 경우 -->
        </li>
      </ul>
      <ul class="mb_setting">
        <li>
          <small>고객센터</small>
        </li>
        <li class="mb_setting_link">
          <a href="javascript:opener.info_menu(2);">
            <span>1:1 문의</span>
            <i></i>
          </a>
        </li>
        <li class="mb_setting_link">
          <a href="javascript:info_menu(3);">
            <span>서비스 약관</span>
            <i></i>
          </a>
        </li>
      </ul>
      <ul class="mb_setting arw_none_li">
        <li>
          <small>기타</small>
        </li>
        <li class="mb_setting_link">
          <a id="logout" href="#">
            <span>로그아웃</span>
            <i></i>
          </a>
        </li>
        <li id="appver" class="mb_setting_link">
          <a href="#">
            <span>현재 버전</span>
            <i>1.0.5</i>
          </a>
        </li>
        <li class="mb_setting_link">
          <a id="dropout" href="#">
            <span>회원 탈퇴</span>
            <i></i>
          </a>
        </li>
      </ul>
    </div>
    <div class="si_logo_area">
      <!-- pages에 넣을때 img src 빼야함 -->
      <img id="logoImg" src="disk01/tpl01/p0700/images/in10_img_logo.png">
    </div>
    <div class="snsbtn_area">
      <div class="inner_snsbtn_area">
        <div class="instar_btnCir" onclick="window.location.href='https://www.instagram.com/soundgram.official/';"></div>
        <div class="facebook_btnCir" onclick="location.href=''" style="display: none"></div>
        <div class="twiter_btnCir" onclick="window.location.href='https://twitter.com/soundgram_twt';"></div>
        <div class="youtube_btnCir" onclick="window.location.href='https://www.youtube.com/channel/UC5mfyg2wrDJSLlb_cVKD9cg?view_as=subscriber';"></div>
        <div class="naver_btnCir" onclick="window.location.href='https://m.blog.naver.com/PostList.nhn?blogId=soundgram_n';"></div>
        <div class="clear" onclick="location.href=''"></div>
      </div>
    </div>
  </div>
</div>
<!-- 220714 서버에 올리는 부분 start -->
<!-- cu01_h는 새로 추가된 페이지입니다. -->
<!-- commen.css 수정함 -->
<!-- 서버에 올리는 부분 start -->
<div id="cu10_h" class="hidden cu10">
    <div >
            <nav>
                  <span id="member_close" class="close"></span>
             </nav>
    </div>
  <div class="mb_title">
    <h2>거의 끝났어요!</h2>
    <h4></h4>
  </div>
  <div class="mb_content">
    <div id="sns_input" class="mb_form">
      <h4 class="mb_in_tit1">댓글 쓸 때 사용 할 닉네임은?</h4>
      <input id="nick_sns" class="input_style" type="text" name="nick" placeholder="닉네임">
      <div class="alert hidden">
        한글 1~10자, 영문 2~20자, 숫자를 입력하세요. (조합 가능)
      </div>
      <h4 class="mb_in_tit2">
        아이디 / 비밀번호 찾기에 사용 할 휴대폰 번호는?
      </h4>
      <input id="tel_sns" class="input_style" type="tel" name="phone" placeholder="- 없이 휴대폰 번호 입력" oninput="this.value = this.value.replace(/[^0-9.]/g, &quot;&quot;).replace(/(\..*)\./g, &quot;$1&quot;);" maxlength="11">
      <div id="tel_alert" class="alert hidden"></div>
    </div>
    <button id="goJoin" class="btn_bora" onclick="javascript:goJoin();">
      회원 가입 <img src="images/cu01_ic_write.png" alt="">
    </button>
  </div>
</div>
<!-- 서버에 올리는 부분 end -->
</div>
</body>

<script>

    $(".close").on("click", function(){
             location.href = "init";



    });
    function setCookie(name, value, exp) {
        var date = new Date();
        date.setTime(date.getTime() + exp * 24 * 60 * 60 * 1000);
        document.cookie = name + '=' + escape(value) + ';expires=' + date.toUTCString() + ';path=/';
    };


    $(".btn_bora").on("click", function(){
            console.log("btn click")
            const id = $("#loginid").val()
            const password = $("#loginpassword").val()


            let dataValue = {
                "login_id" : id,
                "login_password" : password

            }
            console.log(dataValue)

             $.ajax({
                  type : "POST",

                  url : "http://localhost:8080/travelboard/loginUser",
                  data : JSON.stringify(dataValue),
                  contentType:"application/json",
                  dataType: "json",
                  success: function(data) {
                        console.log("data",data)
                        alert("로그인이 완료되었습니다.")
                        alert(data.id);
                        location.href = "home";
                      setCookie("id", data.id,'1')


                    },


                  error: function(xhr, textStatus, errorThrown) {
                  alert("로그인에 실패하였습니다.")
                    console.log("XHR status: " + xhr.status);
                        console.log("Text status: " + textStatus);
                        console.log("Error thrown: " + errorThrown);
                        console.log("Response text: " + xhr.responseText);
                  }
                });



         });

/*
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
                    location.href = "init";


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

*/


</script>



</html>
