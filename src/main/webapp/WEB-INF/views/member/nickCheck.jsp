<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>nickCheck.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<p><br><p>
<div class="container">
  <h2>닉네임</h2>
  <form method="post" action="${ctp}/nickCheck">
    <table class="table table-bordered text-center">
      <tr>
        <td colspan="2"><font size="5">닉네임 중복확인</font></td>
      </tr>
      <tr>
        <th>아이디</th>
        <td><input type="text" name="nick" value="아톰" autofocus required class="form-control"/></td>
      </tr>
      <tr>
        <td colspan="2">
          <input type="submit" value="닉네임 중복체크" class="btn btn-success mr-2"/>
          <input type="reset" value="다시입력" class="btn btn-warning mr-2"/>
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
          <a href="${ctp}/" class="btn btn-warning">돌아가기</a>
        </td>
      </tr>
    </table>
  </form>
</div>
<p><br><p>
</body>
</html>