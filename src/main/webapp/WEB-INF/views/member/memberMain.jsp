<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>memberMain.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회원 메인 방</h2>
  <div><font color="blue">${data} / </font><font color="red">${strLevel}</font></div>
  <hr/>
  <div><img src="${ctp}/resources/images/4.jpg" width="350px" /></div>
  <hr/>
  <p>
    <a href="${ctp}/member/memberUpdate" class="btn btn-success">회원정보수정</a>
    <a href="${ctp}/member/memberSearch">회원찾기</a>
    <a href="${ctp}/member/logout" class="btn btn-warning">로그아웃</a>
    <a href="${ctp}/member/memberDelete" class="btn btn-danger">회원탈퇴</a>
  </p>
  <hr>
		<a href="${ctp}/board/boardList" class="btn btn-primary">게시판</a>
		<a href="${ctp}/pds/pdsList" class="btn btn-info">자료식</a>
		<a href="${ctp}/guest/guestList" class="btn btn-secondary">방명록</a>
	<hr>
</div>
<p><br/></p>
</body>
</html>