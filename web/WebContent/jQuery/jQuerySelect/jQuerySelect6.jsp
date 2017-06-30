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
       //$("h1:not(#h1)").css('color','red');
       //$("h1:eq(3)").css('color','blue');
       //$("h1:gt(3)").css('color','blue');
       //$("h1:lt(3)").css('color','blue');
	/*   $("img").click(function(){
		 this.border=10; 
	  }); */
	 /*  $("div#small img").animate({"opacity":.3
	  
	  })
	  
	  $("div#small img").hover(function(){
	     $(this).animate({"opacity":1});
	  },function(){
		  $(this).animate({"opacity":.3});
	  }); */
	 
	  $('a').hover(function(e){
		     
	         var href=$(this).attr("href");
             $("<img id=bigImg src="+href+" width=500 height=500>").css('top',e.pageY+20).css("left",e.pageX+20).appendTo("body");

	  },function(j){
		  $("img#bigImg").remove();
		  
		  //alert('test');
	  });
	  
	  
	  
	  
	});
</script>
<style type="text/css">
 #bigImg{
  position : absolute;
  padding: .10em;
  background : navy;
  border : 1px solid lightgray;
 
 }


</style>
</head>


<body>
<div id="small">

<a href="/web/imgmovie/1.jpg"><img src="/web/imgmovie/1.jpg" width="100" height="100"></a>
<a href="/web/imgmovie/2.jpg"> <img src="/web/imgmovie/2.jpg" width="100" height="100"></a>
<a href="/web/imgmovie/3.jpg"> <img src="/web/imgmovie/3.jpg" width="100" height="100"></a>
<a href="/web/imgmovie/4.jpg"> <img src="/web/imgmovie/4.jpg" width="100" height="100"></a>
 <a href="/web/imgmovie/5.jpg"><img src="/web/imgmovie/5.jpg" width="100" height="100"></a>
<a href="/web/imgmovie/6.jpg"> <img src="/web/imgmovie/6.jpg" width="100" height="100"></a>
 <a href="/web/imgmovie/7.jpg"><img src="/web/imgmovie/7.jpg" width="100" height="100"></a>
 <a href="/web/imgmovie/8.jpg"><img src="/web/imgmovie/8.jpg" width="100" height="100"></a>
<a href="/web/imgmovie/9.jpg"> <img src="/web/imgmovie/9.jpg" width="100" height="100"></a>
 <a href="/web/imgmovie/10.jpg"><img src="/web/imgmovie/10.jpg" width="100" height="100"></a>
  </div>

<%--  <%
  for(int i=0;i<=100;i++){
 
 %>
 
   <h1 id="h<%=i%>"><%=i %></h1>
     <%
  }
  %> --%>
 <!--  <h1 id="h2">2</h1>
   <h1 id="h3">3</h1>
   <h1 id="h4">4</h1>
   <h1 id="h5">5</h1>
   <h1 id="h6">6</h1>
   <h1 id="h7">7</h1> -->
  

</body>
</html>