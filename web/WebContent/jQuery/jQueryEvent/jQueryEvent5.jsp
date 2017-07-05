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
		/* $('textarea').keyup(function(){
			var inputLength= $(this).val().length;
			var remain=150-inputLength;
			$('h5').html(remain);
			if(remain>=0){
				$('h5').css('color','black');
			}else{
				$('h5').css('color','red');
		       $("span").html('<textarea row="5" cols="100"> 여가다 쓰시오 </textarea>');   		
			}
		}); */
		/* 
		$(document).keypress(function(e) {  
		    //alert('keypress'+e.keyCode);           /*  keydown 아스키코드값이 없는  방향키는 인식못한다. */
		/*  $("span").append("<font color='red'>[KEYPRESS]"+e.keyCode+"["+String.fromCharCode(e.keyCode)+"]</font><br>");
		});

		$(document).keydown(function(e) {    
		 //alert('keydown'+e.keyCode);   /*  keypress 아스키 코드 값을 찍어서 대소문자 구분할수 있다. */
		/* 
		 $("span").append("<font color='blue'>[KEYDOWN]"+e.keyCode+"["+String.fromCharCode(e.keyCode)+"]</font><br>");
		 }); */

		$(document).keydown(function(e) {
			if (e.keyCode == 37) {
				$("img").animate({
					"marginLeft" : "-=50px"
				}, 0);
			} else if (e.keyCode == 39) {
				$("img").animate({
					"marginLeft" : "+=50px"
				}, 0);
			} else if (e.keyCode == 38) {
				$("img").animate({
					"marginTop" : "-=50px"
				}, 0);
			} else if (e.keyCode == 40) {
				$("img").animate({
					"marginTop" : "+=50px"
				}, 0);
			}

		});

		 $(document).mousedown(function(e) {
				switch (e.which) {
				case 1:
					$("img").animate({width:"+5000px",height:"+5000px"},10000);
					break;
				case 2:
					$("img").attr("src","/web/imgtemp/2.gif");break;
				case 3:
					$("img").animate({width:"+0px",height:"+0px"},10000);
					break;
					
				}
			}); 
		/* $(document).mousedown(function(e) {
            alert(e.which);
			switch(e.which){
			case 1:
				$("img").animate({width:"+=1000px",height:"+1000px"},100);
				break;
			case 2:
				$("img").animate({width:"+0px",height:"+0px"},100);
				break;
			case 3:
				$("img").animate({width:"-=1000px",height:"-1000px"},100);
			
				break;	
			}
		}); */

	});
</script>
</head>
<body>
	<div>
		<p>지금 내 생각을...</p>

		<h5>150</h5>
		<textarea rows="5" cols="100"></textarea>
		<br> <span></span>

	</div>
	<img src="/web/imgtemp/1.gif" width="100" height="100">
	<img src="/web/imgtemp/2.gif" width="100" height="100">
	<img src="/web/imgtemp/3.gif" width="100" height="100">
	<img src="/web/imgtemp/4.gif" width="100" height="100">
	<img src="/web/imgtemp/5.gif" width="100" height="100">
	<img src="/web/imgtemp/6.gif" width="100" height="100">
	<img src="/web/imgtemp/7.gif" width="100" height="100">


</body>
</html>