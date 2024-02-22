<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>미식家 약관 동의</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<style>
#accordion-resizer {
	padding: 20px;
}

body {
	font-family: 'Arial', sans-serif;
	background: -webkit-gradient(linear, left bottom, right top, from(rgb(255, 255, 255)),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, rgb(255, 255, 255) 0%,
		#1d466c 100%);
	background: -moz-linear-gradient(bottom left, rgb(255, 255, 255) 0%,
		#1d466c 100%);
	background: -o-linear-gradient(bottom left, rgb(255, 255, 255) 0%,
		#1d466c 100%);
	background: linear-gradient(to top right, rgb(255, 255, 255) 0%, #1d466c
		100%);
	margin: 0;
	padding: 0;
}

#accordion-resizer {
	display: block;
	margin: 0 auto;
	width: 500px;
	height: 500px;
}

#accordion p {
	margin: 30px 0;
}

header {
	padding: 30px;
	text-align: center;
}

header h3 {
	margin-top: 30px;
	color: red;
}

header p {
	margin-top: 30px;
	color: white;
	font-size: 17px;
}

section {
	flex: 1;
	padding: 20px;
	border-bottom: 1px solid #ccc;
}

section:last-child {
	border-bottom: none;
}

.checkbox.container {
	display: block;
	text-align: center;
	margin-top: 50px;
}

.checkbox.container label {
	display: inline-block;
	margin-bottom: 10px;
}

.checkbox.container a {
	display: block;
	margin-top: 20px;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 50px;
	width: 200px;
}

input[type="checkbox"] {
	margin-right: 10px;
}

button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 4px;
	margin: 0 auto;
}

button:hover {
	background-color: rgb(151, 191, 227);
}

#scrollButton {
	position: fixed;
	bottom: 20px;
	right: 20px;
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border: none;
	cursor: pointer;
	display: none;
	/* 페이지 최상단에 있을 때는 숨겨두기 */
}

#footer {
	background-image: linear-gradient(60deg, #29323c 0%, #485563 100%);
}

#footer .footer {
	height: 300px;
	flex-direction: column;
	padding-top: 50px;
	padding-bottom: 10px;
	text-align: center;
}

#footer h3 {
	color: white;
	font-weight: 500;
	font-size: 28px;
	letter-spacing: 0.1rem;
	margin-top: 10px;
	margin-bottom: 10px;
}

#footer h4 {
	color: white;
	letter-spacing: 0.1rem;
	margin-top: 10px;
	margin-bottom: 10px;
	font-size: 18px;
}

#footer .social-icon {
	display: block;
	margin-bottom: 30px;
}

#footer .social-item {
	height: 50px;
	width: 50px;
	margin: 0 auto;
}

#footer .social-item img {
	filter: grayscale(1);
	transition: 0.3s ease filter;
	width: 50px;
	height: auto;
}

#footer .social-item:hover img {
	filter: grayscale(0);
}

#footer p {
	color: white;
}

h3>span {
	color: red;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
        $(function () {
            $("#accordion").accordion({
                heightStyle: "fill"
            });

            $("#accordion-resizer").resizable({
                minHeight: 140,
                minWidth: 200,
                resize: function () {
                    $("#accordion").accordion("refresh");
                }
            });
        });
    </script>
</head>


<script>
    <!-- 스크롤 버튼 -->
    <button id="scrollButton" onclick="scrollToTop()">Scroll to Top</button>


    // 스크롤 이벤트를 사용하여 스크롤 버튼의 표시 여부를 제어
    window.onscroll = function () {
        showScrollButton();
    };

    // 페이지 로딩 시 초기화
    window.onload = function () {
        showScrollButton();
    };

    // 스크롤 버튼 표시 여부 결정
    function showScrollButton() {
        var scrollButton = document.getElementById('scrollButton');
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            scrollButton.style.display = 'block';
        } else {
            scrollButton.style.display = 'none';
        }
    }

    // 페이지 최상단으로 스크롤하는 함수
    function scrollToTop() {
        document.body.scrollTop = 0; // 대부분의 브라우저에서 지원
        document.documentElement.scrollTop = 0; // IE에서 지원
    }
</script>

