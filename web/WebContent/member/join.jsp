<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/default.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../../js/member.js" charset="UTF-8"></script>
<script type="text/javascript" src="/js/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
</head>
<script type="text/javascript">
    $(document).ready(function(){
   
    	
    });
   
    function nameCheck(){
    	var obj1 = document.getElementById("name1");
    	var obj2 = document.getElementById("name2");
    	var obj3 = document.getElementById("name");
    	obj3.value= obj1.value+obj2.value;
    	alert(obj3.value);
    }
    function birthCheck(){
    	var obj1 = document.getElementById("year");
    	var obj2 = document.getElementById("month");
    	var obj3 = document.getElementById("day");
    	var obj4 = document.getElementById("birth");
    	obj4.value=obj1.value+obj2.value+obj3.value;
    	alert(obj4.value);
    }

    function genderCheck(obj){
    	var obt= document.getElementById("gender");	
    	if(obj==1){
    		obt.value='남';
    	}else if(obj==2){
    		obt.value='여';
    	}
    	alert(obt.value);
    }
    
    
    
</script>
<body>
	<!--Wrap-->
	<div id="wrap">
		<!--Header-->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
		<!--END Header-->

		<!--Container-->
		<div id="sub_container">
			<div class="sub_con1">
				<div class="reserve_form_join">
					<div class="join_m">
							<h1>회원가입</h1>
							<div class="join_l">
	                       <form action="joinMember.do?cmd=joinMember" method="post">
								<ul class="join_name">
									<li>한글 성<span>*</span></li>
									<li><input type="text" required="required" id="name1" name="name1" value=""></li>
								</ul>
								<ul class="join_name">
									<li>한글 이름<span>*</span></li>
									<li><input type="text" required="required" id="name2" name="name2" value="" onblur="nameCheck()"></li>
								        <input type="hidden" required="required" id="name" name="name" value="">
								</ul>
								<ul class="join_birth">
									<li>생년월일<span>*</span></li>
									<li><input type="text" required="required" id="year" name="year" value=""></li>
									<li><input type="text" required="required" id="month" name="month" value=""></li>
									<li><input type="text"  required="required" id="day" name="day" value="" onblur="birthCheck()"></li>
									<input type="hidden" id="birth" name=birth value=""/>
								</ul>
								<ul class="join_mw">
									<li>성별<span>*</span></li>
									<input type="radio" name="gender1" value="m" onclick="genderCheck('1')"  />&nbsp; 남자
									<input type="radio" name="gender1"   value="w" onclick="genderCheck('2')"/>&nbsp; 여자
								        <input type="hidden" id="gender" name="gender" value="">
								</ul>

								<ul>
									<li>이메일주소</li>
									<li><input type="text" id="email1" required="required" name="email1"></li>
									<li><select name="email2" id="email2" required="required" >
											<option selected="selected" value="empty">선택하세요</option>
											<option value="direct">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="nate.com">nate.com</option>
											<option value="daum.net">daum.net</option>
									</select></li>
									
									<li><input type="hidden" id="email" name="eamil" value="" /></li>
									<input type="hidden" id="" name="">
									
								</ul>
								<ul>
									<li>휴대폰 번호<span>*</span></li>
									<!-- 여기에 안내문 . '-' 없이 입력해주세요.  -->
									<li><input type="text" id="phone" name="phone" required="required"></li>
								</ul>
							</div>

							<div class="join_r">
								<ul class="join_loca">
									<li>우편주소<span>*</span></li>
									<li>
									<input type="text" id="zip1" name="zip1" required="required">-&nbsp;&nbsp;
									<input type="text" id="zip2" name="zip2" required="required">&nbsp;
									<input type="hidden" id="zip" name="zip" value="">
									<input class="lo_button" type="button" value="우편번호확인" onclick="location.href='.jsp'"></li>
									
									<input type="hidden" id="" name="">
									<li class="input_wh"><input type="text" id="addr1"name="addr1" required="required"></li>
									<li class="input_wh"><input type="text" id="addr2" name="addr2" required="required" placeholder="상세주소를 입력해주세요."></li>
								</ul>
								<ul class="join_id">
									<li>회원아이디<span>*</span></li>
									<li><input type="text" id="id" name="id" required="required" placeholder="영문&숫자 조합(6~12자리)"></li>
									<li id="resultIdCheck"></li>
								</ul>
									 <ul>
                           <li>비밀번호<span>*</span></li>
                           <li><input type="password" id="pw" name="pw" required="required"></li>
							<span id="span1" style="display: none;">
							<font id="message1" color="blue" size="2"> 사용 가능합니다.</font>
							</span>
							</td>
                        </ul>
                        <ul>
                           <li>비밀번호 확인<span>*</span></li>
                           <li><input type="password" id="pwck" name="pwck" onkeyup="passConfirmCheck(event)" onfocus="checkPass()" onblur="passCheck2()" placeholder="8~20자리"></li>
                              <span id="span2" style="display: none;"><font id="message2" color="RED" size="2">비밀번호가 일치하지 않습니다.</font></span></td>
                              
                           <input type="hidden" name="mbpw" onblur="passCheck()"> 
                        </ul>
								<ul class="agree">
									<!-- <li><input type="checkbox">개인정보 제3자 제공에 동의합니다(선택사항)</li> -->
									<li class="ag_button"><input type="button" id="btn" value="확인" onclick="location.href='.jsp'"/></li>
								</ul>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!--END Container-->




		<!--Footer-->
		<jsp:include page="../include/footer.jsp"></jsp:include>
		<!--END Footer-->

	</div>
	<!--END Wrap-->
</body>
</html>