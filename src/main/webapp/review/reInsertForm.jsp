<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Responsive Vertical Layout</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
/* 추가된 스타일 */
.custom-height {
	height: 100vh; /* 화면 높이의 100%를 사용하도록 설정 */
}

.col-md-1 {
	background-color: #E8D8C4;
	
}

.logo-container {
	position: absolute;
	text-decoration: none;
	white-space: nowrap;
}

.logo {
	color: black;
	text-decoration: none;
	font-size: 100px;
	margin-bottom: 10px;
	top: 80px;
	left: 37px;
	text-decoration: none;
}

.logo:hover {
	text-decoration: none;
	color: black;
}

.star-rating {
	display: flex;
	flex-direction: row-reverse;
	font-size: 1.5rem;
	line-height: 2.5rem;
	justify-content: space-around;
	text-align: center;
	width: 5em;
}

.star-rating input {
	display: none;
}

.star-rating label {
	-webkit-text-fill-color: transparent;
	-webkit-text-stroke-width: 2.3px;
	-webkit-text-stroke-color: #2b2a29;
	cursor: pointer;
}

.star-rating :checked ~label {
	-webkit-text-fill-color: gold;
}

.star-rating label:hover, .star-rating label:hover ~label {
	-webkit-text-fill-color: #fff58c;
}

.form-control {
	width: 50%;
}

.container-form {
	margin: 150px 100px 150px 500px;
	height: 50%;
	width: 50%;
}

input[type="text"], input[type="file"], textarea {
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
	width: 100%;
	box-sizing: border-box;
	margin-bottom: 10px;

	
}

input[type="text"]:focus, input[type="file"]:focus, textarea:focus {
	outline: none;
	border-color: #007bff; /* 선택된 상태에서의 테두리 색상을 변경할 수 있습니다 */
}

</style>
<script>
	function validateForm() {
		var reviewText = document.getElementById("reviewText").value;
		if (reviewText.trim() === "") {
			alert("리뷰를 작성해주세요!");
			$('#reviewText').focus();
			return false;
		}
		return true;
	}

</script>

</head>

<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-1  custom-height">
				<div class="logo-container">

					<a href="./main_page.html" class="logo text"><span
						style="font-size: 60px">미식</span><span style="color: #440000">家</span></a>
				</div>
			</div>
			<form  action="<%=withFormTag%>" method="post" id="review_form" onsubmit="return validateForm()">
				<div class="col-md-10  custom-height">
					<div class="container-form">
						<div class="input-group mb-3">
							<span class="input-group-text">작성자</span> 
							<input type="hidden" name="no" value="${bean.no}" /> 
							<input type="text" name="fakeid" id="fakeid" class="form-control" size="10" disabled="disabled"
							value="${sessionScope.loginfo.name}(${sessionScope.loginfo.id})님">
						</div>
						<div class="input-group">
							<span class="input-group-text">image upload</span>
							 <input	class="form-control" type="file" id="image01" name="image01">

							<%-- 과거에 업로드 했던 이미지는 삭제되어야 합니다. --%>
							<input type="hidden" name="reviewImage01"<%--value="${bean.image01}"--%>>
						</div>
						<div class="input-group">
							<span class="input-group-text">image upload</span> <input
								class="form-control" type="file" id="image02" name="image02">
							<input type="hidden" name="reviewImage02"<%--value="${bean.image02}"--%>>
						</div>
						<div class="input-group">
							<span class="input-group-text">image upload</span> <input
								class="form-control" type="file" id="image03" name="image03">
							<input type="hidden" name="reviewImage03"<%--value="${bean.image03}"--%>>
						</div>
						<div class="form-group">
							<label>별점:</label>
							<div class="star-rating space-x-4">
								<input type="radio" id="5-stars" name="rating" value="5" /> <label
									for="5-stars" class="star pr-4">★</label> <input type="radio"
									id="4-stars" name="rating" value="4" /> <label for="4-stars"
									class="star">★</label> <input type="radio" id="3-stars"
									name="rating" value="3" /> <label for="3-stars" class="star">★</label>
								<input type="radio" id="2-stars" name="rating" value="2" /> <label
									for="2-stars" class="star">★</label> <input type="radio"
									id="1-star" name="rating" value="1" /> <label for="1-star"
									class="star">★</label>
							</div>
						</div>

						<div class="form-group">
							<label for="reviewText"></label>
							<textarea class="form-control" id="reviewText" rows="4"
								placeholder="리뷰를 작성하세요."></textarea>
						</div>

						<input type="submit" class="btn btn-primary submit-button"
							value="리뷰작성">

					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>