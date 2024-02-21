<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Client MyPage</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>	
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script type="text/javascript">
	$(document).ready(function() {
		$('#Birthday').datepicker({dateFormat:"yy/mm/dd"});
	});
</script>

<style>
body {
	min-height: 130vh;
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
}

.input-form {
	width: 500px;
	margin-top: 300px;
	padding: 50px;
	background: #fff;
	border-radius: 10px;
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	margin: 0 auto;
	text-align: center;
	position: absolute;
	top: 65%;
	left: 50%;
	transform: translate(-50%, -50%);
}

div {
	margin: 20px 0;
	text-align: left;
}

label {
	color: blue;
	text-shadow: 3vh;
}

.radio-box:first {
	margin: 0 300px;
}

span {
	margin: 0 15px;
}

.submit {
	margin-bottom: 40px;
}

button {
	width: 150px;
	margin-top: 5px;
	padding: 10px;
	font-size: 14px;
	font-family: Arial, sans-serif;
	border-radius: 5px;
}

h4 {
	color: blue;
	text-align: center;
	text-shadow: 1px 1px 2px rgba(0, 0, 255, 0.5);
}

p {
	font-family: Arial, sans-serif;
}

.is-valid {
	border: 1px solid #28a745;
}

.is-invalid {
	border: 1px solid #dc3545;
}
</style>
</head>

<body>
	<div class="input-form">
		<h4>Client My page</h4>
		<p>개인 정보 수정 및 예약 확인</p>
		<ul class="nav nav-tabs" role="tablist">
			<li class="nav-item"><a class="nav-link active"
				data-bs-toggle="tab" href="#menu1">회원정보 수정</a></li>
			<li class="nav-item"><a class="nav-link" data-bs-toggle="tab"
				href="#menu2">예약내역 확인</a></li>
		</ul>
		<div class="tab-content">
			<div id="menu1" class="container tab-pane active">
				<br>
				<form class="validation-form" action="<%=withFormTag%>"
					method="post" novalidate>
					<input type="hidden" name="command" value="ClientUpdate">
					<div class="C_id">
						<label for="C_id">ID</label><br /> <input type="hidden" id="C_id"
							name="C_id" value="${sessionScope.clientinfo.getC_id()}"><input
							type="text" class="form-control" id="fakeC_id" name="fakeC_id"
							value="${sessionScope.clientinfo.getC_id()}" placeholder="아이디"
							disabled="disabled">
					</div>
					<div class="Password">
						<label for="Password">Password</label><br /> <input
							type="password" class="form-control" id="Password"
							placeholder="비밀번호" name="Password" required>
						<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
					</div>
					<div class="Name">
						<label for="Name">Name</label><br /> <input type="text" id="name"
							class="form-control" name="Name" placeholder="이름"
							value="${sessionScope.clientinfo.getName()}" required>
						<div class="invalid-feedback">이름을 입력해주세요.</div>
					</div>
					<div class="Gender">
						<label for="Gender">Gender</label><br />
						<input type="hidden" id="Gender"
							name="Gender" value="${sessionScope.clientinfo.getC_id()}">
						<input
							class="form-control" type="text" id="fakeGender" name="fakeGender"
							value="${sessionScope.clientinfo.getGender()}" disabled="disabled">
						<div class="invalid-feedback">성별을 선택해주세요.</div>
					</div>
					<div class="Email">
						<label for="email">Email</label><br /> <input name="Email"
							type="email" id="Email" class="form-control"
							value="${sessionScope.clientinfo.getEmail()}" required>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>
					<div class="Birthday">
						<label>Birthday</label><br /> <input class="form-control"
							type="text" name="Birthday" id="Birthday"
							value="${sessionScope.clientinfo.getBirthday()}" required>
					</div>
					<div class="invalid-feedback">생일을 입력해주세요.</div>
					<div class="Telephone">
						<label for="Telephone">Tel</label><br /> <input type="tel"
							id="Telephone" name="Telephone"
							pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-1234-5678"
							class="form-control"
							value="${sessionScope.clientinfo.getTelephone()}" required>
						<div class="invalid-feedback">전화번호를 입력해주세요.</div>
					</div>
					<div class="submit">
						<button type="submit" class="btn btn-primary">수정 하기</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" onclick="cancel()" class="btn btn-secondary">취소</button>
					</div>
				</form>
			</div>
			<div id="menu2" class="container tab-pane fade">
				<%-- 	<form action="<%=withFormTag%>" method="post">
					<div class="Reservation_Date">
						<div class="Reservation_Date">
							<label for="Reservation_Date">예약 날짜</label><br /> <input
								type="text" name="Reservation_Date" id="Reservation_Date"
								class="form-control" value="${bean.Reservation_Date}"
								disabled="disabled">
						</div>
						<hr />
						<div class="R_Capacity">
							<label for="R_Capacity">예약 인원</label><br /> <input type="text"
								name="R_Capacity" id="R_Capacity" class="form-control"
								value="${bean.R_Capacity}" disabled="disabled">
						</div>
						<div class="submit">
							<button type="submit" class="btn btn-primary">수정 하기</button>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" onclick="cancel()"
								class="btn btn-secondary">취소</button>
						</div>
				</form> --%>
			</div>

		</div>
		<script>
         window.addEventListener('load', () => {
            const forms = document.getElementsByClassName('validation-form');

            Array.prototype.filter.call(forms, (form) => {
               form.addEventListener('submit', function (event) {
                  if (form.checkValidity() === false) {
                     event.preventDefault();
                     event.stopPropagation();
                  }

                  form.classList.add('was-validated');
               }, false);
            });
         }, false);

         function cancel() {
            // 취소 버튼 클릭 시 작업 수행
            alert('수정이 취소되었습니다.');
         }

         // 이전 정보를 불러와 입력 필드에 채우는 함수
         function loadPreviousInfo() {
            // 이전 정보가 로컬 스토리지에 저장되어 있다고 가정
            var previousInfo = JSON.parse(localStorage.getItem('previousInfo'));
            if (previousInfo) {
               document.getElementById('C_id').value = previousInfo.C_id;
               document.getElementById('Name').value = previousInfo.Name;
               document.getElementById('Gender').value = previousInfo.Gender;
               document.getElementById('Email').value = previousInfo.Email;
               document.getElementById('Birthday').value = previousInfo.Birthday;
               document.getElementById('Telephone').value = previousInfo.Telephone;

            }
         }
         // 페이지 로드 시 이전 정보 불러오기
         window.addEventListener('load', loadPreviousInfo);

         function cancel() {
            // 취소 버튼 클릭 시 작업 수행
            alert('수정이 취소되었습니다.');
         }
      </script>
</body>

</html>