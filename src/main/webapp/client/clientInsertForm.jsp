<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Client 회원가입</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
}

h4 {
	color: blue;
	text-align: center;
	text-shadow: 1px 1px 2px rgba(0, 0, 255, 0.5);
}
</style>
</head>

<body>
	<div class="input-form">
		<h4>Client 회원가입</h4>
		<form class="validation-form" action="<%=withFormTag%>" method="post"
			name="myform" novalidate>
			<input type="hidden" name="command" value="ClientInsert">

			<!-- <%-- 중복 체크를 했는지 판단하기 위한 부울 타입의 히든 양식으로 true이면 회원 가입이 가능합니다. --%> -->
			<!-- <input type="hidden" id="isRegister" name="isRegister" value="false"> -->
			<div class="C_id">
				<label for="C_id">ID</label><br /> <input type="text" id="C_id"
					name="C_id" class="form-control" placeholder="아이디" value=""
					required> <input type="button" value="아이디중복체크"
					onclick="idCheck();" style="margin-top: 10px;">
				<div class="invalid-feedback">아이디를 입력해주세요.</div>
			</div>
			<%-- 	<script>
            function idCheck() {/* 아이디 중복 체크를 수행합니다. */
               var isRegister = $('#isRegister').val();
               console.log('isRegister=' + isRegister);
               /* alert(isRegister); */

               var C_id = $('#id').val();
               if (C_id == '') {
                  alert('중복 체크를 위하여 id를 입력해 주셔야 합니다.');
                  $('#id').focus();
                  return;
               }

               var url = '<%=notWithFormTag%>clientIdCheck&C_id=' + C_id;
               window.open(url, 'idCheck', width = 400, height = 300);
            }
         </script> --%>
			<div class="Password">
				<label for="Password">Password</label><br /> <input type="password"
					id="Password" name="Password" class="form-control"
					placeholder="비밀번호" required><br /> <input type="password"
					id="Password2" name="Password2" class="form-control"
					placeholder="비밀번호 재입력" required><br />
				<button type="button" onclick="validatePassword()"
					class="btn btn-primary">비밀번호 확인</button>
				<br />
				<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
			</div>
			<script>
            function validatePassword() {
               var password1 = document.getElementById('Password').value;
               var password2 = document.getElementById('Password2').value;
               if (password1 === password2) {
                  alert('비밀번호가 일치합니다.');
                  document.getElementById('Password').classList.remove('is-invalid');
                  document.getElementById('Password2').classList.remove('is-invalid');
                  document.getElementById('Password').classList.add('is-valid');
                  document.getElementById('Password2').classList.add('is-valid');
               } else {
                  alert('비밀번호가 일치하지 않습니다. 다시 확인해주세요.');
                  document.getElementById('Password').classList.remove('is-valid');
                  document.getElementById('Password2').classList.remove('is-valid');
                  document.getElementById('Password').classList.add('is-invalid');
                  document.getElementById('Password2').classList.add('is-invalid');
               }
            }
         </script>
			<div class="Name">
				<label for="Name">Name</label><br /> <input type="text" id="Name"
					class="form-control" name="Name" placeholder="이름" value="" required>
				<div class="invalid-feedback">이름을 입력해주세요.</div>
			</div>
			<div class="Gender">
				<label for="Gender">Gender</label><br /> <span>남자</span> <input
					class="radio-box" type="radio" name="Gender" value="남자" checked>
				<span>여자</span> <input class="radio-box" type="radio" name="Gender"
					value="여자">
				<div class="invalid-feedback">성별을 선택해주세요.</div>
			</div>
			<div class="Email">
				<label for="Email">Email</label><br /> <input name="Email"
					type="email" id="Email" class="form-control" required>
				<div class="invalid-feedback">이메일을 입력해주세요.</div>
			</div>
			<div class="Birthday">
				<label>Birthday</label><br /> <input class="form-control" type="text"
					name="Birthday" id="Birthday">
			</div>
			<div class="invalid-feedback">생일을 입력해주세요.</div>
			<div class="Telephone">
				<label for="Telephone">Tel</label><br /> <input type="tel"
					id="Telephone" name="Telephone"
					pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-1234-5678"
					class="form-control" required>
				<div class="invalid-feedback">전화번호를 입력해주세요.</div>
			</div>
			<div class="submit">
				<button type="submit" class="btn btn-primary">최종 가입하기</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="dining()" class="btn btn-secondary">다이닝 등록하러 가기</button>
			</div>
		</form>
	</div>
	<footer>
		<p>
			<br />
		</p>
	</footer>
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

      function dining() {
    	  gotoPage("./diningInsertForm.jsp");
      }
   </script>
</body>

</html>