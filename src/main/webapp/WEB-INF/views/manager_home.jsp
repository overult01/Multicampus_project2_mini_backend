<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>       
    
<!doctype html>
<html>
<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1">

	<!-- Bootstrap CSS -->
	<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
    <!-- default CSS -->
	<link rel="stylesheet" href="${path}/resources/css/default.css">
		
	<!-- manager CSS -->
	<link rel="stylesheet" href="${path}/resources/css/manager.css">
        
	<script
	  src="https://code.jquery.com/jquery-3.6.0.js"
	  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	  crossorigin="anonymous"></script>
	  

<meta charset="UTF-8">

	<body>
	
<%@ include file="layout/top_manager.jsp" %>


	<div id = "main-container">		
		<section>
			<article>
				<h2>안녕하세요 관리자님:)<br>멀티몰 관리자 페이지입니다.</h2>
				<img src="${path}/resources/images/chain.gif" alt="톱니바퀴" style="display: block; margin: 0px auto;">
			</article>
		
		</section>
	</div>

<%@ include file="layout/footer.jsp" %>

</body>
</html>