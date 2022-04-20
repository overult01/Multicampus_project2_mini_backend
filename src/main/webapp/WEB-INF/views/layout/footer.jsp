<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous">
</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous">
</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">

</script>



	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->

	<footer class="bd-footer py-5 mt-5 bg-light">
		<div class="container py-5">
			<div class="row">
				<div class="col-lg-3 mb-3">
					<a
						class="d-inline-flex align-items-center mb-2 link-dark text-decoration-none"
						href="/" aria-label="Bootstrap"> <span class="fs-5"><B>멀티몰</B></span>
					</a>
					<ul class="list-unstyled small text-muted">
						<li class="mb-2">메인 페이지 만드는데 죽을 것 같습니다 흑흑</li>
						<li class="mb-2">살려주세요 저는 아무 잘못도 안했어요 ㅠㅠ</li>
						<li class="mb-2">멀티캠퍼스 브라우니 감사합니다 잘 먹고 있워용</li>
					</ul>
				</div>
				<div class="col-6 col-lg-4 offset-lg-1 mb-3">
					<h3>
						<b>고객센터</b>
					</h3>
					<h5>
						<b>010-8525-4261</b>
					</h5>
					<br>
					<ul class="list-unstyled text-muted">
						<li class="mb-2"><b>영업시간</b> AM 09:10 ~ PM 17:50 (주말 및 공휴일
							휴무)</li>
						<li class="mb-2"><b>점심시간</b> PM 11:50 ~ PM 13:00</li>
						<li class="mb-2"><br></li>
						<li class="mb-2"><a href="#"><button type="button"
									class="btn btn-dark">입점문의</button></a> <a href="#"><button
									type="button" class="btn btn-dark">셀러어드민</button></a></li>

					</ul>
				</div>

				<div class="col-6 col-lg-4 mb-3">
					<h5>6조 구성</h5>
					<ul class="list-unstyled small text-muted">
						<li class="mb-2">메인 페이지_최은택</li>
						<li class="mb-2">고객센터/장바구니/구매 페이지_김정년</li>
						<li class="mb-2">관리자 상품 등록/관리자 고객 센터 관리_양정민</li>
						<li class="mb-2">상품 페이지/상품 목록 페이지_이예은</li>
						<li class="mb-2">로그인/회원 가입_이윤석</li>
					</ul>
				</div>
			</div>
		</div>
		<div class=topBtn onclick="window.scrollTo(0,0);"
			style="float: right; margin-right: 100px; margin-top: 70px; margin-bottom: 50px; height: 3%; width: 3%;">
			<img src="${path}/resources/images/up.svg" height="200%" width="200%"><b>&nbsp;TOP</b>
		</div>
	</footer>
</body>
</html>