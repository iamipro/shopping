<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
/* 	$(function() {
         $("button#b1").click(function(){
        	$("<img src='/web/imgtemp/4.jpg' width=100 height=100>").appendTo("#sp1"); 
         });
	}); */
	
	$("img").click(function(){
		$("img").each(function(){
			$(this).src='/web/imgtemp/4.jpg';
		
		 alert($(this).get());
		});
		
	});
	
</script>
</head>
<body>
  <button id="b1">Click1</button>
  <button id="b2">Click2</button>
  <button id="b3">Click3</button>
  <button id="b4">Click4</button>

  <span id="sp1">SP1</span>
  <span id="sp2">SP2</span>
  <span id="sp3">SP3</span>

   <img src="/web/imgtemp/1.jpg" width="200" height="300" border="10">
   <img src="/web/imgtemp/2.jpg" width="200" height="300" border="10">
   <img src="/web/imgtemp/3.jpg" width="200" height="300" border="10">
   <img src="/web/imgtemp/4.jpg" width="200" height="300" border="10">
   <img src="/web/imgtemp/5.jpg" width="200" height="300" border="10">
   <img src="/web/imgtemp/6.jpg" width="200" height="300" border="10">
   <img src="/web/imgtemp/7.jpg" width="200" height="300" border="10">

</body>
</html>