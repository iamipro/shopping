<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function refresh(url) {
	   //opener.document.location=url;
	   opener.document.location="/DosiAir"+url;
	   //opener.document.location="/DosiAir/member/main.action";
	   self.close();
	}

</script>
<body onload="refresh('${returnUrl}')">
</body>
</html>