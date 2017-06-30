<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	$(function() {
        $("img").eq(0).click(function(){
               //$(this).attr("src","/web/imgmovie/2.jpg");        	
               //$(this).slideUp(1000).slideDown(1000);
               //var temp=$(this).attr("src").substring($(this).attr("src").lastIndexOf("/")+1);
               //$(this).attr("src","/web/imgmovie/"+(eval(temp.substring(0,temp.indexOf('.')))+1)+".jpg");
               $("img").attr("src",function(i,d){
            	  /* if(i==0){
            		  alert('test');
            	  } */
            	    	  return "/web/imgmovie/2.jpg";
               
               }).each(function(){
            	  this.width=500; 
            	  this.height=500; 
            	   
               });   
               
        });
	
	});
</script>
</head>
<body>
  <c:forEach var="i" begin="1" end="16"  step="1">
  
  <img alt="" src="/web/imgmovie/${i}.jpg" width="200" height="200">
  </c:forEach>

</body>
</html>