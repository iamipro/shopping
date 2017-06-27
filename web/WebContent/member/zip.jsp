<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background:#fff">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css" rel="stylesheet" href="../css/default.css" />
<title>Insert title here</title>


</head>


<body id="bg_white">
<!--Wrap-->
 <div id="wrap">
	<!--Header-->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
	<!--END Header-->
	<div class="sub_con4">
		<div class="zip_bg">
			<ul>
				<li class="zip_font">우편번호</li>
				<li class="text01">찾고자 하는 지역의 &quot;읍,면,동&quot; 이름을 입력하세요.<br>
					예: 용이동일 경우, '용이동' 으로 검색하세요.
				</li>
			</ul>
				<div class="dong_check">
					<dl>
						<dd>
							<input type="text" name="dong" id="dong" value="">
						</dd>
					</dl>
				</div>

				<div class="zip_check">
					<ul>
						<li ><input type="button" value="검색" onclick="" style="margin-left:-100px;"onclick="location.href='.jsp'"/></li>
					</ul>
				</div>
				
			<form action="" method="" name="">
				<table width="150%" height="25" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<a href=""></a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	</div>	
</body>
</html>