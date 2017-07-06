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
			var color= ['blue','pink','green']
			
		$("h1").css({color : function(index) {
				return color[index];

			},
			backgroundColor:'navy' 
		});
			
			/*   var color=['blue','pink','green']
			  $("h1").css({color:function(index){
				   return color[index];		   
			       },
			       backgroundColor:'orange'
			  }); */

	});
</script>
</head>
<body>
	<h1>권영택</h1>
	<h1>임명수</h1>
	<h1>이현준</h1>

</body>
</html>