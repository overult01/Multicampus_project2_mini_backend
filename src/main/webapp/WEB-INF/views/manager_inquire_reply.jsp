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
	<link rel="stylesheet" href="http://localhost:8080/mall/WEB-INF/resources/css/default.css">

	<!-- manager CSS -->
	<link rel="stylesheet" href="http://localhost:8080/mall/WEB-INF/resources/css/manager.css">
        
	<script
	  src="https://code.jquery.com/jquery-3.6.0.js"
	  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	  crossorigin="anonymous"></script>
	  
	<script src="${path}/resources/js/manager_notice.js"></script>

<meta charset="UTF-8">

	<body>
	
	<%@ include file="layout/top_manager.jsp" %>

	<div id = "main-container">		
		<section>
			<article>				
				<div>
				<a href="http://localhost:8080/mall/replyinsert"><button type="button" class="btn btn-dark btn-sm">새창에서 답변</button></a>
				
					<table class="table table-hover" id = "table">
							<h3>고객 문의 리스트</h3>
							<hr>
							<tr> 
							
								<!-- HTML 태그에 속성으로 이벤트 리스너를 등록 -->
						
								<th>문의코드</th>
								<th>문의제목</th>
								<th>카테고리</th>
								<th>문의내용</th>
								<th>회원ID</th>
								<th>문의일</th>
							</tr>
					<tbody id = "inquire_list">
								<!-- 등록된 상품리스트 삽입  -->
								<c:forEach items="${inquirelist }" var="dto">
								<tr><td>${dto.code }</td><td>${dto.title}</td><td>${dto.category}</td><td>${dto.content}</td><td>${dto.memberid}</td><td>${dto.date}</td></tr>
						</c:forEach>
							</tbody>
						</table>
					
					<br>
					<hr>
					<table class="table table-hover" id = "table">
							<h3>관리자 답변</h3>
							<hr>
							<tr> 
							<!-- HTML 태그에 속성으로 이벤트 리스너를 등록 -->
							
								<th>답변코드</th>
								<th>문의내용</th>
								<th>문의코드</th>
								
							</tr>
							<tbody id = "reply_list">
								<!-- 등록된 상품리스트 삽입  -->
								<c:forEach items="${replylist }" var="dto">
								<tr><td>${dto.code }</td><td>${dto.content}</td><td>${dto.inquirecode}</td></tr>
						</c:forEach>
							</tbody>
						</table>		
						
				</div>

			</article>
		
		</section>
	</div>		
	<%@ include file="layout/footer.jsp" %>
        </body>
         
</html>