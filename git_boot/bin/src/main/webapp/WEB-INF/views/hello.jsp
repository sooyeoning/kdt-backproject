<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hello.jsp</title>
<script src="http://localhost:8064/js/jquery-3.6.4.min.js"></script>
<script>
$(document).ready(function(){
	$("#ajaxbtn").on('click', function(){
		$.ajax({
			url:"helloajax",
			type:"get",
			dataType: "JSON",
			success: function(server){ //result 부분에 출력
				$("#result").html(server.model);
			},
			error: function(error){
				alert(error);
			}
		});//ajax
		
	});//ajaxbtn
	
	
});//ready
</script>
</head>
<body>
<h1>hello.jsp 파일입니다.</h1>
<h1>${model }</h1>
<img src="http://localhost:8064/images/html5.jpg">

<input type=button value="ajax요청버튼" id="ajaxbtn">
ajax 결과 출력<h1 id="result"></h1>
</body>
</html>