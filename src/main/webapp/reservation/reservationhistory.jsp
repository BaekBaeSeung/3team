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
.young{
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
				<h2>[ ${bean.getU_id()} ]`s Dining List.</h2>
				<table class="table table-striped">
					<thead>
						<tr class="text">
							<th>No.</th>
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
								<td>${bean.getReservation_no()}</td>
								<td>${bean.getReservation_Date()}</td>
								<td>${bean.getR_Capacity()}</td>
								<!-- 여기서부터 해당 예약취소 커맨드 주고 콘트롤러 만들어서 삭제 할 수 있게... -->
								<td class="baek" style="background-color: #ffca00;">
									<c:if test="${sessionScope.loginfo.getU_id() == requestScope.bean.getU_id()}">
										<a class="young" href="<%=notWithFormTag%>">예약 취소</a>
									</c:if>
								</td>
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