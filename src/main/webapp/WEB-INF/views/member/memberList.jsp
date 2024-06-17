<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>memberList.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>전체 회원 List</h2>
  <div><font color="blue">${data}</font></div>
  <hr/>
  <div><img src="${ctp}/resources/images/2.jpg" width="350px" /></div>
  <hr/>
  <p>
    <a href="${ctp}/" class="btn btn-success">돌아가기</a>
  </p>
</div>
<p><br/></p>
</body>
</html>