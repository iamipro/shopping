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
<body style="background-color:white;">
<!--Wrap-->
 <div id="wrap">
	<!--Header-->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
	<!--END Header-->

	<!--Container-->
	
    
	<div id="sub_container">
		<div class="sub_con2">
			<div class="identity">
				
				<!-- idenTop.jsp include -->
				<jsp:include page="../include/idenTop.jsp"></jsp:include>
				<!-- END idenTop.jsp include -->
				
				<div class="iden_submenu">
					<ul>
						<a href="/web/myPage.do?cmd=myPage&id=${id}"><li><img src=""><strong>ȸ������ ����</strong></li></a>
						<a href="/web/memberModify.do?cmd=memberModify&id=${id}"><li><img src="">ȸ������ ����</li></a>
						<a href="/web/pwChange.do?cmd=pwChange&id=${id}"><li><img src="">��й�ȣ ����</li></a>
					</ul>
				</div>
				
				<div class="iden_info">
					<h2>ȸ������ ����</h2>
					<table cellpadding="0" cellspacing="0">
						<tr>
							<th>ȸ���̸�</th>
							<td>${member.name}</td>
							<th></th>
							<td></td>
						</tr>
						
						<tr>
							<th>�޴��� ��ȣ</th>
							<td>${member.phone}</td>
							<th>�������</th>
							<td>${member.birth }</td>
						</tr>
						
						<tr>
							<th>�ּ�</th>
							<td>${member.addr1}${member.addr2}</td>
							<th>�̸��� �ּ�</th>
							<td>${member.email }</td>
							
						</tr>
						<!-- <tr>
							<th>ȸ�����</th>
							<td><s:property value="mbgrade" /></td>
							<th>ȸ�����ϸ���</th>
							<td><s:property value="mbmileage" /></td>
						</tr> -->
					</table>
				</div>
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