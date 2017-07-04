<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<style type="text/css">

*{
margin : 0px;
padding : 0px;

}
body{
text-align: center;

}
div{
text-align: center;
width:500px;
margin: 20px auto;

}
div p{
 background : cyan;

}
h3{
 background: navy;
}
a{
color : white;
}
</style>

<script type="text/javascript">
$(function(){
	  $("p").hide();
		  $("h3").click(function(e){
			 $("#second p").slideUp();
			 $(this).next().slideDown();
		  });
	  });
</script>
</head>
<body>
  <h1>SHOW/HIDE</h1>
   <div id="first">
      <h1>Ex1</h1>
      <h3><a href="">JavaProgram</a> </h3>
      <p>OOP(캡슐화,은닉화,재사용성)</p>
      
      <h3><a href="">LIST1</a> </h3>
      <p>캡슐화 VS 은닉화</p>      
      <h3><a href="">LIST2</a> </h3>
      <p>ARRAY,IO,NETWORK,SWING</p>      
      <h3><a href="">LIST3</a> </h3>
      <p>FILE,VECTOR,COLLECTION</p>      
   </div>
   <div id="second">
     <h1>Ex2</h1>
      <h3><a href="">WebProgram</a> </h3>
      <p>JSP,XML,SPRING,STRUTS</p>
      
      <h3><a href="">LIST1</a> </h3>
      <p>JSP AND SERVLET</p>
            
      <h3><a href="">LIST2</a> </h3>
      <p>SPRING[DI,AOP,MVC,ORM,TRANSACTION]</p>
      
      <h3><a href="">LIST3</a> </h3>
      <p>STRUTS[ACTIONSERVLET,MVC,WILDMAPPING,ACTIONINVOKE]</p>
      
            
     
   </div>
</body>
</html>