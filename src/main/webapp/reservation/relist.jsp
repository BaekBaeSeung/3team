<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Image Slider</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Image Slider</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">


<style>
body, html {
	height: 100%;
	margin: 0;
	position: relative;
}

#section1 {
	display: flex;
	flex-direction: column;
	min-height: 100%;
}

.column1 {
	min-height: 15%;
	background-color: #E8D8C4;
}

.column2 {
	flex: 1;
	background-color: #e0e0e0;
	display: flex;
	position: relative;
}

.logo {
	color: black;
	text-decoration: none;
	font-size: 50px;
	position: relative;
	text-decoration: none;
	white-space: nowrap;
}

.image-slider {
	position: relative;
}

.image-slider img {
	width: 100%;
	height: auto;
}

.prev, .next {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	cursor: pointer;
	font-size: 24px;
	color: white;
	background-color: rgba(0, 0, 0, 0.5);
	padding: 10px;
	border: none;
	border-radius: 50%;
	/* 버튼을 둥글게 만듭니다. */
	outline: none;
	/* 클릭시 파란 테두리 제거 */
	transition: background-color 0.3s;
	/* 배경색 변경 효과 */
}

.prev {
	left: 10px;
}

.next {
	right: 10px;
}

.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
	/* 호버 시 배경색 어둡게 변경 */
}

.image-slider img {
	width: 100%;
	height: 100%;
	object-fit: cover;

	/* 이미지가 영역에 맞게 잘리지 않고 비율을 유지한 채로 채워집니다. */
}

.image:hover {
	cursor: default;
}

.image {
	width: 100%;
	height: 100%;
}

.column2-1 {
	width: 32%;
	background-color: orange;
	display: flex;
	align-items: center;
	justify-content: center;
}

.text {
	margin-top: 20px;
	margin-bottom: 20px;
}

.column2-2 {
	width: 32%;
	background-color: yellow;
}

.column2-3 {
	width: 32%;
	background-color: green;
}

.group-container {
	margin-bottom: 15px;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 10px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	background-color: #fff;
	/* 원하는 색으로 변경 가능 */
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	transition: background-color 0.3s;
}

.dropdown-content a:hover {
	background-color: #f1f1f1;
}

.show {
	display: block;
}

.reserve-btn, .dropbtn {
	background-color: #4CAF50;
	/* 배경색 */
	color: white;
	/* 글자색 */
	padding: 15px 20px;
	/* 패딩 */
	font-size: 18px;
	/* 글자 크기 */
	border: none;
	/* 테두리 없음 */
	border-radius: 5px;
	/* 둥근 테두리 */
	cursor: pointer;
	/* 커서 모양 변경 */
	transition: background-color 0.3s;
	/* 배경색 변경 효과 */
}

.reserve-btn:hover, .dropbtn:hover {
	background-color: #45a049;
	/* 호버 시 배경색 변경 */
}

.image-slider-container .image-slider img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

input[type="text"] {
	border: none; /* 테두리 없음 */
	background-color: transparent; /* 배경 투명하게 */
	width: 300px; /* 너비 설정 */
}

.detailform {
	margin-bottom: 30px;
}
</style>

</head>

