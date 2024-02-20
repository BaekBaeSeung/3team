<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>일반회원 회원가입</title>

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
<!-- <%-- 다음 주소 검색을 위한 추가 코드 --%> -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
        function openZipSearch() {
            new daum.Postcode({
                oncomplete: function (data) {
                    var addr = '';
                    if (data.userSelectedType === 'R') {
                        addr = data.roadAddress;
                    } else {
                        addr = data.jibunAddress;
                    }

                    $("#zip_code").val(data.zonecode);
                    $("#address").val(addr); /* 메인 주소 입력 */
                    $("#address2").val("");
                    $("#address2").focus(); /* 상세 주소 입력란에 포커스 주기 */
                }
            }).open();
        }
    </script>
<style>
body {
	min-height: 100vh;
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
	margin-top: 100px;
	padding: 30px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
</head>
<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">일반 회원가입</h4>
				<form class="validation-form" novalidate action="<%=withFormTag%>"
					method="post" name="myform">
					<input type="hidden" name="command" value="CustomerInsert">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">아이디</label> <input type="text"
								class="form-control" id="U_id" name="U_id" placeholder="아이디"
								value="" required>
							<div class="invalid-feedback">아이디을 입력해주세요.</div>
							<br /> <label for="Password">비밀번호</label> <input type="password"
								class="form-control" id="Password" name="Password"
								placeholder="비밀번호" value="" required><br /> <label
								for="password">비밀번호 확인</label> <input type="password"
								class="form-control" id="Password2" placeholder="비밀번호 확인"
								value="" required><br />
							<button class="btn btn-primary btn-sm btn-block" type="button"
								onclick="validatePassword()">비밀번호 확인</button>
							<br />
							<div class="invalid-feedback">
								<br /> 비밀번호를 입력해주세요.
							</div>
							<script>
					function validatePassword() {
					  var Password1 = document.getElementById('Password').value;
					  var Password2 = document.getElementById('Password2').value;
					  if (Password1 === Password2) {
					    alert('비밀번호가 일치합니다.');
					  } else {
					    alert('비밀번호가 일치하지 않습니다. 다시 확인해주세요.');
					  }
				}
			  </script>
							<label for="name">이름</label> <input type="text"
								class="form-control" id="Name" name="Name" placeholder="이름"
								value="" required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
							<br /> <label for="nickname">닉네임</label> <input type="text"
								class="form-control" id="Nickname" name="Nickname"
								placeholder="닉네임" value="" required>
							<div class="invalid-feedback">닉네임을 입력해주세요.</div>
							<br /> <label for="Phone">전화번호</label> <input type="text"
								class="form-control" id="Phone" name="Phone" placeholder="전화번호"
								value="" required>
							<div class="invalid-feedback">전화번호를 입력해주세요.</div>
							<br />
							<div class="form-group">
								<label for="Birth">생년월일</label> <input type="text"
									class="form-control" id="Birth" name="Birth" required>
							</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="Email">이메일</label> <input type="email"
							class="form-control" id="Email" name="Email" placeholder="이메일"
							required>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="Address">주소</label> <input type="text"
							class="form-control" id="Address" name="Address"
							onclick="openZipSearch();" placeholder="주소를 입력해주세요" required>
						<div class="invalid-feedback">주소를 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="Address_Detail">상세주소<span class="text-muted"></span></label>
						<input type="text" class="form-control" id="Address_Detail"
							name="Address_Detail" placeholder="상세주소를 입력해주세요.">
					</div>

					<div class="row">
						<div class="col-md-8 mb-3">
							<label for="root">선호하는 음식종류(필수아님)</label> <select
								class="custom-select d-block w-100" id="root">
								<option value="선택해주세요."></option>
								<option>한식</option>
								<option>중식</option>
								<option>일식</option>
								<option>양식</option>
							</select>
							<div class="invalid-feedback">선호하는 종류의 음식을 선택해주세요.</div>
						</div>

					</div>
					<hr class="mb-4">
					<button class="btn btn-primary btn-lg btn-block" type="submit">가입
						완료</button>
				</form>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">
				<br />
			</p>
		</footer>
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
  </script>

</body>
</html>