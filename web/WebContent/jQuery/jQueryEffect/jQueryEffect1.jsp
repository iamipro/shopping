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

	<p>���� ����ڵ��� �� ���� ������ ������ ���� ������ �˻����� ���� ��Ŀ� ���� ������ ������ �����ؿԴ�.
		2007����� ���� �ڽ� ������ �����, �ʷϻ�, �Ķ��� �� �پ��� �������� �ٲٴ� �õ��� �߾��� 2013�� ������
		�����ѵ� 2015�⿡�� ��輱�� ������ �����ϴ� �׽�Ʈ�� �����ߴٴ� �� ���� �����̴�. �̹ۿ� ������ �˻���� ���� ������
		��Sponsored links������ ��Ads���� ��Ī�� �ٲٰ� �ش� �������� ���� ���� ǥ�⸦ ���� �ʴ� �� ����� �Ϲ�
		�˻� ��� ������ ��踦 �㹫�� �õ��� �ؿԴ�. ����� ���� ������ ���� ������ ���� ���� ���� ���� ����Ʈ ���� ���������
		ǥ�ø� �����ϰ� �ִ�. īī��(����)�� �۳� 11������ ���� ���� ����Ʈ�� ���� ǥ�ø� �ߴ� ���� �˰� ���� ������ ��ġ���
		������.</p>
	<p>��PC �˻� ���� ���� ǥ�á������ ����Ű�� �������� �翬?=���� ���� ���� ����ڵ��� PC��� �˻� ���� ����
		ǥ�ø� �ϰ� �ִ�. �� ���� ��ġ�� ���� 2014�� �����ŷ�����ȸ �����ǰ� ����̴�. ����� ������ �˱� ������ �������ڴ�
		�������� ���Եƴ�. �׷��� ���� ����ڵ��� ����� �˻� ������ ���� ó���� �ߴ�. �����ǰ� ����� �ƴ����� ��ĩ ���ο�
		�õ��� �ϰų� ��ġ���� ���� �Ž����� �������� ���� ��� ��ǳ�� ���� ���� ����ؼ���. �׷��ٰ� īī���� �۳� 11������
		����� �˻��� ������ ����� ���� ���� ����Ʈ�� ������ ǥ�ø� �ϴ� ��ȭ�� ���. ������ ��뼺 �����̴�. ������� ���
		��뼺�� ����� �ΰ��� �̽���. ���� ã�� ���� �����ϴ� �������� PCó�� ���к��� �� �˻����� ����Ʈ�� ã�� �̿� ������
		����ȭ���� �ʾҴ�. ������ ��� ���忡�� ����� �̿����� �źΰ��� �ּ�ȭ�ϰ� ���� ��Ȯ�ϰ� �� �� �ֵ��� �ϴ� ���� �õ���
		�ϴ� ���̴�. ���̹��� �۳� �� ����� ���ΰ˻� ���� ��ǰ ������ �������� ǥ���ϴ� �õ��� �ߴ�. ���� ���� ���� ��������
		�ٴ´�. PCó�� ������ ǥ�õǴ� ���� �ƴϴ�. ����</p>
  <img alt="" src="/web/img/1.jpg" width="200" height="200">
  <img alt="" src="/web/img/2.jpg" width="200" height="200">
  <img alt="" src="/web/img/3.jpg" width="200" height="200">
  <img alt="" src="/web/img/4.jpg" width="200" height="200">
 
</body>
</html>