<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html>
<head>
   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1"/>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"></script>
	<%-- <link rel="stylesheet" href="css/cs.css"> --%>
	<link href="${path}/resources/css/cs.css" rel="stylesheet"/>
	
    <title>멀티몰 - 1등 의류몰</title>
    <style>

    </style>
<script>
	$(document).ready(function() {

		var flag = false; //answer 부분의 display 유무
		$('.question').on('click', function() {
			if (flag == true) {
				$(this).children('.icon').text('▼');
				$(this).children('.answer').css('display', 'block');				
				flag = false;
			} else {
				$(this).children('.icon').text('▶');
				$(this).children('.answer').css('display', 'none');
				flag = true;
			}
		});
	});
</script>
</head>
<body>
<!-- 페이지 전체 -->
<div id="page_wrapper">
		<%@ include file="layout/top.jsp" %>
	<!-- 본문 -->
	<div id="content">
		<section id="main_section">
			<h1>고객센터</h1>
			<hr>
 			<div class="cs_nav">
			<span class="cs_nav_item"><a href="http://localhost:8080/mall/notice">Notice 공지사항</a></span>
			<span class="cs_nav_item"><a href="inquire">1:1 문의하기</a></span>
			<span class="cs_nav_item"><b>고객센터 ☎  010-8525-4261</b><br>
			<b>영업시간</b> AM 09:10 ~ PM 17:50 (주말 및 공휴일 휴무)<br>
			<b>점심시간</b> PM 11:50 ~ PM 13:00</span>
			</div> 

			<hr>
			<h3>FAQ 자주 묻는 질문</h3>
			<hr>
			<div class=question_list>
			<h4>취소/환불/교환 관련</h4>
			<div class="question">
				<span class="icon">▶</span>환불/교환 신청은 어떻게 하나요?
				<p class="answer">- 교환을 원하실 경우 교환 요청 - 상품 문의 게시판에 문의글 작성 해주시면
					영업입 기준 24시간 이내에 답변을 받아 보실 수 있습니다.
			</div>
			<div class="question">
				<span class="icon">▶</span>환불은 언제 되나요?
				<p class="answer">결제수단 별 환불 소요기간은 다음과 같습니다<br><br>
					- 계좌를 통한 환급 : 환불 승인 또는 주문 취소 처리 완료일로부터 영업일 기준 1~2일<br>
					- 카드 취소를 통한 환급 : 환불 승인 또는 주문 취소 처리 완료일로부터 영업일 기준 1~4일 (카드사별 상이)<br>
					- 핸드폰 결제 취소를 통한 환급 : 핸드폰 결제 즉시 취소(전월 결제 시 계좌 환급 진행되며 환급 기간은 계좌를 통한 환급과 동일)<br>
					- 카카오페이/네이버페이/토스 : 환불승인 또는 주문취소 처리 완료일로부터 영업일 기준 1~3일 소요
			</div>
			<div class="question">
				<span class="icon">▶</span>교환/반품 시 택배비가 발생하나요?
				<p class="answer">반품 사유에 따라 배송비 지불 여부가 결정되며, 반품 시 스토어가 부담한 [초기 배송비+반품/교환] 왕복 배송비가 발생됩니다.<br>
					1. 교환/반품 비용이 무료인 경우<br>
					&nbsp;- 수령한 상품이 파손/불량이거나 상품이 잘못 배송된 경우에 해당 됩니다.<br>
					2. 교환/반품 비용이 고객 부담인 경우<br>
					&nbsp;- 고객 변심으로 인한 경우 비용이 발생됩니다.
			</div>
			<div class="question">
				<span class="icon">▶</span>환불요청만 하면 택배 수거하러 오시나요?
				<p class="answer">환불요청 접수 시 택배 회수 시스템을 제공하지 않습니다.
			</div>
			<hr>
			<h4>주문/결제 관련</h4>
			<div class="question">
				<span class="icon">▶</span>현금영수증 발급은 어떻게 하나요?
				<p class="answer">현금 영수증은 결제하기 단계에서 신청 가능합니다. <br>
							[현금 영수증 신청 방법]<br>
						1) 결제하기 단계에서 현금 영수증 발행 가능한 결제수단 선택 ( 무통장입금 )<br>
						2) [현금 영수증 발행 여부]에서 소득공제용, 지출증빙용 선택<br>
						3) 번호 입력 후 주문<br>
						※ 주문 후 신청을 원할 경우 [구매자 성함/연락처/상품명/상품 금액/이메일]과 함께 하이버 고객센터
			</div>
			<div class="question">
				<span class="icon">▶</span>주문 후 결제 수단을 변경할 수 있나요?
						<p class="answer"> 주문 완료 후 결제 수단 변경은 불가합니다.<br>
						결제 수단 변경을 원하실 경우 상품 주문 취소 후 재주문 진행 바랍니다.
			</div>
			<hr>
			<h4>배송 관련</h4>
			<div class="question">
				<span class="icon">▶</span>배송은 어떻게 진행 되나요?
						<p class="answer">- 월~금요일 : 결제완료 후 1~5 영업일 이내로 배송 진행이 되고 있습니다.<br>
							- 토요일 : 입점된 스토어에 따라 토요일 출고 여부가 다르며 대부분의 업체는 토요일 출고를 진행하지 않습니다. <br>
							- 일요일 및 공휴일 : 일요일 및 공휴일은 택배회사의 업무가 중단되어 다음 영업일에 확인 후 출고됩니다. <br>
							다만, 주문량에 따라 1~2일 정도 출고가 지연될 수 있으며 추석, 설날과 같은 연휴 이후에는 주문량 및 택배사 배송 물량이
							많아 발송이 순차적으로 진행되거나 배송 이동 중 지연이 발생할 수 있습니다. <br>
							- 상품 출고 후 국내배송 기준 2-4영업일 정도 배송기간이 소요되며, 택배사 내부사정에 따라 해당 기간은 변동될 수 있습니다.
			</div>
			<div class="question">
				<span class="icon">▶</span>해외 거주자 입니다. 해외 배송이 가능한가요?
				<p class="answer">죄송합니다.<br>현재 저희는 해외 배송이 불가합니다. 추후 서비스 제공을 위해 노력하겠습니다.
			</div>
			</div> <!-- .question_list end -->
		</section>
	</div><!-- content end -->
	
<%@ include file="layout/footer.jsp" %>

</div> <!-- page_wrapper end -->
</body>
</html>