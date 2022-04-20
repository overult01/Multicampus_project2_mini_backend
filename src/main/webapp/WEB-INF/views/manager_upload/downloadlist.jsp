<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script>
	$(document).ready( function(){ 
		// jquery code
	});
</script>

<title>Insert title here</title>
</head>
<body>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>업로드한 파일 목록입니다.</h3>
<c:forEach items = "${filearray}" var = "f"> <!-- items: 반복할 것 var : 하나하나의 객체  -->
	<p> <a href ="filedownloadresult?filename=${f}"> ${f} 파일 다운로드 </a></p>
</c:forEach>

</body>
</html>