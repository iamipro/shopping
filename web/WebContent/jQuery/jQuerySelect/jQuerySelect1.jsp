<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="http://code.jquery.com/jquery-2.2.4.min.js"
	integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	/* $(document).ready(function(){
	 alert('test');
	 });
	 *//* 
	jQuery(document).ready(function(){
		alert('test');
	}); */
	/* 
	 $(function(){
	 alert('test1'); 
	 });
	 $(function(){
	 alert('test2'); 
	 }); */
/* 	$($("p")[0]).click(function(){
	  alert($(this))	
	}); */
	$(function(){
	/* 
		($("p").click(function(){
			//alert($(this).html());
			alert('test');
		}); */
	/* 	$("p").eq(0).click(function(){
			alert('test');
		}); */
	   $("p").click(function(){
		  $(this).html('hi'); 
	   });	
		
	});
	
</script>

<style type="text/css">
</style>
<title>Insert title here</title>
<p>p1</p>
<p>p2</p>
<p>p3</p>



</head>
<body>

</body>
</html>