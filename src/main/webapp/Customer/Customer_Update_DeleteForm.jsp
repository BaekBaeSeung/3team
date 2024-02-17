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

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(rgb(255, 255, 255)), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, rgb(255, 255, 255) 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, rgb(255, 255, 255) 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, rgb(255, 255, 255) 0%, #1d466c 100%);
      background: linear-gradient(to top right, rgb(255, 255, 255) 0%, #1d466c 100%);
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
        <h4 class="mb-3">회원가입</h4>
        <form class="validation-form" novalidate action="<%=withFormTag%>" method="post" name="myform">
					<input type="hidden" name="command" value="Customer_Update_DeleteForm">
					
          <div class="row">
            <div class="col-md-6 mb-3">
			<label for="name">아이디</label>
              <input type="hidden" class="form-control" id="U_id" name="U_id" value="${sessionScope.loginfo.getU_id()}" required>
              <input type="text" class="form-control" id="fakeU_id" name="fakeU_id" value="${sessionScope.loginfo.getU_id()}" disabled="disabled" required>
              <div class="invalid-feedback">
                아이디을 입력해주세요. 
              </div><br/>
              <label for="Password">비밀번호</label>
              <input type="password" class="form-control" id="Password" name="Password" placeholder="비밀번호" value="${sessionScope.loginfo.getPassword()}"  required><br/>
              
            
             
              <label for="name">이름</label>
              <input type="text" class="form-control" id="Name" name="Name" value="${sessionScope.loginfo.getName()}" disabled="disabled" required>
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div><br/>
              <label for="nickname">닉네임</label>
              <input type="text" class="form-control" id="Nickname" name="Nickname" value="${sessionScope.loginfo.getNickname()}" required>
              <div class="invalid-feedback">
                닉네임을 입력해주세요.
              </div><br/>
              <label for="Phone">전화번호</label>
              <input type="text" class="form-control" id="Phone" name="Phone"  disabled="disabled" value="${sessionScope.loginfo.getPhone()}" required>
              <div class="invalid-feedback">
                전화번호를 입력해주세요.
              </div><br/>
                <div class="form-group">
            	<label for="Birth">생년월일</label>
            	<input type="date" class="form-control" id="Birth" name="Birth"value="${sessionScope.loginfo.getBirth()}" disabled="disabled" required>
        		</div>
            </div>
          </div>

          <div class="mb-3">
            <label for="Email">이메일</label>
            <input type="email" class="form-control" id="Email" name="Email" value="${sessionScope.loginfo.getEmail()}" required>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="Address">주소</label>
            <input type="text" class="form-control" id="Address" name="Address" value="${sessionScope.loginfo.getAddress()}" required>
            <div class="invalid-feedback">
              주소를 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="Address_Detail">상세주소<span class="text-muted"></span></label>
            <input type="text" class="form-control" id="Address_Detail" name="Address_Detail" value="${sessionScope.loginfo.getAddress_Detail()}">
          </div>

          <hr class="mb-4">
          <button class="btn btn-primary btn-lg btn-block" type="submit">회원수정</button>
          <button class="btn btn-danger btn-lg btn-block" type="submit">회원탈퇴</button>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1"><br/></p>
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