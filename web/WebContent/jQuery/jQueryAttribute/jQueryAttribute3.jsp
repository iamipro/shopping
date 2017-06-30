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
    
	/* 	$("#second").attr('disabled','disabled');
	 $("#first:text").keyup(function(){
		$("#second:text").val($("#first:text").val()); 
	 });	 */
		
	 $("#first:password").keyup(function(){
		$("#second:password").val(''); 
	 });
	 
	 $("#second:password").keyup(function(){
		if($("#first:password").val()!=""){
			if($("#first:password").val()!=$("#second:password").val()){
				$("div#dv").remove();
				$("tr:last td:last").append('<div id="dv">비밀번호가 틀립니다.</div>').find("div").
				css({'backgroundColor':'red'});
			}else{
				$("div#dv").remove();
				$("tr:last td:last").append('<div id="dv">비밀번호가 맞습니다..</div>').find("div").
				css({'backgroundColor':'blue'});
				
			}
		}	 
		 
		 
		 });
	 
	 
	});
</script>
</head>
 <table cellpadding="10" cellspacing="0" border="1px solid lightgray" align="center">
 <!-- <tr>
    <th>OLDTEXT  </th>
    <td><input type="text" id="first" name="first" size="30"></td>
 </tr>
 <tr>
    <th>NEWTEXT  </th>
    <td><input type="text" id="second" name="second" size="30"></td>
 </tr> -->
 
 <tr>
    <th>OLDTEXT  </th>
    <td><input type="password" id="first" name="first" size="30"></td>
 </tr>
 <tr>
    <th>NEWTEXT  </th>
    <td><input type="password" id="second" name="second" size="30">
           <div id="dv"></div>
    </td>
 </tr>
 
 
 </table>



</body>
</html>