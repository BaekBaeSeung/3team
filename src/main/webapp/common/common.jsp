<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>

<%-- jstl tag library section --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<%-- whologin 변수는 현재 로그인의 상태를 알려 주는 변수입니다. --%>
<%-- 미로그인(0), 일반 사용자(1), 관리자(2) --%>
<c:set var="whologin" value="0"/>

<%-- 아이디가 'admin'이면 '관리자'입니다. --%>
<%-- loginfo 속성을 사용하여 현재 로그인 상태를 확인할 수 있습니다. --%>
<c:if test="${not empty sessionScope.loginfo}">
	<c:if test="${sessionScope.loginfo.U_id == 'admin'}">
		<c:set var="whologin" value="2"/>
	</c:if>
	<c:if test="${sessionScope.loginfo.U_id != 'admin'}">
		<c:set var="whologin" value="1"/>
	</c:if>	
</c:if> 

<%
// appName : 애플리케이션 컨텍스트 이름(프로젝트 이름)
String appName = request.getContextPath();
String mappingName = "/dining"; // in FrontController.java file

// 폼 태그에서 사용할 전역 변수
String withFormTag = appName + mappingName;

// 폼 태그가 아닌 곳에서 사용할 전역 변수
String notWithFormTag = withFormTag + "?command=";

//out.print("컨텍스트 이름 : " + appName + "<br/>");
//out.print("mappingName : " + mappingName + "<br/>");
//out.print("withFormTag : " + withFormTag + "<br/>");
//out.print("notWithFormTag : " + notWithFormTag + "<br/>");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery section -->
<!-- bootstrap은 jquery를 기반으로 구동이 되므로 반드시 jquery 선언이 먼저 되어야 합니다. -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<!-- bootstrap section -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">	
</head>
<body>

	<c:if test="${not empty sessionScope.alertMessage}">
		<div class="alert alert-danger alert-dismissible">
  			<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
  			<strong>경고 메시지 : </strong>${sessionScope.alertMessage}
		</div>
	</c:if>	
	<c:remove var="alertMessage" scope="session"/>
</body>
</html>