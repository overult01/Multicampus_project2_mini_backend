<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Insert title here</title>
</head>
<body>
<c:if test="${insertRow == 1}">
	<h1>정상 답변 완료</h1>
	<a href="http://localhost:8080/mall/replylist"><button type="button" class="btn btn-dark btn-sm">고객문의 리스트로 돌아가기</button></a>	
</c:if>

</body>
</html>