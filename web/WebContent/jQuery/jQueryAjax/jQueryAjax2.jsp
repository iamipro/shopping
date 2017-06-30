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
		$("input").click(function() {
			switch ($(this).val()) {
			case "권영택":
				$.ajax({
					url:'/web/jQuery/jQueryAjax/data1.jsp?code=java',
					dataType:'text',
					type:'GET',
					success:function(v){
						$('div').html(v).slideUp(1000).slideDown(1000).fadeOut(1000).fadeIn(1000); 
					},
					error:function(){
						alert('FailProcess!');
					}
				});
				  
				break;
			case "임명수":
				$.ajax({
					url:'/web/jQuery/jQueryAjax/data2.jsp',
					dataType: 'text',
					success:function(v){
						$('div').html(v);
					}
					
				});
				break;
			case "조은실":
				$.ajax({
					url:'/web/jQuery/jQueryAjax/data3.jsp',
					dataType:'html',
					type:'POST',
					data:{code:'java',no:5},
					success:function(v){
						$('div').html(v); 
					},
					error:function(){
						alert('FailProcess!');
					}
				});
				break;
			case "이현준":
				$.ajax({
					url:'/web/jQuery/jQueryAjax/data4.jsp',
					dataType:'html',
					type:'POST',
					data:{code:'java',no:5},
					success:function(v){
						$('div').html(v); 
					},
					error:function(){
						alert('FailProcess!');
					}
				});
				break;
			case "박상훈":
				 
				   $.ajax({
						  url:'/web/jQuery/ajaxData/data1.js',
						  dataType:'script',
						  type:'GET',
						  success:function(vv){
						   //$("div").html(vv);
							  clockFunction();
						  }
						  
					   });
				break;
			}

		});
	});
</script>
  <style type="text/css">
input{
background-color: crimson;
color: white;
width: 120px;
height:40px;
 
}

</style>
  
</head>
<body >
	<input type="button" value="권영택">
	<input type="button" value="임명수">
	<input type="button" value="조은실">
	<input type="button" value="이현준">
	<input type="button" value="박상훈"><br>
    <div id="dv"></div>
 

</body>
</html>