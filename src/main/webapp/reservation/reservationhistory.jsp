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
</style>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<h2>${sessionScope.loginfo.getName()}(${sessionScope.loginfo.getU_id()}) 님의
					주문 내역</h2>
				<table class="table table-striped">
					<thead>
						<tr>	
							<th>예약 번호</th>
							<th>식당 이름</th>
							<th>예약 일자</th>
							<th>인원 수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="bean" items="${requestScope.orderList}">
							<tr>
								<td>${bean.Reservation_no}</td>
								<td>${bean.Name}</td>
								<td>${bean.Reservation_Date}</td>
								<td>${bean.R_Capacity}</td>
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