<%@page import="sist.dao.MemberDao"%>
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

	});
</script>
</head>
<body>
   <%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    MemberDao dao = new MemberDao();
    if(dao.memberLoginCheck(id, pw)){
    	response.sendRedirect("/web/deleteMember.do?cmd=deleteMember&id="+id);
    }else{
    	response.sendRedirect("/web/member/identity02.jsp");
    }
   
   
   %>



</body>
</html>