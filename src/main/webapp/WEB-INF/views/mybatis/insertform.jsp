<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멀티몰 - 회원가입</title>
<link href="${path}/resources/css/signup.css" rel="stylesheet"/> 
<script src="${path}/resources/js/signup.js"></script>
<meta name="viewport"
	content="user-scalable=no,width=device-width,initial-scale=1" />
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
<%@ include file="../layout/top.jsp" %>
	<!-- body 시작 -->
	<form action="membermybatisinsert" class="signup_form" method="post">
		<!-- 폼 시작 -->
		<div class="top-intro">
			<h2>
				<!-- 상단 소개글 -->
				가입을 시작합니다!
			</h2>
		</div>
		<br>
		<div class="box">
			<div class="idname">
				<!-- ID -->
				<div>
					<strong>아이디</strong>
				</div>
				<input type=text minlength="5" maxlength="20" size="40" name="id"
					required="required" placeholder="아이디 입력" pattern="[a-z0-9]{5,20}"
					title="5~20자의 영문 소문자, 숫자만 가능합니다.">
			</div>
			<br>
			<div class="email">
				<!-- email -->
				<div>
					<strong>이메일</strong>
				</div>
				<input type="email" name="email" placeholder="이메일 입력" size="40"
					required="required">
			</div>
			<br>
			<div class="password">
				<!--PW-->
				<div>
					<strong>비밀번호</strong>
				</div>
				<input type="password" name="password" id="password"
					placeholder="비밀번호 입력" pattern="[a-z0-9 ]{6,12}" required="required"
					title="6~12자 영문 소문자와 숫자 조합을 사용하세요." value="" size="40"><br>
			</div>
			<br>
			<div class="passwordCheck">
				<!--PW_CHECK 비밀번호 재확인 -->
				<div>
					<strong>비밀번호 재확인</strong>
				</div>
				<input type="password" name="repwd" id="repassword"
					placeholder="비밀번호 재입력" required="required" size="40"> <br>
			</div><br>
			<div class="birth">
				<!-- 생년월일 -->
				<div>
					<strong>생년월일</strong>
				</div>
				<input type="date" required="required" name="birth" size="40">
			</div>
			<br>
			<div class="address">
				<!-- 주소 -->
				<div>
					<strong>주소</strong>
				</div>
				<input type="text" placeholder="주소를 입력하세요." required="required"
					name="address" size="40">
			</div>
			<br>
			<div class="tel">
				<div>
					<strong>전화번호</strong>
				</div>
				<!-- 전화번호 -->
				<input type="text" name="phone" placeholder="전화번호 입력('-'포함)"
					required="required" size="40" />
			</div>
			<br>
			<!--가입버튼-->
			<div id="btn_signup" class="btn_form">
				<input type="submit" value="가입하기" 
					class="btn btn-dark">
			</div>
		</div>
	</form>
	<!-- 폼 종료 -->


<%@ include file="../layout/footer.jsp" %>
</body>
<!-- body 종료 -->
</html>