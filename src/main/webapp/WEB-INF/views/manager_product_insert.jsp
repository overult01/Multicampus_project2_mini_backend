<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>     

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- <script type="text/javascript">
	$(document).ready(function(){
		$('#product_enroll_btn').on('click', function(e){
			alert('상품 등록이 되었습니다.');
		});
	});		
</script> -->

<body>

	<form action = "/mall/productinsert" method = post>
						<div>
							<h3>상품 등록</h3>
							<hr>
							<div class ="product_enroll_line">
								상품코드 <input type="text" id = "product_enroll_code" name="code" required style="width:100px;height:25px;" class="text_input_line" placeholder="int값"><br>
								상품이름 <input type="text" id = "product_enroll_name" name="name" required style="width:100px;height:25px;" class="text_input_line" placeholder="String 값"><br>
								상품가격 <input type="text" id = "product_enroll_price" name="price" required style="width:100px;height:25px;" class="text_input_line"><br>
								재고수량 <input type="number" id = "product_enroll_cnt" name="count" value = "100" min="1" max="1000" style="width:100px;height:25px;" class="text_input_line"><br>
								카테고리 <select id="product_enroll_category" name="category" style="width:100px;height:25px;" class="text_input_line">
									<option value="상의">상의</option>
									<option value="하의">하의</option>
									<option value="아우터">아우터</option>
								</select><br>
								옵션색상 <input type="text" id = "product_enroll_color" name="color" required style="width:100px;height:25px;" class="text_input_line" placeholder="색상 String"><br>
								<br>
								<a href="http://localhost:8080/mall/fileupload"><button type="button" class="btn btn-dark btn-sm" id = "product_update">상품사진 업로드</button></a> <br>	
					
							</div>
 							<br>
 							<button type=submit class="btn btn-dark btn-sm"  id = "product_enroll_btn">상품등록</button>
						</div>
	</form>
	<hr>
						
</body>
</html>