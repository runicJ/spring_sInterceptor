<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>join.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회원 가입하기</h2>
  <div><font color="blue">${data}</font></div>
  <hr/>
  <div><img src="${ctp}/resources/images/3.jpg" width="350px" /></div>
  <hr/>
  <p>
		<input type="submit" value="아이디중복체크" onclick="location.href='${ctp}/member/idCheck';" class="btn btn-success"/>
		<input type="submit" value="닉네임중복체크" onclick="location.href='${ctp}/member/nickCheck';" class="btn btn-info"/>
		<input type="submit" value="회원가입" onclick="location.href='${ctp}/member/joinOk';" class="btn btn-primary"/>
    <a href="${ctp}/" class="btn btn-warning">돌아가기</a>
  </p>
</div>
<p><br/></p>
</body>
</html>