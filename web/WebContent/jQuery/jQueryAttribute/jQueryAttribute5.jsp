<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
$(function(){
  $("input").click(function(){
	  $("input").attr("value",function(i,dom){
		 return i*1*5; 
	  }).each(function(ii,dd){
		  //alert("ii="+ii);
	  });
		 $(this).hide(1000).show(1000).css('color','red'); 
	  });
	  
	 
});  
/* $(function(){
    	
    	 $("input").click(function(){
        	 $("input").attr("value",function(i,dom){
             	return hi;
             });
        	
        }); 	 
    	 
    	 
    	 
     }); */
    
   
  
	/* $(function() {
            $("input").attr("value",function(i,dom){
            	console.log(i);
            });
	}); */
</script>
</head>
<body>
    <c:forEach var="i" begin="1" end="100" step="1">
    
    <input type="button" value="${i}">
    </c:forEach>
    

</body>
</html>