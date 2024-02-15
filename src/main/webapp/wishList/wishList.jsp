<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section id="wishlist">
		<h2>위시 리스트</h2>
		<%
		if (wishList != null && !wishList.isEmpty()) {
		%>
		<ul>
			<%
			for (WishItem wishItem : wishList) {
			%>
			<li><%=wishItem.getProduct_name()%></li>
			<!-- 원하는 위시리스트 항목 출력 -->
			<%
			}
			%>
		</ul>
		<%
		} else {
		%>
		<p>위시 리스트가 비어있습니다.</p>
		<%
		}
		%>
	</section>
</body>
</html>