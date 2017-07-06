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
		$("button#hide").click(function() {
			$("p").each(function(i, dom) {
                 //$(this).text();
                  switch(i){
                  case 0:
                	 
                	  $(this).slideUp(1000).slideDown(1000).
    				  fadeOut(1000).fadeIn(1000).hide(1000);
    				  
    				 break; 
                  }
                 
			});
		});
		$("button#show").click(function() {
			$("p").each(function(i, dom) {
                 //$(this).text();
                  switch(i){
                  case 0:
                	 
                	  $(this).slideUp(1000).slideDown(1000).
    				  fadeOut(1000).fadeIn(1000).hide(1000).show(10000);
    				 break; 
                  }
                 
			});
		}); 
		$("button#img").click(function(){
			/* $("img").each(function(i,dom){
				for()
				$(this).fadeOut(10000);
			}); */
			
			$("img").animate(function(){
				$(this).hide();
			},100);
		});
		$("img").attr("src",function(){
		 return "";
			
		}).each(function(){
			return "/web/img/1.jpg";
		});
		
		
	});
</script>
</head>
<body>

	<button id="hide">HIDE</button>
	<button id="show">SHOW</button>
	<button id="img">IMAGE</button>

	<p>국내 사업자들이 이 같은 규제를 따르는 동안 구글은 검색광고 구분 방식에 대한 실험을 꾸준히 진행해왔다.
		2007년부터 광고 박스 배경색을 노란색, 초록색, 파란색 등 다양한 색상으로 바꾸는 시도를 했었고 2013년 배경색을
		제거한데 2015년에는 경계선의 선명도를 조절하는 테스트를 진행했다는 게 업계 설명이다. 이밖에 구글은 검색결과 우측 영역을
		‘Sponsored links’에서 ‘Ads’로 명칭을 바꾸고 해당 영역에선 개별 광고에 표기를 하지 않는 등 광고와 일반
		검색 결과 사이의 경계를 허무는 시도를 해왔다. 현재는 광고 영역에 대한 별도의 구분 없이 개별 광고 사이트 옆에 ‘광고’라는
		표시를 노출하고 있다. 카카오(다음)가 작년 11월부터 개별 광고 사이트에 광고 표시를 했던 것이 알고 보면 ‘구글 방식’에
		가깝다.</p>
	<p>◆PC 검색 광고에 음영 표시…모바일 ‘패키지 규제’는 당연?=현재 국내 포털 사업자들은 PC기반 검색 광고에 음영
		표시를 하고 있다. 이 같은 조치는 지난 2014년 공정거래위원회 동의의결 대상이다. 광고와 정보를 알기 쉽도록 구분하자는
		취지에서 도입됐다. 그런데 포털 사업자들은 모바일 검색 광고에도 음영 처리를 했다. 동의의결 대상은 아니지만 자칫 새로운
		시도를 하거나 정치권의 눈에 거슬리는 움직임을 보일 경우 역풍을 맞을 것을 우려해서다. 그러다가 카카오가 작년 11월부터
		모바일 검색에 음영을 지우고 개별 광고 사이트에 ‘광고’ 표시를 하는 변화를 줬다. 일종의 사용성 실험이다. 모바일의 경우
		사용성이 대단히 민감한 이슈다. 앱을 찾아 직접 실행하는 구조이지 PC처럼 포털부터 들어가 검색으로 사이트를 찾는 이용 패턴이
		고착화되지 않았다. 때문에 기업 입장에선 모바일 이용자의 거부감을 최소화하고 광고를 명확하게 알 수 있도록 하는 여러 시도를
		하는 것이다. 네이버는 작년 말 모바일 쇼핑검색 광고에 상품 단위로 ‘광고’를 표시하는 시도를 했다. 가격 옆에 광고 아이콘이
		붙는다. PC처럼 음영이 표시되는 것은 아니다. 역시</p>
  <img alt="" src="/web/img/1.jpg" width="200" height="200">
  <img alt="" src="/web/img/2.jpg" width="200" height="200">
  <img alt="" src="/web/img/3.jpg" width="200" height="200">
  <img alt="" src="/web/img/4.jpg" width="200" height="200">
 
</body>
</html>