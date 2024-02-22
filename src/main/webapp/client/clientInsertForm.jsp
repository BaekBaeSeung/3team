<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>업주용 회원가입</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
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
				<h4 class="mb-3">업주용 회원가입</h4>
				<form class="validation-form" novalidate action="<%=withFormTag%>"
					method="post" name="myform">
					<input type="hidden" name="command" value="ClientInsert"> <input
						type="hidden" id="isRegister" name="isRegister" value="false">

					<div class="row">
						<div class="col-md-10 mb-3">
							<label for="C_id">아이디</label><br /> <input type="text" id="C_id"
								name="C_id" class="form-control" placeholder="아이디" value=""
								required>
							<button type="button" value="아이디중복체크" onclick="idCheck();"
								class="btn btn-primary" style="margin-top: 10px;">아이디
								중복체크</button>
							<div class="invalid-feedback">아이디를 입력해주세요.</div>
							<script>
                            function idCheck() {/* 아이디 중복 체크를 수행합니다. 
                               var isRegister = $('#isRegister').val();
                               console.log('isRegister=' + isRegister);
                               / alert(isRegister); */

                               var isRegister = $('#isRegister').val();
                               var C_id = $('#C_id').val();
                               if (C_id == '') {
                                  alert('중복 체크를 위하여 id를 입력해 주셔야 합니다.');
                                  $('#C_id').focus();
                                  return;
                            }
                               
                               var url = '<%=notWithFormTag%>clientIdCheck&C_id=' + C_id;
                               window.open(url, 'idCheck',"width=400,height=180,top=200,left=550,location=yes") ;
                            }  


                              
                           	   
                          
                             </script>


							<br /> <label for="Password">비밀번호</label><br /> <input
								type="password" id="Password" name="Password"
								class="form-control" placeholder="비밀번호" required><br />
							<input type="password" id="Password2" name="Password2"
								class="form-control" placeholder="비밀번호 재입력" required><br />
							<button type="button" onclick="validatePassword()"
								class="btn btn-primary">비밀번호 확인</button>
							<br />
							<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
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
							<label for="Name">이름</label><br /> <input type="text" id="Name"
								class="form-control" name="Name" placeholder="이름" value=""
								required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>


							<br /> <label for="Gender">성별</label><br /> <span>남자</span> <input
								class="radio-box" type="radio" name="Gender" value="남자" checked>
							&nbsp;&nbsp;&nbsp; <span>여자</span> <input class="radio-box"
								type="radio" name="Gender" value="여자">
							<div class="invalid-feedback">성별을 선택해주세요.</div>
							<br /> <br /> <label for="Email">이메일</label><br /> <input
								name="Email" type="email" id="Email" class="form-control"
								required>
							<div class="invalid-feedback">이메일을 입력해주세요.</div>
							<br />

							<div class="form-group">
								<label>생년월일</label><br /> <input class="form-control"
									type="date" name="Birthday" id="Birthday">
							</div>
							<div class="invalid-feedback">생일을 입력해주세요.</div>

							<label for="Telephone">전화번호</label><br /> <input type="tel"
								id="Telephone" name="Telephone"
								pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-1234-5678"
								class="form-control" required>
							<div class="invalid-feedback">전화번호를 입력해주세요.</div>

						</div>
					</div>

					<hr class="mb-4">
					<button type="submit" class="btn btn-primary">최종 가입하기</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="dining()" class="btn btn-secondary">다이닝
						등록하러 가기</button>
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

      function dining() {
    	  gotoPage("./diningInsertForm.jsp");
      }
   </script>
</body>
</html>