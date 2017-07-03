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
            $("div").attr("id",function(i){
            	return "div-id-"+i;
            }).each(function(ii,dom){
            	//alert(dom);
            	//alert($(dom).text());
               //            	alert(this.id);
             $("span",this).html("(ID='<B>')"+this.id+"</b>");
              
            });
		
	});
</script>
</head>
<body>
  <div id="d1">ZERO-TH<span></span></div>
  <div id="d2">FIRST<span></span></div>
  <div id="d3">SECOND<span></span></div>


</body>
</html>