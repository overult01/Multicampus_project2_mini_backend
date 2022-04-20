<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="${path }/resources/css/default.css">
<link rel="stylesheet" href="${path }/resources/css/style.css">
<script src="js/jquery-3.6.0.min.js"></script>

</head>
<body>
<%@ include file="layout/top.jsp" %>
	<!--content-->

	<div class="product_view">
		<h2>[2장 세트] 에센셜 조거 스웨트팬츠 (3color)</h2>
		<table>
			<colgroup>
			<col style="width:px;">
			</col>
			</colgroup>
			<tbody>
			<tr>
				<th>판매가</th>
				<td class="price">39,800</td>
			</tr>
			<tr>
				<th>상품코드</th>
				<td>MUL2003</td>
			</tr>
			<tr>
				<th>구매수량</th>
				<td>
					<div class="length">
						<input id="ea" value="0" type="number" min="0" class ="number num_only ea_num">
					<a href="#a">증가</a>
					<a href="#a">감소</a>
					</div>
				</td>
			</tr>
			<tr>
				<th>사용가능쿠폰</th>
				<td>0개</td>
			</tr>
			<tr>
				<th>옵션선택</th>
				<td>
					<select>
					<option>그레이</option>
					<option>진그레이</option>
					<option>블랙</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>결제금액</th>
				<td class="total"><a id="total">0원</a></td>
			</tr>
			
			</tbody>
		</table>
		<div class="img">
			<ul>
			<img src="${path }/resources/images/Item/BOTTOM/BOTTOM3.PNG" alt="" style="width: 355px; height: 355px;">
			</ul>
			<ul>
				<li class="on"><a href="#a"><img src="${path }/resources/images/Item/BOTTOM/BOTTOM3.PNG" alt=""></a></li>
				<li class="on"><a href="#a"><img src="${path }/resources/images/Item/BOTTOM/BOTTOM3.PNG" alt=""></a></li>
			</ul>
		</div>
		<div class="btns">
			<a href="#a" class="btn1">찜하기</a>	
			<a href="order" class="btn2">구매하기</a>		
		</div>
	</div>

	<!-- content end -->

<!-- Function for the total calculation -->
<!-- Jquery, Javascript, 0222 -->
<script type="text/javascript">
	function myFunc(){
		sum1 = 39800 // price
			var sum2 = parseInt($("#ea").val() || 0);

            var sum = sum1 * sum2;
            $("#total").text(sum.toString() + '원');
	}

	$(function(){
		$('input.ea_num').on('change',myFunc);
	});
</script>
<!-- Jquery, Javascript end -->
<%@ include file="layout/footer.jsp" %>
</body>
</html>