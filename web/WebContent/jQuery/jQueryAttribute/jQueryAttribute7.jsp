<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.select{
  width: 500px;
  height : 500px;
  border : 20px;
}

</style>

<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	$(function() {
         $("img").click(function(){
        	 /* if(this.title=='a'||$(this).attr("title")=='b'){
        		 //$(this).removeAttr("width","height");
        	     
        	 } */
        	 $(this).toggleClass("select");
        	 
        	 
         });
          $("img").dblclick(function(){
        	  if(this.title=='a'||$(this).attr("title")=='b'){
        		 //$(this).removeAttr("width","height");
        	     
        	 } 
	         	// $(this).removeClass("select");
	        	 
	        	 
	         });  
          $("input#cid").click(function(){
        	   
        	      
        	  $("input[name='c_name']").val(this.checked?["1","2","3","4"]:[0,]);
        	   
        	  
        	 
        	 
        	 
        	 
          });
          /* $("input#cid").click(function(){
        	  
          }); */
          
	});
</script>
</head>
<body>
   <img title="a" src="/web/imgtemp/1.jpg" width="100" height="100">
   <img title="b" src="/web/imgtemp/2.jpg" width="100" height="100">
   <img title="c" src="/web/imgtemp/3.jpg" width="100" height="100">
   <img title="d" src="/web/imgtemp/4.jpg" width="100" height="100">
   <img title="e" src="/web/imgtemp/5.jpg" width="100" height="100">
   
   <input type="checkbox" id="cid">전체
   <input type="checkbox" name="c_name" value="1">권영택 
   <input type="checkbox" name="c_name" value="2">임명수
   <input type="checkbox" name="c_name" value="3">조은실 
   <input type="checkbox" name="c_name" value="4">이현준
   

</body>
</html>