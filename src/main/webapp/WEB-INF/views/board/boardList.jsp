<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>boardList.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<p><br><p>
<div class="container">
	<h2>게시판 리스트</h2>
	<div><font color="blue">${data}</font></div>
	<hr>
	<div><img src="${ctp}/resources/images/1.jpg" width="350px" /></div>  <!-- 서블릿 컨텍스트 통해서 resources 설정해서 사용 -->
	<hr>
	<p>
		<a href="${ctp}/" class="btn btn-warning">돌아가기</a>
  <hr>
		<a href="${ctp}/board/boardInput" class="btn btn-primary">게시판 글올리기</a>
		<a href="${ctp}/board/boardUpdate" class="btn btn-info">게시판 수정하기</a>
		<a href="${ctp}/board/boardDelete" class="btn btn-secondary">게시판 삭제하기</a>
	<hr>
	</p>
</div>
<p><br><p>
</body>
</html>