<body>
	<header>
		<h3>미식家 탈퇴 안내</h3>
		<p>회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요</p>
	</header>
	<div id="accordion-resizer" class="ui-widget-content">
		<div id="accordion">
			<h3>미식家 탈퇴 약관1</h3>
			<div>
				<span>
					<p>사용하고 계신 아이디는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</p>
				</span>
				<p>
					<span style="color: red">탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가</span>하오니
					신중하게 선택하시기 바랍니다.
				</p>
			</div>
			<h3>미식家 탈퇴 약관2</h3>
			<div>
				<p>탈퇴 후 회원정보 및 서비스 이용기록은 모두 삭제됩니다.</p>
				<p>삭제된 데이터는 복구되지 않으며, 삭제되는 내용을 확인하시고 필요한 데이터는 미리 백업을 해주세요.</p>
			</div>
			<h3>미식家 탈퇴 약관3</h3>
			<div>
				<p>회원 탈퇴한 이후에는 본 서비스는 이용하실 수 없으며, 로그아웃 상태에서 본 서비스의 예약은 물론 검색,
					서치, 등의 일체의 서비스도 이용하실 수 없습니다.</p>
				<p>위 서비스 제한 사항에 유의하시어, 회원 탈퇴 하시기 전에 한번 더 신중히 고심하시기 바랍니다.</p>

			</div>
			<h3>미식家 탈퇴 약관4</h3>
			<div>
				<p>차후에 다시 본 서비스를 이용하고자 한다면, 다시 회원가입을 재 등록하여 본 서비스를 이용하셔서 다양한 혜택을
					누리시기 바랍니다.</p>
				<p>아이디 중복 검사를 통해 전에 이용한 아이디가 겹치지 않는다면, 전 아이디의 재사용 가능하시며, 전 기록은
					모두 삭제되어서 새로운 서비스 기록이 생성됩니다.</p>
			</div>
		</div>
	</div>
	<div class="checkbox container">
		<input type="checkbox" id="agreeCheckbox"> <label
			for="agreeCheckbox">안내 사항을 모두 확인 하셨으며, 탈퇴 약관에 동의합니다.</label>
		<a class="btn btn-danger" onclick="submitForm()" href="<%=notWithFormTag%>CustomerDeleteDetail&U_id=${sessionScope.loginfo.getU_id()}">동의하고 회원 탈퇴하기</a>
	</div>
	<script>
        function submitForm() {
            var agreeCheckbox = document.getElementById('agreeCheckbox');
            if (agreeCheckbox.checked) {
                // 동의한 경우에 대한 처리 (예: 다음 페이지로 이동)
                alert('탈퇴 약관에 동의하셨습니다. 회원 탈퇴되었습니다. 감사합니다.');
            } else {
                alert('약관에 동의해야 합니다.');
            }
        }

        // 스크롤 이벤트를 사용하여 스크롤 버튼의 표시 여부를 제어
        window.onscroll = function () {
            showScrollButton();
        };

        // 페이지 로딩 시 초기화
        window.onload = function () {
            showScrollButton();
        };

        // 스크롤 버튼 표시 여부 결정
        function showScrollButton() {
            var scrollButton = document.getElementById('scrollButton');
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                scrollButton.style.display = 'block';
            } else {
                scrollButton.style.display = 'none';
            }
        }

        // 페이지 최상단으로 스크롤하는 함수
        function scrollToTop() {
            document.body.scrollTop = 0; // 대부분의 브라우저에서 지원
            document.documentElement.scrollTop = 0; // IE에서 지원
        }
    </script>
	<section id="footer">
		<div class="footer container">
			<div class="brand">
				<h3>
					미식<span>가</span>
				</h3>
			</div>
			<h4>
				<p style="font-size: 12px;">Copyright © 미식家 Corp</p>
				<span>대표자 : 지누기</span> <span>사업자번호 : 120-87-65764</span></br> <span>TEL
					: 1800-4564</span>&nbsp;&nbsp; <span>FAX : 02-111-5444</span></br> MAIL : <a
					href="mailto:mesikga@naver.com"
					class="LinkText-stylesLine-sc-7eefccf8-0 kqBnJi"><span>mesikga@naver.com</span></a>
			</h4>
			<div class="social-icon">
				<div class="social-item">
					<a href="#"><img
						src="https://img.icons8.com/bubbles/100/000000/instagram-new.png" /></a>
				</div>
			</div>
			<div>
				<a href="#" style="text-decoration: none; font-size: 12px;">개인정보
					처리방침 
			</div>
		</div>
		<br />
	</section>
</body>

</html>