<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
span {
	font-size: 1.2rem;
}

.text {
	text-align: center;
}

.young {
	text-decoration: none;
	color: white;
}
</style>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<h2>[ ${loginfo.getU_id()} ]`s Dining List.</h2>
				<table class="table table-striped">
					<thead>
						<tr class="text">
							<th>No.</th>
							<th>다이닝 이름</th>
							<th>예약 번호</th>
							<th>예약 일자</th>
							<th>인원 수</th>
							<th>예약 취소</th>

						</tr>
					</thead>
					<tbody>

						<!--forEach 태그의 속성은 반복 작업을 수행할 때 사용  -->
						<c:forEach var="bean" items="${requestScope.reservationList}"
							varStatus="loop">
							<tr class="text">
								<td>${loop.index + 1}</td>
								<c:if test="${(loop.index + 1)%10 == 1}">
									<td>광화문식당</td>
								</c:if>
								<c:if test="${(loop.index + 1)%10 == 2}">
									<td>연남제비</td>
								</c:if>
								<c:if test="${(loop.index + 1)%10 == 3}">
									<td>연남토마</td>
								</c:if>
								<c:if test="${(loop.index + 1)%10 == 4}">
									<td>티원</td>
								</c:if>
								<c:if test="${(loop.index + 1)%10 == 5}">
									<td>디라이프스타일키친</td>
								</c:if>
								<c:if test="${(loop.index + 1)%10 == 6}">
									<td>스케쥴청담</td>
								</c:if>
								<c:if test="${(loop.index + 1)%10 == 7}">
									<td>남산촛불1978</td>
								</c:if>
								<c:if test="${(loop.index + 1)%10 == 8}">
									<td>미자식당</td>
								</c:if>
								<c:if test="${(loop.index + 1)%10 == 9}">
									<td>사철국화</td>
								</c:if>
								<c:if test="${(loop.index + 1)%10 == 0}">
									<td>송계옥</td>
								</c:if>
								<td>${bean.getReservation_no()}</td>
								<td>${bean.getReservation_Date()}</td>
								<td>${bean.getR_Capacity()}</td>
								<!-- 여기서부터 해당 예약취소 커맨드 주고 콘트롤러 만들어서 삭제 할 수 있게... -->
								<td class="baek" style="background-color: #ffca00;"><c:if
										test="${sessionScope.loginfo.getU_id().equals(requestScope.loginfo.getU_id())}">
										<a class="young" href="#"
											onclick="return ReservationHistoryDelite('${bean.getReservation_no()}')">예약
											취소</a>
										<script>
										function ReservationHistoryDelite(Reservation_no){ /* 게시물 삭제  */
									
											var response = window.confirm('예약을 취소 하시겠습니까?');
											
											if(response==true){
												
												var url = '<%=notWithFormTag%>ReservationHistoryDelete&Reservation_no=' + Reservation_no;

													location.href = url;
													alert('예약취소 성공');

												} else {
													alert('예약취소 실패');
													return false;
												}
											}
										</script>
									</c:if></td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-sm-2"></div>
		</div>

	</div>
</body>
</html>