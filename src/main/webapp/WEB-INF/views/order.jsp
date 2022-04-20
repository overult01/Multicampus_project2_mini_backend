<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="path" value="${pageContext.request.contextPath}"/>  
  


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <!-- Required meta tags -->
    <meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1"/>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"></script>
      
   <script> function btn(){ alert('결제가 완료되었습니다.'); }
 
   </script>
      
 <%--    <link rel="stylesheet" href="css\order.css"> --%>
    <link href="${path}/resources/css/order.css" rel="stylesheet"/>
    <!-- <link rel="stylesheet" href="css\default.css"> -->
    

    <title>멀티몰 - 1등 의류몰</title>

<script>
	$(document).ready(function() {
		//주문자 정보 - 배송 정보 동일한지
		$('#info_same').on('click', function(){
			if($(this).is(':checked')){
				$('#recipient').prop('disabled', 'disabled');
				$('#phone').prop('disabled', 'disabled');
				$('#recipient').val('김멀티'); //로그인 정보
				$('#phone').val('010-1111-1111'); //로그인 정보
			}
			else{
				$('#recipient').removeAttr('disabled');
				$('#phone').removeAttr('disabled');
				$('#recipient').val('');
				$('#phone').val('');
			}
		});
		
		//배송 메시지 입력 글자수 체크
		$('#memo').on('keyup', function() {
			var str_len = $(this).val().length;//string

 			$('#memo_cnt').html("(" + str_len + " / 50)");
 			if (str_len > 50) {
 				$(this).val($(this).val().substring(0, 50));
 				$('#test_cnt').html("(50 / 50)");
 				$('textarea').attr('readonly', 'readonly'); 
 			}
   		});


		//상품 선택
		var price; //개당 상품 가격
		var total = 30000; //상품 총합 가격
		$('#product_pay').html(total);
		$('#products input:checkbox').on('click', function(event) {
			var cnt = $('#products tbody tr').length;
			if(event.target.id == "all"){
				if($(this).is(':checked')){
					for(var i = 0; i < cnt; i++){
						$('#products tbody input:checkbox:eq(' + i + ')').prop('checked', true);
						total = 30000;
					}
				}
				else{
					for(var i = 0; i < cnt; i++){
						$('#products tbody input:checkbox:eq(' + i + ')').prop('checked', false);
						total = 0;
					}
				}
					
			}
			else{
				$('#all').prop('checked', false);
			}				
			$('#product_pay').html(total);
		});
		
		
		//총 가격 변경
		$('#products input:checkbox').on('change', function() {
			/* var price, total;
			var cnt = $('#products tbody tr').length;
			if($('#all').is(':checked')){
				for(var i = 0; i < cnt; i++){
					price = $('#products tbody tr:eq(' + i + ')>td:eq(3)').html();	
					$('#product_pay').append(price);
					total += parseInt(price);
									
				}
			} *//* 
			for(var i = 0; i < cnt; i++){
			//$('#product_pay').html('변화가있다');
				if($('#products tbody input:checkbox:eq(' + i + ')').is(':checked')){
					price = $('#products tbody tr:eq(' + i + ')>td:eq(3)').text();	
					
					$('#product_pay').html(i);
					total += parseInt(price);
				}				
			} */
			
			$('#product_pay').html(total);
		});
		
		//결제하기 버튼 클릭 - 필수 입력 값 체크
		$('#pay').on('click', function() {
			if($('#recipient').val() == ""){
				$('#recipient').focus();
			}
			else if($('#phone').val() == null){
				$('#phone').focus();
			}
			else if($('#address').val() == null){
				$('#address').focus();
			}
		});
		
		//총금액 계산 코드
		function myFunc(){
				
				var sum1 = parseInt($("#ep").val() || 0); // price
				var sum2 = parseInt($("#ea").val() || 0);

	            var sum = sum1 * sum2 + 2500;
	            $("#total").text(sum.toString() + '원');
		}

		$(function(){
			$('input.ea_num').on('change',myFunc);
		});
	});
</script>
</head>
<body>
<%@ include file="layout/top.jsp" %>


		<!-- 본문 -->
		<div id="content">
				<section id="main_section">
				<h1>주문하기</h1>
				<hr>
				<br>
				<div id=user_info> <!-- 로그인 정보 받아오기 -->
				<h4 style="display:inline"><b>주문자 정보</b></h4>
				<span style="color: red; float:right">필수입력 ＊</span>
				<hr>
					<table>
						<tr>
							<td>주문자 이름</td>
							<td>김멀티</td>
						</tr>
						<tr>
							<td>연락처</td>
							<td>010-1111-1111</td>
						</tr>
						<tr>
							<td>주소</td>
							<td>주문하는 사람 주소 (로그인 정보 받아오기)</td>
						</tr>
					</table>
				</div>
				<br><br>
				<div id=recipient_info>
				<h4 style="display:inline"><b>배송 정보</b></h4>
				<span style="float: right"><input type=checkbox id=info_same name=info> 주문자와 동일합니다. <span style="color: red">필수입력 ＊</span>
				</span>
				<hr>
				<form>
					<table>
						<tr>
							<td><label for=recipient>받으시는 분 이름<span style="color: red">＊</span></label></td>
							<td><input id="recipient" type=text></td>
						</tr>
						<tr>
							<td><label for=phone>연락처</label><span style="color: red">＊</span></td>
							<td><input id=phone type=text></td>
						</tr>
						<tr>
							<td><label for=address_detail>주소</label><span style="color: red">＊</span></td>
							<td><input id="postcode" type=text disabled="disabled"> <input id=address_search type=button value="우편번호 찾기"><br>
								<input id="address" type=text disabled="disabled"><br>
								<input id="address_detail" type=text size=50 placeholder="상세 주소를 입력해 주세요.">
							</td>
						</tr>
						<tr>
							<td><label for=memo>배송시 요청사항</label></td>
							<td><textarea id="memo" cols="52" rows="5" style="resize:none" placeholder="택배 기사님께 전달하는 내용입니다.(50자 이내로 입력하세요)"></textarea>
							<div id="memo_cnt">(0 / 50)</div></td>
						</tr>
						
					</table>
					</form>
				</div>
				<hr>
				<br>
				<br>
				<div id=order_info>
				<h4><b>상품 정보</b></h4>
				<table id=products class="table table-hover">
						<thead>
							<tr>
								<th><input type="checkbox" name=product id=all value = all checked="checked"></th>
								<th>상품정보</th>
								<th>금액</th>
								<th>수량</th>
								<th>배송료</th>
								<th>총주문금액</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${orderlist }" var="dto">
									<tr><td><input type="checkbox" name=product id=product1  value=1 checked="checked"></td>
									<td>${dto.name}</td>
									<td><input id="ep" value="${dto.price}" readonly="readonly"></td>
									<td><input id="ea" type="number" name="totalcount" value="${dto.totalcount}" min=1 max=10 class ="number num_only ea_num"></td>
									<td>2500원</td>
									<td class="total"><a id="total">${dto.totalprice}원</a>
									</td>
									
									</tr>
							</c:forEach>
							
						</tbody>
				</table>
					<div id=order_pay><input id=pay type=button class="btn btn-dark" value="결제하기" onclick="javascript:btn()"></div>
				
			</section>
		</div>
		<!-- content end -->
		
<%@ include file="layout/footer.jsp" %>
	<!-- page_wrapper end -->
</body>
</html>