<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="path" value="${pageContext.request.contextPath}"/>
   
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   

   <link href="${path}/resources/css/notice.css" rel="stylesheet"/>
 
   <script> function btn(){ alert('등록이 완료되었습니다.'); }
   

   </script>
   
   
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	<form action="http://localhost:8080/mall/noticeinsert" method=post>
		<div>
			<h3 style="text-align: center;">공지사항 등록</h3>
			<hr>
			<div class="product_enroll_line" style="text-align: center;">
				<br>
				
				<select id="category" name="category" style="width:100px;height:25px;" class="text_input_line">
						<option value="category">카테고리</option>
						<option value="notice">공지사항</option>
						<option value="event">이벤트</option></select>
				
				<input type="text" id="title" name="title" required
					style="width: 400px; height: 25px;" class="text_input_line"
					placeholder="공지 제목을 입력해주세요"><br><br>
			
				
				<textarea id="content" name="content" required
					style="width: 500px; height: 500px;" class="text_input_line"
					placeholder="공지 내용을 입력해주세요"></textarea><br>
				

			</div>

			<br>
			<!-- <div style="text-align: center;"> -->
			
			<button type=submit class="btn btn-dark" onclick="javascript:btn()">공지 등록</button> <br>
			<A href="http://localhost:8080/mall/notice"><button type="button" class="btn btn-dark btn-sm" id = "inquire">이동</button></A>
			
			<!-- asd -->
		<!--  </div> -->
		</div>
		
	</form>
	<hr>


<!--  #uid, #pw, #login_btn1{
  width: 100%;
  padding: 10px 20px;
  margin: 5px 0;
  box-sizing: border-box;
}  -->

</body>
</html>

