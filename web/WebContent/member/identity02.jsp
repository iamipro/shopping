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
			<div class="del">
				
				<!-- idenTop.jsp include -->
				<jsp:include page="../include/idenTop.jsp"></jsp:include>
				<!-- END idenTop.jsp include -->
				<div class="del_info">
					<h2>회원탈퇴</h2>
					<ul class="del_line">
						<li>안내사항 동의 및 비밀번호 입력 후 [탈퇴] 버튼을 누르면 인터넷 회원의 탈퇴 처리가 완료 됩니다.</li>
						<li><strong>탈퇴 후에는 인터넷 회원으로 재가입하실 수 있으나, 기존에 사용하셨던 아이디를 다시 사용하실 수는 없습니다.</strong></li>
						<li>
							<input type="checkbox">&nbsp;인터넷 회원 탈퇴를 원합니다.
						</li>
					</ul>
					<ul class="del_button">
						<li>비밀번호 입력</li>
						<li><input type="text" name="mbpw">&nbsp;<a href="javascript:comp()"><input type="button" value="확인" onclick="location.href='.jsp'"/></a></li>
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