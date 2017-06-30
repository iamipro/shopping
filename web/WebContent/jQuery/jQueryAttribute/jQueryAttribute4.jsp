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
   $("select#cb>option[value='apple']").attr('selected','selected');
	$("input[name='fruit']:radio").click(function(){
		$("#cb > option[value='"+$(this).val()+"']").attr('selected','selectd');
	});	
	$("#cb").change(function(){
		var value=$("#cp option:selected").val();
		$("input:radio[value='"+value+"']").attr("checked","checked");
	    $("input:text").val($("select#cb option:selected").text()); 
	});   
	/* 
	  $("select#cb>option[value='apple']").attr('selected','selected');
	  $("input[name='fruit']:radio").click(function(){
		 $("#cb > option[value='"+$(this).val()+"']").attr('selected','selected'); 
	  });
	  $("#cb").change(function(){
		 var value=$("#cp option:selected").val();
		 $("input:radio[value='"+value+"']").attr("checked","checked");
		 $("input:text").val($("select#cb option:selected").text());
	  });   */
	
	});
</script>
<style type="text/css">
/* th{
color:white;
}
td{
text-align: center;
}
select{
color:white;
} */
</style>
</head>
<body >
 <table border="1px solid lightgray" width="80%" border="1" cellpadding="10"  cellspacing="0" align="center">
  <tr>
      <th>사과</th>
       <td><input type="radio" name="fruit" value="apple"></td> 
     <th>포도</th>
       <td><input type="radio" name="fruit" value="grape"></td>
       <th>딸기</th>
       <td><input type="radio" name="fruit" value="strawberry"></td>
       <th>멜론</th>
       <td><input type="radio" name="fruit" value="melon"></td>
  </tr>
  <tr>
     <td colspan="8">
        과일:<select id="cb">
         <option value="apple" selected="selected">사과</option>
         <option value="grape"  >포도</option>
         <option value="strawberry"  >딸기</option>
         <option value="melon"  >멜론</option>
  
        </select>
             </td>
  </tr> 
   <tr>
     <td colspan="8">
     InputBox:  <input type="text"   disabled="disabled">
     </td>
   
   </tr>
 
 </table>

</body>
</html>