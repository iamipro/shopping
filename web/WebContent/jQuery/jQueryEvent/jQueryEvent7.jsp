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
				$(this).text('���� ���� ����!!!!!!!!!');
				break;
			case 's2':
				$(this).text('�ӱ���� ����!!!!!!!!!!');
				break;
			case 's3':
				$(this).text('��������������');
				break;
			case 's4':
				$(this).text('���� ���ִ� ���Ͻʴϱ�?');
				break;
			case 's5':
				$(this).text('���� ���� ���ʴϱ�?');
				break;
			case 's6':
				$(this).text('����?');
				break;
			case 's7':
				$(this).text('������');
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
			 case '��':
			          $("div#dv").html("<img src='/web/imgtemp/kakao/1.gif' width=200 height=200>");
			        break;
			 case '������':
			 $("div#dv").html("<img src='/web/imgtemp/kakao/2.gif' width=200 height=200>");
		        break;
			 case '�����':
			 $("div#dv").html("<img src='/web/imgtemp/kakao/3.gif' width=200 height=200>");
		        break;
			 
			 }
		});
		
	});
</script>
</head>
<body>
<!-- 
	<span id="s1">����</span><br>
	<span id="s2">����</span><br>
	<span id="s3">����</span><br>
	<span id="s4">����</span><br>
	<span id="s5">����</span><br>
	<span id="s6">����</span><br>
	<span id="s7">����</span><br>
 -->
  <input type="text" id="i1">
  <select id="sel1">
    <option selected="selected">�����ϼ���</option>
     <option value="��">��</option>
     <option value="������">������</option>
     <option value="�����">�����</option>
  </select>
   <div id="dv"></div>
 
 
</body>
</html>