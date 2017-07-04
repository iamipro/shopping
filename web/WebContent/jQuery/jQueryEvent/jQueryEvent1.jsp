<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<style type="text/css">
.reverse{
    background: navy;
    color: white;
}

.basic{
 font-family: monospace;
 font-weight: bold;
 background-color: cyan;
 color:white;
 font-size: 100px;
}
</style>

<script type="text/javascript">

	$(function() {
         /* $("h1").bind('click',function(){
        	$(this).html(function(index,html){
        		return html+"+";
        	});
         }); */
     /*     $("h1").bind("mouseenter",function(e){
        	 alert("mouseenter");
         });
         $("h1").bind("mouseleave",function(e){
        	 alert("mouseleave");
         }); */
         /* $("h1").bind({mouseenter:function(e){
        	 $(this).addClass('reverse');
         },mouseleave:function(e){
        	 $(this).removeClass('reverse');
         }}); */
         /* $("h1").hover(function(){
        	 $(this).addClass("basic");
         },function(){
        	 $(this).removeClass('basic');
         });
          */
	});

</script>
</head>
<body>
   <h1>[딸기,수박,감자,낑깡]-0</h1>
   <h1>[딸기,수박,감자,낑깡]-1</h1>
   <h1>[딸기,수박,감자,낑깡]-2</h1>


</body>
</html>