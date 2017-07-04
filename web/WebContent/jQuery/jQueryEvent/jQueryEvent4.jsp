<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	$(function() {
          var canvas = document.getElementById('cv');
          var context=canvas.getContext('2d');
          $(canvas).mousemove(function(event){
     		 var position=$(this).offset();
     		 var x = event.pageX-position.left;
     		 var y = event.pageY-position.top;
     		 context.beginPath();
     		 context.moveTo(x,y);
     		 
     		 
     		 console.log(position+' x='+x+' y='+y);
     	  });
          
          /* $(canvas).toggle(function(event){
        	  var position = $(this).offset();
        	  alert(position);
        	  alert('hi');
          },function(event){
        	  
          }); */
	});
</script>
</head>
<body>
 <canvas id="cv" width="500" height="300">
 
 
 </canvas>


</body>
</html>