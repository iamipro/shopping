<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/default.css" />
</head>
<script type="text/javascript">
function comp(){
	var obj = document.dFrm;
	if(obj.pw.value!=""&&obj.pw.value!=null){
		
	obj.submit();
	}else{
		alert('�н����带 �Է����ּ���');
	}
	
}

</script>

<body style="background-color:white;">
<!--Wrap-->
 <div id="wrap">
	<!--Header-->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
	<!--END Header-->

	<!--Container-->
	<div id="sub_container">
		<div class="sub_con2">
			<div class="del">
		<%
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		%>		
				
				
				<!-- idenTop.jsp include -->
				<jsp:include page="../include/idenTop.jsp"></jsp:include>
				<!-- END idenTop.jsp include -->
				<div class="del_info">
					<h2>ȸ��Ż��</h2>
					<ul class="del_line">
						<li>�ȳ����� ���� �� ��й�ȣ �Է� �� [Ż��] ��ư�� ������ ���ͳ� ȸ���� Ż�� ó���� �Ϸ� �˴ϴ�.</li>
						<li><strong>Ż�� �Ŀ��� ���ͳ� ȸ������ �簡���Ͻ� �� ������, ������ ����ϼ̴� ���̵� �ٽ� ����Ͻ� ���� �����ϴ�.</strong></li>
						<li>
							<input type="checkbox" id="check" name="check">&nbsp;���ͳ� ȸ�� Ż�� ���մϴ�.
						</li>
					</ul>
					<ul class="del_button">
						<li>��й�ȣ �Է�</li>
						<form action="deleteProcess.jsp?id=<%=id%>" method="post" name="dFrm">
						<li><input type="text" id="pw" name="pw" value="">&nbsp;</form><a href="javascript:comp()"><input type="button" value="Ȯ��"/></a></li>
					</ul>
				</div>
				</form>
			</div>	
		</div>
	</div>
	
	<!--END Container-->



	<!--Footer-->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	<!--END Footer-->

 </div><!--END Wrap-->
</body>
</html>