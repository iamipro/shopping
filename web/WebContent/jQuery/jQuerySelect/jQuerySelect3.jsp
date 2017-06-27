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
          /*  $("input").click(function(){
           alert(this.value);
        	   
           }); */
          /*  var i=$("input[type='button']");
           alert(i.length); */
          /*  for(var i=0;i<$("input").length;i++){
        	   alert($($("input")[i]).val());
           }
           
           for(var i=0;i<$("input").length;i++){
        	   alert($("input").eq(i).val());
           } */
           
          /*  $("input").each(function(i,dom){
        	//        	   alert(i+" "+$(dom).val()); 
             alert(i+" "+$(this).val());
           
           }); */
       /*    $("input").eq(1).click(function(){
        	 $("center").each(function(i,dm){
        		alert($(this).html());
        	 }); 
          }); */
	
      /*     $("input").click(function(){
             $("center").each(function(i){
            	alert("INDEX:"+i);
            	$("input").eq(i).val($("input").eq(i).val()+"Clicked");
             });    	  
          });  
            */
	      $("center").each(function(index,dom){
	    	  //alert($("body").html());
	    	  switch (index) {
			case 0:
				 $(this).html("<b>"+"hi"+"</b>");
				break;
			case 1:
				 $(this).html("<b>"+"Message"+"</b>");
				break;
			case 2:
				 $(this).html("<b>"+"Hello"+"</b>");
				break;

				
			default:
				break;
			}
	    	  
	    	  /* 
	    	  $(this).html("<b>"+"hi"+"</b>");
	    	  alert($("body").html()); */
	      });
	
	});
</script>
</head>
<body>

  <input type="button" value="Click1">
  <input type="button" value="Click2">
  <input type="button" value="Click3">
  <input type="text" value="data">
  
   <br>
  <div></div>
  <center id="c1">
     <pre>
     <b>JAVA</b>
     </pre>
  </center>
   <center id="c2">
     <pre>
     <b>ORACLE</b>
     </pre>
  </center>
 <center id="c3">
     <pre>
     <b>JSP</b>
     </pre>
  </center>
</body>
</html>