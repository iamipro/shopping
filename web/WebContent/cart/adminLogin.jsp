<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="copyright" content="Copyright 2009 @ high1 all rights reserved" />
<link href="/web/adminDesign/css/contents.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script>
   $(function(){
		   
	   /* $("div#loginWrapper").fadeOut(1000).fadeIn(1000);
	       
		   $("input#id").click(function(){
	  		  $(this).val('안녕');
	  	  }); */ 
	  		  
     
	   $("img#btnSubmit").click(function(){
		  
		  /* alert($("input#id").val());
		  $("input#pw").fadeOut(1000).fadeIn(1000); */
		  //$("div#loginWrapper").hide(10000);		  
		   if($("input#id").val().length==0||$("input#pw").val().length==0){
			   alert('Id or Pass');
			   $("input#id").val('');
			   $("input#pw").val('');
			   $("input#id").focus();
			   return false;
		   }else{
			   $("form").submit();
		   }
	   });
	   
   });
</script>
</head>

<body>
<form name="login" method="post" action="/web/login.do?cmd=login">
 <div id="loginWrapper">
  <div class="loginForm">
   <fieldset>
    <legend>관리자 시스템 로그인</legend>
    <dl>
     <dt><img src="/web/adminDesign/img/common/th_id.gif" alt="아이디" /></dt>
     <dd><input type="text" name="id" class="text" id="id" /></dd>

     <dt><img src="/web/adminDesign/img/common/th_pw.gif" alt="비밀번호" /></dt>
     <dd><input type="password" name="pw" class="text" id="pw" /></dd>
    </dl>
    <div class="btn">
     <img id="btnSubmit" src="/web/adminDesign/img/button/btn_login.gif" alt="LOGIN" title="LOGIN"  />
    </div>
    
    <div class="saveId"><input type="checkbox" id="checker" name="checker" /> 
     <img src="/web/adminDesign/img/common/save_id.gif" alt="아이디 저장" />
    </div>
   </fieldset>
  </div>
 </div>
</form>
</body>
</html>