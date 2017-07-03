<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
function showThis(obj){
	alert(obj.value);
}
function ajaxProcess(url,type,dataType,data){
	$.ajax({
  	  url:url,
  	  type:type,
  	  dataType:dataType,
  	  cache:false,
  	  data:data,
  	  success:function(vv){
  		  alert(vv);
  	  },error:function(){
  		  alert('Error');
  	  }
  	   
     });
	
}

	$(function() {

		$($("input").get(0)).click(function() {
			ajaxProcess('/web/jQuery/jQueryAjax/data1.jsp','POST','text','no=10&code=java');
			
		});
		$($("input").get(1)).click(function() {
			ajaxProcess('/web/jQuery/jQueryAjax/data2.jsp','GET','text','no=4&info=4');	
		});
		$($("input").get(2)).click(function() {
			ajaxProcess('/web/jQuery/jQueryAjax/data3.jsp','GET','text','no=4&info=4');
		});

		/*  $.ajax{
			 uri :"",
		     type : "text",
		     success:function(){
		    	 
		     }
			 
		 }
		 */
	});
</script>
</head>
<body>
	<input type="button" value="Click1">
	<input type="button" value="Click2">
	<input type="button" value="Click3">


</body>
</html>