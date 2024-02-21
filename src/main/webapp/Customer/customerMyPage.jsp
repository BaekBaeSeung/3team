<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>일반회원 회원가입</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script type="text/javascript">
	$(document).ready(function() {
		$('#Birth').datepicker({dateFormat:"yy/mm/dd"});
	});
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
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
	max-width: 600px;
	margin: -5px auto;
	padding: 30px;
	background: #fff;
	align-items: center;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	text-align: center;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
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

.radio-box {
	margin-right: 50px;
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
	margin-right: 300px;
}

.container {
	margin-top: 0;
	/* 여백 제거 */
}

h4 {
	color: blue;
	text-align: center;
	text-shadow: 1px 1px 2px rgba(0, 0, 255, 0.5);
}

p {
	font-family: Arial, sans-serif;
	display: inline-block;
	text-align: center;
}

#Address_Detail{
	margin-bottom: 50px;
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
		<h4>User My page</h4>
		<p>회원정보 수정 & 회원 탈퇴 및 예약내역 변경</p>
		<ul class="nav nav-tabs" role="tablist">
			<li class="nav-item"><a class="nav-link active"
				data-bs-toggle="tab" href="#menu1">User 정보 수정 및 회원 탈퇴</a></li>
			<li class="nav-item"><a class="nav-link" data-bs-toggle="tab"
				href="#menu2">User 예약내역 변경</a></li>
		</ul>
		<div class="tab-content">
			<div id="menu1" class="container tab-pane active">
				<br>
				<form class="validation-form" action="<%=withFormTag%>"
					method="post" novalidate>
					<input type="hidden" name="command" value="CustomerUpdate">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="U_id">아이디</label> <input type="hidden"
								class="form-control" id="U_id" name="U_id"
								value="${sessionScope.loginfo.getU_id()}" required> <input
								type="text" class="form-control" id="fakeU_id" name="fakeU_id"
								value="${sessionScope.loginfo.getU_id()}" disabled="disabled"
								required> <br /> <label for="Password">비밀번호</label> <input
								type="password" class="form-control" id="Password"
								name="Password" placeholder="비밀번호"
								value="${sessionScope.loginfo.getPassword()}" required><br />
							<label for="name">이름</label> <input type="text"
								class="form-control" id="Name" name="Name"
								value="${sessionScope.loginfo.getName()}" required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
							<br /> <label for="Nickname">변경할 닉네임</label> <input type="text"
								class="form-control" id="Nickname" name="Nickname"
								placeholder="닉네임" value="${sessionScope.loginfo.getNickname()}"
								required>
							<div class="invalid-feedback">닉네임을 입력해주세요.</div>
							<br /> <label for="Phone">전화번호</label> <input type="text"
								class="form-control" id="Phone" name="Phone"
								value="${sessionScope.loginfo.getPhone()}" required>
							<div class="invalid-feedback">전화번호를 입력해주세요.</div>
							<br /> <label for="Birth">생년월일</label> <input type="text"
								class="form-control" id="Birth" name="Birth"
								value="${sessionScope.loginfo.getBirth()}" required>

							<div class="invalid-feedback">생년월일을 입력해주세요.</div>
							<br /> <label for="Email">변경할 이메일</label> <input type="email"
								class="form-control" id="Email" name="Email"
								value="${sessionScope.loginfo.getEmail()}" required>
							<div class="invalid-feedback">이메일을 입력해주세요.</div>
							<br /> <label for="Address">변경할 주소</label> <input type="text"
								class="form-control" id="Address" name="Address"
								value="${sessionScope.loginfo.getAddress()}" required>
							<div class="invalid-feedback">주소를 입력해주세요.</div>

							<br /> <label for="Address_Detail">상세주소<span
								class="text-muted"></span></label> <input type="text"
								class="form-control" id="Address_Detail" name="Address_Detail"
								value="${sessionScope.loginfo.getAddress_Detail()}">
							<div class="row">
								<div class="col-md-6 mb-3">
									<button type="submit" class="btn btn-primary btn-block"
										style="width: 200px;">정보수정 하기</button>
								</div>
					<%-- 			<div class="col-md-6 mb-3">
									<a href="<%=notWithFormTag%>CustomerDelete&U_id=${sessionScope.loginfo.GetU_id()}"
										class="btn btn-danger"
										style="width: 200px; margin-left: 100px;">회원탈퇴 하기</button>
								</div> --%>
							</div>
						</div>
				</form>
			</div>
			<div id="menu2" class="container tab-pane fade">
				<form class="validation-form" novalidate>
					<%--  <div class="id">
                <div class="Reservation_Date">
                    <label for="Reservation_Date">예약 날짜</label><br /> <input type="text" name="Reservation_Date"
                        id="Reservation_Date" class="form-control" value="${bean.Reservation_Date}">
                </div>
                <hr />
                <div class="R_Capacity">
                    <label for="R_Capacity">예약 인원</label><br /> <input type="text" name="R_Capacity" id="R_Capacity"
                        class="form-control" value="${bean.R_Capacity}">
                </div>
                <hr />
                <div class="submit">
                    <button type="submit" class="btn btn-primary">수정 하기</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" onclick="cancel()" class="btn btn-secondary">취소</button>
                </div>
 --%>
				</form>
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
                document.getElementById('U_id').value = previousInfo.id;
                document.getElementById('Name').value = previousInfo.name;
                document.getElementById('Email').value = previousInfo.email;
                document.getElementById('Birth').value = previousInfo.birth;
                document.getElementById('Gender').value = previousInfo.gender;

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