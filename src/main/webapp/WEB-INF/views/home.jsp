<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<hr>
	<p>
		<a href="${ctp}/board/boardList" class="btn btn-info">게시판리스트</a> | 
		<a href="${ctp}/board/boardInput" class="btn btn-success">게시판글쓰기</a> | 
		<a href="${ctp}/board/boardUpdate" class="btn btn-primary">게시판글수정</a>
	</p>
<hr>
	<p>
		<a href="${ctp}/member/login">로그인</a> | 
		<a href="${ctp}/member/loginOk">로그인Ok</a> | 
		<a href="${ctp}/member/logout">로그아웃</a> | 
		<a href="${ctp}/member/idCheck">아이디체크</a> | 
		<a href="${ctp}/member/nickCheck">닉네임체크</a> | 
		<a href="${ctp}/member/join">회원가입</a> | 
		<a href="${ctp}/member/joinOk">회원가입Ok</a> | 
		<a href="${ctp}/member/memberMain">회원메인</a> | <br>
		<a href="${ctp}/member/memberUpdate">회원정보수정</a> | 
		<a href="${ctp}/member/memberUpdateOk">회원정보수정Ok</a> | 
		<a href="${ctp}/member/memberDelete">회원탈퇴</a> | 
		<a href="${ctp}/member/memberList">회원리스트</a> | 
		<a href="${ctp}/member/memberSearch">회원찾기</a>
	</p>
<hr>
</body>
</html>
