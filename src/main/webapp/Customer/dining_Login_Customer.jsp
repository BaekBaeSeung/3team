<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>다이닝 갈까?🌙</title>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<style>
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
	padding: 20px;
	width: 300px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

a {
	text-decoration: none;
	font-size: 15px;
}

a.logo {
	color: lightgray;
}

a.logo.text {
	color: black;
}

a:hover {
	color: lightgray;
}

input {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	border-radius: 5px;
}

#login {
	background-color: #4CAF50;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	width: 100%;
	margin-bottom: 10px;
}

button:hover {
	background-color: #45a049;
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
	text-decoration: none;
	font-size: 100px;
	margin-bottom: 10px;
	position: absolute;
	top: 100px;
	left: 190px;
}

.join {
	color: darkgray;
}
</style>
</head>
<body>
	<button id="dark-mode-toggle">🌙</button>
	<div id="star-container">
		<img src="./../image/light.png" alt="Star" id="star">
	</div>
	<a href="./main_page.html" class="logo text">미식 家</a>
	<form action="<%=withFormTag%>" method="post">
	<input type="hidden" name="command" value="CustomerLogin">
	<div class="login-container">
		<label for="U_id">Userid :</label> <input type="text" id="U_id"
			name="U_id" placeholder="아이디를 입력하세요" value="아이디"> <label for="Password">Password
			:</label> <input type="password" id="Password" name="Password"
			placeholder="비밀번호를 입력하세요" value="비밀번호">

		<button type="submit" id="login">로그인</button>

		<p>
			회원이 아니신가요? &nbsp;&nbsp;&nbsp; <a href="./User_Join_Form_By_choi.html"
				class="join">회원가입</a>
		</p>
	</div>
	</form>

	<footer>
		<div>&copy; 2024 다이닝 갈까? Corp.</div>
		<div class="footer-links">
			<div>서울특별시 다이닝구 다이닝로 다이닝 갈까? | 전화번호☏ 1234-1234 | 사업자등록번호 :
				123-12-12345</div>
			<div>
				기타 : <img src="./../image/dark.png" id="footer-img">
			</div>
			<div>
				<a href="#">개인정보 처리방침
			</div>
		</div>

	</footer>

	<script>
		const darkModeToggle = document.getElementById('dark-mode-toggle');
		const body = document.body;

		darkModeToggle.addEventListener('click', () => {
			// 배경색을 검은색 또는 흰색으로 토글
			body.style.backgroundColor = body.style.backgroundColor === 'black' ? '#E8D8C4' : 'black';
			// text 클래스의 색상 변경
			const textColor = body.style.backgroundColor === 'black' ? '#E8D8C4' : 'black';
			document.querySelector('.logo.text').style.color = textColor;
		});
	</script>

	<script>
		//  이미지 토글
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