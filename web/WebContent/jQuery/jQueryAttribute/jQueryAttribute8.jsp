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

		$('.question').css("cursor", "pointer");
		$('.answer').hide();
		$(".question").each(function(index) {
			$(this).click(function() {
				$('.answer').eq(index).toggle(1000);
			});
			$(this).dblclick(function() {
				$('.answer').eq(index).fadeOut(1000);
			});
		});
	});
</script>

<style type="text/css">
#table1 {
	background-color: pink;
	width: 880px;
	border: 1px solid lightgray;
}

#table1 td {
	padding: 0px;
	margin: 0px;
}

#table1 td.cursor {
	cursor: pointer;
}

.question {
	text-align: center;
	height: 30px;
	background-color: black;
	color: white;
}

.answer {
	text-align: center;
	height: 30px;
	background-color: white;
	color: black;
}
</style>
</head>
<body>

	<table cellpadding="0" cellspacing="0" id="table1">
		<tr>
			<th colspan="2">SHOW-HIDE</th>
		</tr>
		<tr class="question">
			<td>������ ������?</td>
		</tr>
		<tr class="answer">
			<td>������</td>
		</tr>
		<tr class="question">
			<td>������</td>
		</tr>
		<tr class="answer">
			<td>��������</td>
		</tr>
		<tr class="question">
			<td>�ڻ��� �� ���� �Ƴ��� å��?</td>
		</tr>
		<tr class="answer">
			<td>SPRING</td>
		</tr>
		<tr class="question">
			<td>�ǿ����� ���� �����ϴ� �����?</td>
		</tr>
		<tr class="answer">
			<td>�Ӹ��</td>
		</tr>
	</table>

</body>
</html>