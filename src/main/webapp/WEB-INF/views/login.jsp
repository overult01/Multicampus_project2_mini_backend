<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멀티몰 - 로그인</title>
<link href="${path}/resources/css/login.css" rel="stylesheet"/> 


<meta name="viewport"
	content="user-scalable=no,width=device-width,initial-scale=1" />
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<script
	  src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="  crossorigin="anonymous"></script>

</head>
<body>
<%@ include file="layout/top.jsp" %>

	<div class="intro_container">
		<!-- 상단 소개글 여백 -->
		<div class="intro">
			<h2>
				<!-- 상단 소개글 -->
				안녕하세요 : ) <br> 멀티몰입니다.
			</h2>
		</div>
	</div>
		<!-- 폼 시작 -->
	<form action = "/mall/login" method = "post">
			<!--ID-->
			<input type=text name="id" id="id" maxlength="20" size="60"
				required="required" placeholder="아이디 입력" pattern="[a-z0-9]{5,20}" style="padding-bottom: 10px">
			<!--영어 소문자 a-z 숫자0~9 5~20자리 사이 -->
		
			<!--PW-->
			<input type="password" name="password" id="password"
				placeholder="비밀번호 입력" required="required" size="60">
		
			<!--로그인-->
			<input type=submit value=" 로그인 " class="btn btn-dark" id="login_btn">
	</form>
		
		<br>
		<div class="signup">
			<span> <!--회원가입-->
				<button type="button" class="btn btn-Light">아이디 찾기</button>
				<button type="button" class="btn btn-Light">비밀번호 찾기</button>
				<button type="button" class="btn btn-Light"
					onclick="location.href='http://localhost:8080/mall/membermybatisinsert'">회원가입</button> <br> <!-- 회원가입 페이지 이동 -->
			</span>
		</div>
		<br>
		<hr>
	<!-- 폼 종료 -->

<%@ include file="layout/footer.jsp" %>
</body>
</html>

