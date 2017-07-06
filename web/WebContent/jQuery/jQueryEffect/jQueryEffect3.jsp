<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript">
function callback(){
	  setTimeout(function(){
		  $("img").show();
	  },1000);
}
$(function(){
	  $("a#button").click(function(e){
		  e.preventDefault();
		 var selectedEffect=$("select#sel").val();	
		 $("img").effect(selectedEffect,3000,callback);
	  });
});
</script>
</head>
<body>
	<div style="width: 430px; margin: 0 auto;">
		<img alt="" src="/web/img/1.jpg" width="200" height="200">
		<img alt="" src="/web/img/2.jpg" width="200" height="200">
	</div>
	<br>
	<br>
	<select name="effect" id="sel">
		 <option value="blind">Blind</option>
    <option value="bounce">Bounce</option>
    <option value="clip">Clip</option>
    <option value="drop">Drop</option>
    <option value="explode">Explode</option>
    <option value="fade">Fade</option>
    <option value="puff">Puff</option>
    <option value="pulsate">Pulsate</option>
    <option value="shake">Shake</option>
	</select>

	<a href="#" id="button">RUN Effect</a>
</body>
</html>