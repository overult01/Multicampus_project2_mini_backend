<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="path" value="${pageContext.request.contextPath}"/>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="user-scalable=no,width=device-width,initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
<%-- <link rel="stylesheet" href="css\default.css"> --%>
<link href="${path}/resources/css/default.css" rel="stylesheet"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멀티몰 - 1등 의류몰</title>
</head>
<body>
	<!-- 페이지 전체 -->
	<div id="page_wrapper">
<%@ include file="layout/top.jsp" %>
	<div id="carouselExampleInterval" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="5000">
				<img src="${path}/resources/images/Banner_01.jpg" class="d-block w-5000" width=100%;
					height=50%;>
			</div>
			<div class="carousel-item" data-bs-interval="5000">
				<img src="${path}/resources/images/Banner_02.jpg" class="d-block w-5000" width=100%;
					height=50%;>
			</div>
			<div class="carousel-item">
				<img src="${path}/resources/images/Banner_03.jpg" class="d-block w-5000" width=100%;
					height=50%;>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<br>





	<h1 id=todayranking>
		<b>TODAY 랭킹</b>
	</h1>
	

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"></a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
			<li class="nav-item"><a class="nav-link disabled" href="#"
				tabindex="-1" aria-disabled="true">Disabled</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>


	<div class="container">
		<div class="row">
			<div class="col-3">
				<div class="card">
					<img src="${path}/resources/images/today01.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h6 class="card-title">앨빈클로</h6>
						<p class="card-text">[2월27일 예약발송]앨빈클로 MA-1 ...</p>
						<h4>44%</h4>
						<h3>72,700</h3>
						<a href="product_outer_1" class="btn btn-outline-dark">상세보기</a>
						<a href="order" class="btn btn-dark">구매하기</a>
					</div>
				</div>
			</div>
			
		

			<div class="col-3">
				<div class="card">
					<img src="${path}/resources/images/today02.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h6 class="card-title">엑스컨테이너</h6>
						<p class="card-text">EXC 와이드데님팬츠 (6컬러)</p>
						<h4>　</h4>
						<h3>29,000</h3>
						<a href="product_bottom_2" class="btn btn-outline-dark">상세보기</a>
						<a href="order" class="btn btn-dark">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-3">
				<div class="card">
					<img src="${path}/resources/images/today03.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h6 class="card-title">액스컨테이너</h6>
						<p class="card-text">EXC 2WAY 후드 집업 (멜란지그레이)</p>
						<h4>　</h4>
						<h3>35,000</h3>
						<a href="product_outer_3" class="btn btn-outline-dark">상세보기</a>
						<a href="order" class="btn btn-dark">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-3">
				<div class="card">
					<img src="${path}/resources/images/today04.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h6 class="card-title">유앤엘씨</h6>
						<p class="card-text">[1+1] CREW NECK LOOSE ...</p>
						<h4>51%</h4>
						<h3>34,300</h3>
						<a href="product_top_2" class="btn btn-outline-dark">상세보기</a>
						<a href="order" class="btn btn-dark">구매하기</a>
					</div>
				</div>
			</div>
		</div>
		<br>

		<div class="row">
			<div class="col-3">
				<div class="card">
					<img src="${path}/resources/images/today05.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h6 class="card-title">피아네르</h6>
						<p class="card-text">[2장 세트] 에센셜 조거 스웨트팬츠 ...</p>
						<h4>70%</h4>
						<h3>39,800</h3>
						<a href="product_bottom_2" class="btn btn-outline-dark">상세보기</a>
						<a href="order" class="btn btn-dark">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-3">
				<div class="card">
					<img src="${path}/resources/images/today06.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h6 class="card-title">뉴해빗</h6>
						<p class="card-text">[1+1] 뉴해빗 - 21FW MTM_BEST...</p>
						<h4>71%</h4>
						<h3>36,600</h3>
						<a href="product_top_1" class="btn btn-outline-dark">상세보기</a>
						<a href="order" class="btn btn-dark">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-3">
				<div class="card">
					<img src="${path}/resources/images/Item/BOTTOM/BOTTOM1.jpg" class="card-img-top"
						alt="...">
					<div class="card-body">
						<h6 class="card-title">멀티몰</h6>
						<p class="card-text">라이트 쿨 와이드 슬랙스(3color)</p>
						<h4>70%</h4>
						<h3>39,800</h3>
						<a href="product_bottom_1" class="btn btn-outline-dark">상세보기</a>
						<a href="order" class="btn btn-dark">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-3">
				<div class="card">
					<img src="${path}/resources/images/Item/OUTER/OUTER2.PNG" class="card-img-top"
						alt="...">
					<div class="card-body">
						<h6 class="card-title">멀티몰</h6>
						<p class="card-text">2-WAY 블레이저 블랙_HL21COB111</p>
						<h4>22%</h4>
						<h3>29,000</h3>
						<a href="product_outer_2" class="btn btn-outline-dark">상세보기</a>
						<a href="order" class="btn btn-dark">구매하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>

<%@ include file="layout/footer.jsp" %>
</body>
</html>