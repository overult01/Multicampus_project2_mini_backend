<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>    

<!DOCTYPE html>

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
        
	<script
	  src="https://code.jquery.com/jquery-3.6.0.js"
	  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	  crossorigin="anonymous"></script>
	  

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
		<header>
			<div class="maintop">
			 <A href="http://localhost:8080/mall/"><IMG src="${path}/resources/images/mblack.png" width=240; height =60; ></A>
			</div>
			
			
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
			  <div class="container-fluid">
			<a class="navbar-brand" href="#"></a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
			
		
			  <ul class="navbar-nav justify-content-center" style="width:100%">
				<li class="nav-item">
				  <a class="nav-link" href="http://localhost:8080/mall/managerhome">&nbsp;관리자 홈&nbsp;
				  </a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="http://localhost:8080/mall/productlist">&nbsp;상품 관리&nbsp;</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="http://localhost:8080/mall/replylist">&nbsp;고객센터 관리&nbsp;</a>
				  <li class="nav-item">
				  <a class="nav-link" href="http://localhost:8080/mall/notice">&nbsp;공지사항&nbsp;</a>
				</li>
			  </ul>
			  </div>
			</nav>
			</header>
	
</body>
</html>