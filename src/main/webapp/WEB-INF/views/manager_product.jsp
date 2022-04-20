<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	<link href="${path}/resources/css/default.css" rel="stylesheet"/>
        
	<script
	  src="https://code.jquery.com/jquery-3.6.0.js"
	  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	  crossorigin="anonymous"></script>
	  

<meta charset="UTF-8">

<script>
/* 	$(document).ready( function(){ 
		$("#product_enroll_btn_ajax").on('click', function(){
 */
<%-- 			alert(1);
			$.ajax({
				// 서버에 요청 부분 
				url: "<%=request.getContextPath()%>/productlist",
				data: {'code':$("#product_enroll_code").val(), // id가 id인 태그의 value속성 제이쿼리로 읽어오기 
					'name':$("#product_enroll_name").val() 
					},
 				type: 'post',
				
				// 서버 응답 부분
				dataType: 'json', // json형식으로 받는다 
				
				// {"bb" : "xxx", "cc" : "xxx"}s 형태로 서버 리턴결과를 받는다. 
				success: function(dto) { 
					if(dto != null) {
						// 서버 리턴값 사용
						$("#insertresult").html("<h3> 상품코드 = " + dto.code + "</h3>");
						$("#insertresult").append("<h3> 상품이름 = " + dto.name + "</h3>");
						$("#insertresult").append("<h3> 가격 = " + dto.price + "</h3>");
						$("#insertresult").append("<h3> 재고수량 = " + dto.count + "</h3>");
						$("#insertresult").append("<h3> 카테고리 = " + dto.category + "</h3>");
						$("#insertresult").append("<h3> 옵션 = " + dto.option + "</h3>");
					}
					else{
						$("#informresult").html("<h3> 상품 등록 실패</h3>");
						
					}
					
				}// success send
			}); // ajax end --%>
/* 		}); // on end
	}); // jquery end */
</script>

	<body>
	
	<%@ include file="layout/top_manager.jsp" %>
	
	<div id = "main-container">		
	<div id = "content">
		<section>
			<article>				
				<div>
				<a href="http://localhost:8080/mall/productinsert"><button type="button" class="btn btn-dark btn-sm" id = "product_insert">상품등록</button></a>
				<a href="http://localhost:8080/mall/productdelete"><button type="button" class="btn btn-dark btn-sm" id = "product_delete">상품삭제</button></a>
				<a href="http://localhost:8080/mall/filedownload"><button type="button" class="btn btn-dark btn-sm" id = "product_files">업로드한 상품 이미지</button></a>
				
					<table class="table table-hover" id = "table">
						
							<h3>상품 리스트</h3>
							<hr>
							<tr> 
								<!-- HTML 태그에 속성으로 이벤트 리스너를 등록 -->
								
								<th>상품코드</th>
								<th>상품이름</th>
								<th>가격</th>
								<th>재고수량</th>
								<th>등록일</th>
								<th>카테고리</th>
								<th>옵션</th>
								<th></th>
							</tr>
							<tbody id = "product_list">
								<!-- 등록된 상품리스트 삽입  -->
								<c:forEach items="${productlist }" var="dto">
								<tr><td>${dto.code }</td><td>${dto.name}</td><td>${dto.price}</td><td>${dto.count }</td><td>${dto.regdate}</td><td>${dto.category}</td><td>${dto.color}</td></tr>
						</c:forEach>
							</tbody>

						</table>
						
				</div>

			</article>
		
		</section>
	</div>
	</div>
	<%@ include file="layout/footer.jsp" %>

</body>
</html>