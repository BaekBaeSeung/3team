<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/Dining/Customer/login_style.css">
<title>다이닝 갈까?🌙</title>
</head>
<body>
	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3">
							<span>일반 회원 </span><span>기업 회원</span>
						</h6>
						<input class="checkbox" type="checkbox" id="reg-log"
							name="reg-log" /> <label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">미식家</h4>
											<form action="<%=withFormTag%>" method="post">
												<input type="hidden" name="command" value="CustomerLogin">
												<div class="form-group">
													<input type="text" name="U_id" class="form-style"
														placeholder="아이디를 입력하세요" id="U_id" value="bbs4861">
												</div>
												<div class="form-group mt-2">
													<input type="password" name="Password" class="form-style"
														placeholder="비밀번호를 입력하세요" id="Password" value="baek4861">
												</div>
												<button type="submit" class="btn mt-4">로그인</button>
												<p class="mb-0 mt-4 text-center">
													아이디 없으신가요?&nbsp;&nbsp;<a
														href="/Dining/Customer/CustomerInsertForm.jsp"
														class="link">회원가입</a>
												</p>
											</form>
										</div>
									</div>
								</div>
								<div class="card-back">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">미식家(클라이언트용)</h4>
											<form action="<%=withFormTag%>" method="post">
												<input type="hidden" name="command" value="ClientLogin">
												<div class="form-group">
													<input type="text" name="C_id" class="form-style"
														placeholder="아이디를 입력하세요" id="C_id" autocomplete="off">
												</div>
												<div class="form-group mt-2">
													<input type="password" name="Password" class="form-style"
														placeholder="비밀번호를 입력하세요" id="Password" autocomplete="off">
												</div>
												<button type="submit" class="btn mt-4">로그인</button>
												<p class="mb-0 mt-4 text-center">
													아이디 없으신가요?&nbsp;&nbsp;<a
														href="/Dining/client/clientInsertForm.jsp" class="link">회원가입</a>
												</p>
											</form>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>