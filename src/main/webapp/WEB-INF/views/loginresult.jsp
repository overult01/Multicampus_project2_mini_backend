<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script
	  src="https://code.jquery.com/jquery-3.6.0.js"
	  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	  crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function(){
	
});
</script>
</head>
<body>
<c:if test="${result == 1 }" >
	<h1>정상 로그인 완료</h1>
	<a href="http://localhost:8080/mall/"><button type="button" class="btn btn-dark btn-sm">홈으로 돌아가기</button></a>	
</c:if>
<c:if test="${result == 0 }" >
	<h1>id가 존재하지 않음</h1>
	<a href="http://localhost:8080/mall/membermybatisinsert"><button type="button" class="btn btn-dark btn-sm">가입하기</button></a>	
</c:if>
<c:if test="${result == 2 }" >
	<h1>암호 불일치</h1>
	<a href="http://localhost:8080/mall/membermybatisinsert"><button type="button" class="btn btn-dark btn-sm">가입하기</button></a>	
</c:if>
</body>
</html>