<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>guestDelete.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<p><br><p>
<div class="container">
	<h2>방명록 삭제</h2>
	<div><font color="blue">${data}</font></div>
	<hr>
	<div><img src="${ctp}/resources/images/3.jpg" width="350px" /></div>  <!-- 서블릿 컨텍스트 통해서 resources 설정해서 사용 -->
	<hr>
	<p>
		<a href="${ctp}/pds/pdsList" class="btn btn-warning">돌아가기</a>
	</p>
</div>
<p><br><p>
</body>
</html>