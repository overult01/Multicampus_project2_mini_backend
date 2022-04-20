<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
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
<link rel="stylesheet" href="${path}/resources/css/default.css">

<meta charset="UTF-8">
<title>Insert title here</title>
      <!-- 헤더 -->
      <header id="main_header">
         <div class="maintop">
            <A href="http://localhost:8080/mall/"><IMG
               src="${path}/resources/images/mblack.png" width=240; height=60;></A>

            <div class="d-flex">
               <!-- 검색 -->
               <input class="form-control me-sm-2" type="text"
                  placeholder="오늘의 아우터"
                  style="width: 300px; height: 50px; font-size: 20px;">
               <button class="btn btn-secondary my-2 my-sm-0" type="submit"
                  style="float: right;">Search</button>
               <div class="simbol">
                  <A href = "http://localhost:8080/mall/order"><img src="${path}/resources/images/cart.svg" width="50" height="50" style="float:right; margin-left : 20px;"></A>
                  <A href = "http://localhost:8080/mall/login"><img src="${path}/resources/images/person.svg" width="50" height="50" style="float:right; margin-left : 20px;" ></A>
               </div>   
            </div>
         </div>
      </header>
      <!-- 내비게이션 -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
         <div class="container-fluid">
            <a class="navbar-brand" href="#"></a>
            <button class="navbar-toggler" type="button"
               data-bs-toggle="collapse" data-bs-target="#navbarColor03"
               aria-controls="navbarColor03" aria-expanded="false"
               aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>

            <ul class="navbar-nav justify-content-center" style="width: 100%">
               <li class="nav-item"><a class="nav-link" href="http://localhost:8080/mall/">&nbsp;홈&nbsp;
               </a></li>
               <li class="nav-item"><a class="nav-link" href="http://localhost:8080/mall/productlist_top">&nbsp;상의&nbsp;</a>
               </li>
               <li class="nav-item"><a class="nav-link" href="http://localhost:8080/mall/productlist_bottom">&nbsp;하의&nbsp;</a>
               </li>
               <li class="nav-item"><a class="nav-link" href="http://localhost:8080/mall/productlist_outer">&nbsp;아우터&nbsp;</a>
               </li>
               <li class="nav-item"><a class="nav-link" href="http://localhost:8080/mall/order">&nbsp;장바구니&nbsp;</a>
               </li>
               <li class="nav-item"><a class="nav-link" href="http://localhost:8080/mall/cs">&nbsp;고객센터&nbsp;</a>
               </li>
               <li class="nav-item"><a class="nav-link" href="http://localhost:8080/mall/notice">&nbsp;공지사항&nbsp;</a>
				</li>
            </ul>
         </div>
      </nav>


</head>
<body>

</body>
</html>