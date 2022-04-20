<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="resources/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		//jquery code
	});
</script>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Insert title here</title>
</head>
<body>
<c:if test="${insertRow == 1}">
	<h1>정상 상품등록 완료</h1>
	<a href="http://localhost:8080/mall/productlist"><button type="button" class="btn btn-dark btn-sm">상품 리스트로 돌아가기</button></a>	
	
</c:if>
</body>
</html>