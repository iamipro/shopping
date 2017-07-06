<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
  .class1{
     color: red;
  }
  .class2{
     color: blue;
     font-size: 100px;
  }
  .class3{
     color: cyan;
  }
</style>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
  $(function(){
	  $("h1").eq(0).click(function(){
		  $('h1').addClass(function(index){
				 //alert($(this).text());
				 return 'class'+(index+1);
		  });  
	  });
	  $("h1").eq(1).click(function(){
		  $('h1').removeClass(function(index){
			  return "class"+(index+1);
		  });
		  
	  });
	  //$($("h1")[2])
	  $("h1:last").click(function(){
		  /* var cnt=3;
		  $("img").attr("border",function(index){
			  return (index+1)*5;
		  });
		  
 */		 
            $("img").attr({
            	width:function(index){
            		return (index+1)*50;
            	},
            	src:'/web/imgtemp/1.gif'
            });    
 
 
 //alert($("img").attr('width'));
	          /* $("img").attr("width",function(index){
	        	 alert(this.width); 
	        	switch (index) {
				case 0:
					return 200;
				case 1:
					return 300;
				case 2:
					return 400;
				case 3:
					return 500;

				}
	        	
	          }); */
	          
	          
	  });
	  
	  
  });
</script>
</head>
<body>
  <h1>JQuery-0</h1>
  <h1>JQuery-1</h1>
  <h1>JQuery-2</h1>
  <img src="/web/img/1.jpg" width="100" height="100">
  <img src="/web/img/2.jpg" width="100" height="100">
  <img src="/web/img/3.jpg" width="100" height="100">
  <img src="/web/img/4.jpg" width="100" height="100">  
</body>
</html>



