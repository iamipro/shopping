<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script type="text/javascript">
  $(function(){
	  $("img").click(function(){
		  //alert(this.src);
		  /* this.width+=100;
		  this.height+=100; */
		  if(this.src.substring(this.src.lastIndexOf('/')+1)=='1.jpg'){
			  $.ajax({
				 url:'/web/board/board.jsp',
				 dataType:'text',
				 success:function(v){
					$("div").html(v); 
				 }
			  });
		  }
		  if(this.src.substring(this.src.lastIndexOf('/')+1)=='2.jpg'){
			  $.ajax({
					 url:'/web/board/info.jsp',
					 dataType:'text',
					 success:function(v){
						$("div").html(v); 
				 }
				  });
		  } 
		  if(this.src.substring(this.src.lastIndexOf('/')+1)=='3.jpg'){
			  $.ajax({
					 url:'/web/board/chart.txt',
					 dataType:'text',
					 success:function(v){
						eval(v);
				 }
			  });
		  } 
	  });
	  
  });
</script>
</head>
<body>
 <img  src="/web/imgtemp/1.jpg" width="50" height="50">
 <img  src="/web/imgtemp/2.jpg" width="50" height="50">
 <img  src="/web/imgtemp/3.jpg" width="50" height="50"><br>
 
 <div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
</body>
</html>