<body>
	<section id="section1">
		<div class="column1">
			<div class="logo-container">
				<a href="./main_page.html" class="logo text"
					style="margin-left: 20px; white-space: nowrap;"> 미식 家 </a>
			</div>
		</div>
		<div class="column2">
			<div class="column2- column2-0"
				style="width: 2%; background-color: white;"></div>
			<div class="column2- column2-1"
				style="width: 32%; background-color: white;">
				<div class="image-slider-container"
					style="max-width: 600px; overflow: hidden;">
					<div class="image-slider" style="width: 100%; height: 100%;">
						<button class="prev" onclick="prevSlide()">&#10094;</button>
						<img src=${bean.Category} alt="Image 1"
							style="width: 100%; height: 100%;">
						<button class="next" onclick="nextSlide()">&#10095;</button>
					</div>
				</div>
			</div>

			<div class="column2- column2-2"
				style="width: 32%; background-color: white;">
				<div style="margin: 100px 30px 30px 30px;">
					
					<div>
						<strong><span style="font-size: 35px; white-space: nowrap;" class="text">${bean.Name}</span></strong>
						<span style="margin-left: 10px; font-size: 20px; color: darkgray;"
							class="text">${bean.Category}</span>
					</div>

					<div class="detailform">
						<label for="address"></label>${bean.Address}<input type="text" id="address"
							name="address" style="width: 300px;"><br>
					</div>
					<div class="detailform">
						<label for="businessHours">${bean.Opentime}</label> <input type="text"
							id="businessHours" name="businessHours" style="width: 300px;"><br>
					</div>
					<div class="detailform">
						<label for="breakTime">${bean.Break_time}</label> <input type="text"
							id="breakTime" name="breakTime" style="width: 300px;"><br>
					</div>
					<div class="detailform">
						<label for="phoneNumber">${bean.Phone}</label> <input type="text"
							id="phoneNumber" name="phoneNumber" style="width: 300px;"><br>
					</div>
					<div class="container mt-3">
						<button type="button" class="btn btn-light"
							data-bs-toggle="collapse" data-bs-target="#demo">매장소개를
							확인해 보세요.</button>
						<div id="demo" class="collapse">${bean.Content}</div>
					</div>
					<div class="text" style="white-space: nowrap;">${bean.Amenities}</div>
					<div class="text" style="white-space: nowrap;">${bean.Amenities}</div>
					<div class="text" style="white-space: nowrap;">${bean.Amenities}</div>
					<div class="text" style="white-space: nowrap;">${bean.Amenities}</div>
					<div class="text" style="white-space: nowrap;">${bean.Amenities}</div>
					<div class="text" style="white-space: nowrap;">${bean.Amenities}</div>
					
				</div>
			</div>

			<div class="column2- column2-3"
				style="width: 32%; background-color: white;">
				<div style="margin: 100px 30px 30px 30px;">
					<!--                        Form 부분                            -->

					<form action="<%=withFormTag%>" method="post" name="myform" onsubmit="return validateForm()">
						<input type="hidden" name="command" value="ReservationInsert">
						<div class="group-container text">
							<label for="inputDateField" class="text">예약 일시:</label> <input
								type="text" id="inputDateField" name="inputDateField"
								class="text" style="border-bottom-style: solid;">
						</div>
						<!-- 인원수 증감 버튼과 입력 필드를 폼 안에 위치시킵니다. -->
						<div class="group-container text">
							<label for="inputpeople" class="text">인원 수</label> <input
								type="text" id="inputpeople" name="inputpeople" class="text"
								value="1" style="width: 30px; border-bottom-style: solid; text-align: center;">
						</div>
						<div style="display: flex; align-items: center;">
							<button type="button" onclick="changePeople(-1)"
								class="btn btn-light" style="margin-right: 10px;">-</button>
							<button type="button" onclick="changePeople(1)"
								class="btn btn-light">+</button>
						</div>
						<br>
						<div>
							<p style="margin-bottom: 0px;">기타 요구사항</p>
							<div class="form-group">
								<label for="reviewText"></label>
								<textarea class="form-control" id="reviewText" name="reviewText"
									rows="4" placeholder="여기에 작성하세요."></textarea>
							</div>
						</div>
						<button type="submit" class="btn btn-primary goreservation">예약하기</button>
					</form>
				</div>
			</div>

			<div class="column2-4" style="width: 2%; background-color: white;">
			</div>
	</section>

	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
	<script>
		flatpickr("#inputDateField", {
			enableTime : true,
			dateFormat : "Y-m-d H:i",
		});
	</script>
	<script>
		var currentSlide = 0;
		var slides = [ '/Dining01/image/삿뽀로13.PNG',
				'/Dining01/image/삿뽀로13.PNG', '/Dining01/image/삿뽀로11.PNG',
				'/Dining01/image/삿뽀로09.jpg' ]; // 이미지 파일 경로들

		function showSlide(index) {
			var img = document.querySelector('.image-slider img');
			if (index >= 0 && index < slides.length) {
				img.src = slides[index];
				currentSlide = index;
			}
		}

		function prevSlide() {
			showSlide(currentSlide - 1);
		}

		function nextSlide() {
			showSlide(currentSlide + 1);
		}

		function toggleDropdown() {
			document.getElementById("peopleDropdown").classList.toggle("show");
		}

		//인원수 조절 
		var currentPeople = 1;

		function changePeople(amount) {
			currentPeople += amount;
			if (currentPeople < 1) {
				currentPeople = 1; // 최소 인원수는 1로 유지
			}
			document.getElementById("inputpeople").value = currentPeople;
		}
	</script>

	<!--리뷰사진 슬라이드  -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

	<script>
		function validateForm() {
			var inputPeople = document.getElementById("inputpeople").value;
			if (inputPeople >= 5) {
				alert("인원수가 5명 이상인 경우 식당에 전화 문의 해야합니다.");
				return false;
			}
			return true;
		}
	</script>
</body>

</html>
