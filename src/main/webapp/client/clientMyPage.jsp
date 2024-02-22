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
                    $("#Address").val(addr); /* 메인 주소 입력 */
                    $("#Address_Detail").val("");
                    $("#Address_Detail").focus(); /* 상세 주소 입력란에 포커스 주기 */
                }
            }).open();
        }
       
    </script>
<style>
body {
	background-image: url('/Dining/image/미식家.png');
	background-size: cover;
	background-attachment: fixed;
}

.input-form {
	max-width: 500px;
	margin-top: 100px;
	padding: 30px;
	background: rgba(255, 255, 255, 0.8); /* 폼 배경색을 조절할 수 있습니다 */
	border-radius: 10px;
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
}
</style>
</head>
<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">업주 회원수정</h4>
				<form class="validation-form" novalidate action="<%=withFormTag%>"
					method="post" name="myform">
					<input type="hidden" name="command" value="ClientUpdate">

					<div class="row"></div>
					<div class="col-md-10 mb-3">
						<label for="C_id">아이디</label> <br /> 
						<input type="hidden" id="C_id" name="C_id" value="${sessionScope.clientinfo.getC_id()}"><input
							type="text" class="form-control" id="fakeC_id" name="fakeC_id"
							value="${sessionScope.clientinfo.getC_id()}" placeholder="아이디"
							disabled="disabled">
							 <br /> 
							 <label for="Password">비밀번호</label>
						<br /> <input type="password" class="form-control" id="Password"
							placeholder="비밀번호" name="Password" required>
							 <br />
							  <label for="Name">이름</label> 
							  <br />
							   <input type="text" id="Name" class="form-control" name="fakeName" placeholder="이름"
							value="${sessionScope.clientinfo.getName()}" required
							disabled="disabled"><input type="hidden" name="Name"
							value="${sessionScope.clientinfo.getName()}"> 
							<br /> 
							<label
							for="Gender">성별</label> <br />
							 <input type="hidden" id="Gender" name="Gender" value="${sessionScope.clientinfo.getGender()}"> 
							<input class="form-control" type="text" id="fakeGender"
							name="fakeGender" value="${sessionScope.clientinfo.getGender()}"
							disabled="disabled"> 
							<br />
						<div class="Email">
							<label for="email">Email</label><br /> <input name="Email"
								type="email" id="Email" class="form-control"
								value="${sessionScope.clientinfo.getEmail()}" readonly="readonly" required>
						</div>
						<br />
						<div class="Birthday">
							<label>생년월일</label><br /> <input class="form-control"
								type="text" name="Birthday" id="Birthday"
								value="${sessionScope.clientinfo.getBirthday()}"
								readonly="readonly" required>
						</div>

						<label for="Telephone">전화번호</label><br /> <input type="tel"
							id="Telephone" name="Telephone"
							placeholder="010-1234-5678"
							class="form-control"
							value="${sessionScope.clientinfo.getTelephone()}" required
							readonly="readonly"> <br />
					</div>
					<div class="submit">
						<button type="submit" class="btn btn-primary">수정 하기</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="<%=notWithFormTag%>DiningGotoInsert&C_id=${sessionScope.clientinfo.getC_id()}" class="btn btn-secondary">다이닝 등록하러 가기</a>
					</div>
				</form>
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

      </script>

</body>
</html>