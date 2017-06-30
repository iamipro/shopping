<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		//$('tr:eq(1)').css('background','gray').css('color','white');
		$('tr').eq(0).css('background','gray').css('color','white');

		$('tr:nth-child(2n)').css('color','green');
		
		
		
		//$("*").css('color','blue');
		//$("#java,#jsp").css('color','red');
		//$(".oracle,.jQuery").css('color','orange');
		//#("div > h1").css('color','cyan');
	});
</script>
</head>
<body>
    <!-- <h1 id="java">JAVA</h1>
     <h1 class="oracle">ORACLE</h1>
     <h1 id="jsp">JSP</h1>
     <h1 class="jQuery">JQUERY</h1>
      <div>
         <h1>SelectTest</h1>
      </div>
     --> 
  
    <table border="1" width="500" cellpadding="10" cellspacing="0" align="center">
       <tr>
          <th>이름</th>       
          <th>성별</th>       
          <th>주소</th>       
       </tr> 
       <tr>
          <td>이응수</td>
          <td>남</td>
          <td>인천시</td>
       </tr>
        <tr>
          <td>임명수</td>
          <td>남</td>
          <td>서울시 강남구</td>
       </tr>
       <tr>
          <td>권영택</td>
          <td>남</td>
          <td>서울시 송파구</td>
       </tr>
       <tr>
          <td>조은실</td>
          <td>여</td>
          <td>서울시 동작구</td>
       </tr>
       <tr>
          <td>이현준</td>
          <td>남</td>
          <td>서울시 관악구</td>
       </tr>  
      
       <tr>
          <td>이응수</td>
          <td>남</td>
          <td>인천시</td>
       </tr>
        <tr>
          <td>임명수</td>
          <td>남</td>
          <td>서울시 강남구</td>
       </tr>
       <tr>
          <td>권영택</td>
          <td>남</td>
          <td>서울시 송파구</td>
       </tr>
       <tr>
          <td>조은실</td>
          <td>여</td>
          <td>서울시 동작구</td>
       </tr>
       <tr>
          <td>이현준</td>
          <td>남</td>
          <td>서울시 관악구</td>
       </tr>                          
    </table>
  
  
</body>
</html>