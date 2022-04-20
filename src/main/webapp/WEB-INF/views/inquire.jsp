<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="path" value="${pageContext.request.contextPath}"/> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport"
	content="user-scalable=no,width=device-width,initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"></script>

	<%-- <link rel="stylesheet" href="css/inquire.css"> --%>
	<link href="${path}/resources/css/inquire.css" rel="stylesheet"/>
<title>멀티몰 - 1등 의류몰</title>

<script>
	$(document).ready(function() {
// 		var child;
// 		$('#write').on('click', function() {
// 			 child = window.open("http://localhost:8080/mall/new_inquire","문의글 작성",
// 					"width=500, height=700, top=100, left=100, resizable=yes, location=no");
// 			 });
					
// 		});
</script>
</head>
<body>
	<!-- 페이지 전체 -->
	<div id="page_wrapper">

<%@ include file="layout/top.jsp" %>
  
  
  </header>
		<!-- 본문 -->
		<div id="content">
			<section id="main_section">
				<h1>1:1 고객문의</h1>
				<p>문의하신 질문에 대한 답변을 편리하게 보실 수 있습니다.</p>
				<p>질문을 남겨주시면 빠른 시일 내에 답변을 해드리겠습니다.</p>
				<hr>
				<form action="new_inquire" method="get">
				<input type=submit id=write class="btn btn-dark" value="1:1 문의 작성">
				</form>
				<div id="inquiry">
					<table class="table table-hover">
						<tr><th>번호</th><th>문의 분류</th><th>제목</th>
						<th>등록일</th><th>문의 내용</th></tr>
						<tbody id="inquiry_list">
						<c:forEach items="${inquirelist }" var="dto" varStatus="status">
							<tr><td>${status.count }</td><td>${dto.category }</td><td>${dto.title}</td>
							<td>${dto.date}</td><td>${dto.content}</td></tr>
						</c:forEach>
						</tbody>
					</table>				
				</div>
			</section>
		</div>
		<!-- content end -->

<%@ include file="layout/footer.jsp" %>

	</div>
	<!-- page_wrapper end -->
</body>
</html>