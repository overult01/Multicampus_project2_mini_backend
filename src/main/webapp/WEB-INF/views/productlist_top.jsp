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
<link rel="stylesheet" href="css\default.css">
<link rel="stylesheet" href="css\style.css">
<script src="js/jquery-3.6.0.min.js"></script>

</head>
<body>
<%@ include file="layout/top.jsp" %>


<div class="collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav mr-auto">
<li class="nav-item active">
<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
</li>
<li class="nav-item">
<a class="nav-link" href="#">Link</a>
</li>
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown
</a>
<div class="dropdown-menu" aria-labelledby="navbarDropdown">
<a class="dropdown-item" href="#">Action</a>
<a class="dropdown-item" href="#">Another action</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item" href="#">Something else here</a>
</div>
</li>
<li class="nav-item">
<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
</li>
</ul>
<form class="form-inline my-2 my-lg-0">
<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
</form>
</div>


<div class="container">
  <div class="row">
  <div class="col-3">
  <div class="card">
  <a href="product_top_1">
  <img src="${path}/resources/images/Item/TOP/TOP1.PNG" class="card-img-top" alt="..."></a>
  <div class="card-body">
  <h6 class="card-title">뉴해빗</h6>
  <p class="card-text">[1+1] 뉴해빗 - 21FW MTM_BEST ...</p>
  <h4>71%</h4><h3>36,600</h3>
  <a href="product_top_1" class="btn-primary">상세보기</a> <a href="order" class="btn-primary">구매하기</a>
  </div> </div> </div>

  
  <div class="col-3">
  <div class="card">
  <a href="product_top_2">
  <img src="${path}/resources/images/Item/TOP/TOP2.PNG" class="card-img-top" alt="..."></a>
  <div class="card-body">
  <h6 class="card-title">고고싱</h6>
  <p class="card-text">[1+1] CREW NECK LOOSE FIT ...</p>
  <h4>51%</h4><h3>34,300</h3>
  <a href="product_top_2" class="btn-primary">상세보기</a> <a href="order" class="btn-primary">구매하기</a>
  </div> </div> </div> 
  
  
  <div class="col-3">
  <div class="card">
  <a href="product_top_3">
  <img src="${path}/resources/images/Item/TOP/TOP3.PNG" class="card-img-top" alt="..."></a>
  <div class="card-body">
  <h6 class="card-title">무신사</h6>
  <p class="card-text">[단독상품]Disc Jockey Sweatshirt ...</p>
  <h4>70%</h4><h3>39,800</h3>
  <a href="product_top_3" class="btn-primary">상세보기</a> <a href="order" class="btn-primary">구매하기</a>
  </div> </div> </div>
  
  </div> </div> <br>
  <%@ include file="layout/footer.jsp" %>
</body>
</html>