<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	$(function() {
          //$($("p")[0]).hide(1000);
		  //$($("p").get(0)).hide(1000);
		  //$("p").eq(0).hide(1000);
		 
		  /*  for(var i=0;i<$("p").length;i++){
			   alert($("p").eq(i).text());
		   } */
		 /*  $("p").each(function(i,dom){
			 alert($(this).text()); 
		  }); */
		 	$.each($("p"),function(i,dom){
				alert($(dom).text());
				alert(i);
				alert(dom);
			});  
		  
		   
		   
		   
	});
</script>
</head>
<body>
   <p>JAVA</p>
     <div>
      <p>ORACLE</p>
     </div>
   <p>JSP</p>  
   <p>XML</p>  
   <p>SPRING</p>  
</body>
</html>