<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<p><br><p>
<div class="container">
<h1>
	환영합니다!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<hr>
	<p>
		<a href="${ctp}/guest/guestList">방명록</a> |
		<a href="${ctp}/member/login">로그인</a> | 
		<a href="${ctp}/member/join">회원가입</a>
	</p>
<hr>
</div>
</body>
</html>
