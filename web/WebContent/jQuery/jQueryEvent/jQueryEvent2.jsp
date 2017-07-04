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
		/*   $("h1").mouseover(function(e){
			//$(this).addClass('reverse');
			  $(this).toggleClass('reverse');
		  });
		
		$("h1").mouseout(function(e){
			//$(this).removeClass('reverse');
			$(this).toggleClass('reverse');
		});  
	
		 */
        $("h1").click(function(){
        	$(this).html(function(index,html){
        		return '♡'+html+'♡';
        	});
        });

  
 $("h1:first").click(function(){
	 alert($(this).first().text()); 
	 $(this).unbind();
	 
  });
 $("h1:last").one('click',function(){
		alert('oneClick');
		//$(this).html('ONE CLICK');
		
	});	
	
	});
</script>
<style type="text/css">
.reverse{
background: pink;
color: white;

}

h1{
text-align: center;

}

#two{


}


</style>
</head>
<body>
   <h1>Header-0</h1>
   <h1 id="two">Header-1</h1>
   <h1>Header-2</h1>



</body>
</html>