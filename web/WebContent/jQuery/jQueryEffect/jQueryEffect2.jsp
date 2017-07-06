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
            $("button#b1").click(function(){
            	var div=$("div");
            	div.animate({left:'100px'},1000);
            	div.animate({fontSize:'300em'},1000);
            	
            });
           /*  $("div").click(function(){
                   $("img").animate({
                	  width:"swing",
                	  duration:1000,
                	  complete:function(){
                		  alert("끝");
                	  }
                	   
                	   
                	   
                   });            	
            	
            });
             */
            $("div").click(function(){
        		/*  $("img").animate({
        			 opacity:"toggle"
        		 },5000);  */
        		 $("img").animate({
        			 width:["toggle","swing"],
        			 height:["toggle","swing"],
        			 duration:1000,
        			 complete:function(){
        				 alert('끝');
        			 }
        		 });
        	  }); 
            
	});
</script>
</head>
<body>

	<button id="b1">START</button>
	<div>KYT</div>
	<img alt="" src="/web/img/1.jpg" width="100" height="100">
</body>
</html>