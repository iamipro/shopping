<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<style type="text/css">
.di{
text-align: center;
color: navy;
border : 1px solid lightgray;
}

</style>
<script type="text/javascript">
	$(function() {
           $("div").click(function(){
        	  var header = $('h1',this).text();
        	  var process= $('p',this).text();
        	/*   alert(header+"\n"+process); */
        	  
           });
           $("h1").click(function(){
        	  $(this).html(function(index,html){
        		  return html+'GO';
        	  }); 
           });
          setInterval(function(){
        	 $("h1").last().trigger('click'); 
          },100);    
          setInterval(function(){
         	 $("h1").first().trigger('click'); 
           },100); 
 	});
</script>
</head>
<body>
	<!-- <div class="di">
		<h1>Header 1</h1>
		<p>Process 1</p>
   </div>
    <div class="di">
		<h1>Header 2</h1>
		<p>Process 2</p>
   </div>
    <div class="di">
		<h1>Header 3</h1>
		<p>Process 3</p>
   </div> -->
  
   <h1>TRIGGER:</h1> 
  <h1>TRIGGER:</h1> </body>
</html>