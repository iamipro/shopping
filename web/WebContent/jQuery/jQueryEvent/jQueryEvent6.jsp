<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(document).mousemove(function(e) {
			//$("div#dv").text("x="+e.pageX+"y="+e.pageY);        
			$("img").animate({width:e.pageX,height:e.pageY},0);

		});

		$("p").click(function() {
           alert('pClick');
           $("span").trigger("tig");
			
		});
		$("span#sp1").bind("tig",function(){
			$(this).html("<font size=6 color='blue'>홀로 아리랑 변진섭</font>")
		}); 
		
		$("pre").click(function(){
			alert('preClick');
			$("span").trigger("jinsub");
		});
		$("span#sp2").bind("jinsub",function(){
			$(this).html("<img src='/web/imgtemp/4.jpg' width=50 height=50>");
		}); 
	});
</script>
</head>
<body>

	<!-- <div id="dv"></div>

       <img src="/web/imgtemp/4.jpg" width="100" height="100"> -->

	<p>P TAG CLICK</p>
	<div>DIV TAG CLICK</div>
	<pre>PRE CLICK  </pre>
	<span id="sp1"> </span>
	<span id="sp2"> </span>
	<span id="sp3"> </span>
</body>

</html>