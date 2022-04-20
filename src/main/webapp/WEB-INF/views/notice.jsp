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
	<link href="${path}/resources/css/inquire.css" rel="stylesheet"/>

<meta charset="UTF-8">

	<body>
	
	<%@ include file="layout/top_manager.jsp" %>
			<div id="content">
			<div id = "main-container">		
				<section>
					<article>
						<h2>공지사항</h2>


						<br>

						<table class="table table-hover">
							<tr><th>공지번호</th><th>제목</th><th>카테고리</th><th>작성일</th></tr>
							<tbody id="inquire_list">
								
								<c:forEach items="${noticelist }" var="dto">
								<tr><td>${dto.code}</td><td>${dto.title}</td><td>${dto.category}</td><td>${dto.date}</td></tr>
						</c:forEach>
								
							<!--<tr><td>1</td><td>배송에 관련된 공지입니다.</td><td>공지사항</td><td>20220223</td></tr>
								<tr><td>2</td><td>상품 교환에 관련된 공지입니다.</td><td>공지사항</td><td>20220223</td></tr>
								<tr><td>3</td><td>상품 환불에 관련된 공지입니다.</td><td>공지사항</td><td>20220223</td></tr>
								<tr><td>4</td><td>주문에 관련된 공지입니다.</td><td>공지사항</td><td>20220223</td></tr>
								<tr><td>5</td><td>2022년 봄 이벤트 합니다.</td><td>이벤트</td><td>20220223</td></tr>
								<tr><td>6</td><td>택배사 파업으로 인한 배송 지연 공지사항입니다.</td><td>공지사항</td><td>20220223</td></tr> -->
								
						</tbody>
						</table>	
						
						<br>
						
						<A href="http://localhost:8080/mall/noticeinsert"><button type="button" class="btn btn-dark btn-sm" id = "inquire">공지등록</button></A>
						<A href="inquire.html"><button type="button" class="btn btn-dark btn-sm" id = "inquire">공지삭제</button></A>
		
					</article>					
				</section>
			</div>			
			</div>
	<%@ include file="layout/footer.jsp" %>
        </body>
         
</html>