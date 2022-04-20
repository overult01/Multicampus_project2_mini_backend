<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1"/>
<!-- Bootstrap CSS -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
<script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"></script>

<%--<link rel="stylesheet" href="css/new_inquiry.css"> --%>
<link href="${path}/resources/css/new_inquiry.css" rel="stylesheet"/>

<title>멀티몰 - 1등 의류몰</title>
<script>
$(document).ready( function(){
 $('#send').on('click', function(){

 	var inquire = Object();
	inquire.content = $("#context").val();
 	inquire.title = $("#title").val();
// 	inquire.content = textarea.val();
 	inquire.code = '3';
 	inquire.category = $("#category option:selected").text();
// 	{'title':$("#title").val(), 'category':$("#category").val() }

	$.ajax({
		url: '<%=request.getContextPath()%>/inquire',
		data: inquire,
		type : 'post', 
		dataType: 'json',
		success : function(a){ //ajax응답
			//a 객체- json
			
			JSON.stringify(a) //스트링 변환
			alert(JSON.stringify(a)); 
			window.close();
		}
	});//ajax end
	
// 	window.opener.
 	//window.close();
	//window.opener.setResList(dd);	
    
 });
 
 $('#cancel').on('click', function(){
    window.close();
//     var textarea = document.getElementById('#context');
//     var context = textarea.val();
//     console.log(context);
 });
   
});
</script>
</head>
<body>
   <!-- 페이지 전체 -->
   <div id="page_wrapper">
<!-- 본문 -->
<div id="content">
   
   <h1>1:1 문의</h1>

<!-- <form action="inquire" action="post">  -->
<table>
   <tr>
      <td><label for=name>이름</label></td>
      <td><span id=name>김멀티</span></td> <!-- 로그인 정보에서 받아오기 -->
   </tr>
   <tr>
      <td><label for=phone>휴대폰 번호</label></td>
      <td><span id=phone>010-1111-1111</span></td> <!-- 로그인 정보에서 받아오기 -->
   </tr>
   <tr>
      <td><label for=list>문의 분류</label></td>
      <td><select id=category>
            <option>주문 결제</option>
            <option>배송</option>
            <option>주문 취소</option>
            <option>교환/환불</option>
            <option>상품관련</option>
         </select></td>
   </tr>
   <tr>
      <td><label for=title>제목</label></td>
      <td><input id="title" type=text placeholder="문의의 종류를 간략히 적어주세요."></td>
   </tr>
   <tr>
      <td><label for=order_num>주문번호</label></td>
      <td><input id="order_num" type=text placeholder="주문번호를 입력해주시면 빠른 답변에 도움이됩니다."></td>
   </tr>
   <tr>
      <td><label for=context>문의 내용</label></td>
      <td><textarea id=context cols=30 rows=20 placeholder="문의하실 내용을 적어주세요.">${result }</textarea></td>
   </tr>
   <tr>
      <td>파일 첨부</td>
      <td><div class="mb-3">
           <label for="formFileMultiple" class="form-label"></label>
           <input class="form-control" type="file" id="formFileMultiple" multiple>
      </div></td>
   </tr>
</table>
<form action="inquire" method="post">
<div id=buttons class="text-center">

<input type=submit id=write class="btn btn-dark" value="문의하기">
<button id="cancel" class="btn btn-dark">취소하기</button>

<!-- <button id="send" class="btn btn-dark">문의하기</button> -->
</div>
</form>
<%-- <% var regdate = new Date() %> --%>
<%-- <input type="hidden" id="regdate" value="<%=regdate %>"> --%>
<!-- </form>  -->

</div><!-- content end -->
</div><!-- page_wrapper end -->
</body>
</html>