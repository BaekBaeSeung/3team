<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>다이닝 갈까?🌙</title>

<!-- <link rel="stylesheet" type="text/css" href="/Dining/Customer/dining_login_select.css"> -->
<style type="text/css">
body {
	margin: 0;
	font-family: Arial, sans-serif;
	transition: background-color 0.5s;
	background-color: #E8D8C4;
	color: black;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	overflow: hidden;
	/* 추가: 스크롤 방지 */
}

.login-container {
	position: relative;
	z-index: 1;
	background-color: white;
	padding: 40px;
	width: 300px;
	height: 100px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	display: flex;
	/* 추가: 자식 요소들을 가로로 배치하기 위한 설정 */
	flex-direction: row;
	/* 수정: 자식 요소들을 가로로 배치 */
	justify-content: space-between;
	/* 추가: 좌우 정렬 설정 */
}

.button-container {
	width: 100%;
	/* 수정: 버튼의 너비를 조정하여 간격 추가 */
	height: 100%;
	cursor: pointer;
	border-radius: 10px;
	border: 0px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
	padding: 20px;
}

.button-container:hover {
	background-color: ivory;
	/* 마우스를 올렸을 때 배경색 변경 */
	transform: scale(1.3);
	/* 호버 시 크기를 1.1배 확대 */
}

footer {
	text-align: center;
	position: fixed;
	bottom: 0;
	width: 100%;
	padding: 10px;
	background-color: black;
	color: white;
}

#dark-mode-toggle {
	background-color: #333;
	color: white;
	border: none;
	border-radius: 50%;
	padding: 10px;
	cursor: pointer;
	font-size: 12px;
	position: absolute;
	top: 6px;
	right: 10px;
	z-index: 1000;
}

#star-container {
	position: fixed;
	top: 10px;
	right: 70px;
}

#star {
	width: 27px;
	height: 27px;
	cursor: pointer;
	border-radius: 28%;
}

#footer-img {
	width: 27px;
	height: 27px;
	cursor: pointer;
	border-radius: 28%;
}

.logo {
	color: black;
	text-decoration: none;
	font-size: 100px;
	margin-bottom: 10px;
	position: absolute;
	top: 100px;
	left: 190px;
}

</style>
</head>
<body>
	<a href="./main_page.html" class="logo">미식 家</a>
	<button id="dark-mode-toggle">🌙</button>
	<div id="star-container">
		<img src="./../image/light.png" alt="Star" id="star">
	</div>
	<div class="login-container">
		<a href="<%=notWithFormTag%>CustomerLogin_MainPage" class="button-a-tag"> <input
			type="button" id="UserSignUp" class="button-container" value="회원 로그인">
		</a> <a href="./client_Join_1.html" class="button-a-tag"> <input
			type="button" id="ClientSignUp" class="button-container"
			value="업체 로그인">
		</a>
	</div>

	<footer>
		<div>&copy; 2024 다이닝 갈까? Corp.</div>
		<div class="footer-links">
			<div>서울특별시 다이닝구 다이닝로 다이닝 갈까? | 전화번호☏ 1234-1234 | 사업자등록번호 :
				123-12-12345</div>
			<div>
				기타 : <img src="./../image/dark.png" id="footer-img">
			</div>
			<div>
				<a href="#">개인정보 처리방침</a>
			</div>
		</div>
	</footer>

	<script>
		const darkModeToggle = document.getElementById('dark-mode-toggle');
		const body = document.body;
		const logo = document.querySelector('.logo');

		darkModeToggle.addEventListener('click', () => {
			// 배경색을 검은색 또는 흰색으로 토글
			body.style.backgroundColor = body.style.backgroundColor === 'black' ? '#E8D8C4' : 'black';
			// 로고 색상 변경
			logo.style.color = body.style.backgroundColor === 'black' ? '#E8D8C4' : 'black';
		});
	</script>

	<script>
		// 이미지 토글
		$(document).ready(function () {
			$("#dark-mode-toggle").click(function () {
				// 이미지 경로를 토글
				$("#star").attr("src", function (index, oldSrc) {
					return oldSrc.includes('light.png') ? './../image/dark.png' : './../image/light.png';
				});
			});
		});
	</script>
</body>
</html>