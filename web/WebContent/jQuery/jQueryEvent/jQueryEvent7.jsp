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
	/* 	$("span").bind('click', function() {
			switch (this.id) {
			case 's1':
				$(this).text('성주 공주 만세!!!!!!!!!');
				break;
			case 's2':
				$(this).text('임기사의 성주!!!!!!!!!!');
				break;
			case 's3':
				$(this).text('♡♡♡♡♡♡♡');
				break;
			case 's4':
				$(this).text('성주 공주님 뭐하십니까?');
				break;
			case 's5':
				$(this).text('수요 예배 가십니까?');
				break;
			case 's6':
				$(this).text('모해?');
				break;
			case 's7':
				$(this).text('ㅂㄱㅍ');
				break;

			}

		}); */
		
		/* $("input#i1").focus(function(){
			$("body").append("<input type='text' name='sf'/>");
			$("input[name='sf']").blur(function(){
				$(this).css('color','red');
			});
		}); */
		
		$("select#sel1").change(function(){
			 switch($(this).val()){
			 case '곰':
			          $("div#dv").html("<img src='/web/imgtemp/kakao/1.gif' width=200 height=200>");
			        break;
			 case '복숭아':
			 $("div#dv").html("<img src='/web/imgtemp/kakao/2.gif' width=200 height=200>");
		        break;
			 case '고양이':
			 $("div#dv").html("<img src='/web/imgtemp/kakao/3.gif' width=200 height=200>");
		        break;
			 
			 }
		});
		
	});
</script>
</head>
<body>
<!-- 
	<span id="s1">성주</span><br>
	<span id="s2">성주</span><br>
	<span id="s3">성주</span><br>
	<span id="s4">성주</span><br>
	<span id="s5">성주</span><br>
	<span id="s6">성주</span><br>
	<span id="s7">성주</span><br>
 -->
  <input type="text" id="i1">
  <select id="sel1">
    <option selected="selected">선택하세요</option>
     <option value="곰">곰</option>
     <option value="복숭아">복숭아</option>
     <option value="고양이">고양이</option>
  </select>
   <div id="dv"></div>
 
 
</body>
</html>