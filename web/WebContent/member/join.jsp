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
   
    
    function birthCheck(){
    	var obj1 = document.getElementById("year");
    	var obj2 = document.getElementById("month");
    	var obj3 = document.getElementById("day");
    	var obj4 = document.getElementById("birth");
    	obj4.value=obj1.value+obj2.value+obj3.value;
    	 
    	var year = Number(obj4.value.substr(0,4));
    	var month = Number(obj4.value.substr(4,2));
    	var day = Number(obj4.value.substr(6,2));
    	var today = new Date();
    	var yearNow = today.getFullYear();
    	var adultYear = yearNow-20;
    	
    	if(year<1900|| year>adultYear){
    		alert("년도를 확인하세요"+adultYear+"년 생 출생 이전 출생자만 등록 가능합니다.");
    		return false;
    	}
    	if(month<1||month>12){
    		alert("달은 1월 부터 12월까지 입력 가능합니다.");
    		return false;    	
    	}
    	if(day<1|| day>31){
    		alert("일은 1일부터 31일까지 입력가능합니다.");
    		return false;
    	}
    	if((month==4||month==6||month==9||month==11)&&day==31){
    		alert(month+"월은 31일이 존재하지 않습니다.");
    		return false;
    	}
    	if(month==2){
    		var isleap = (year%4==0 && (year % 100 !=0 || year % 400==0));
    		if(day>29||(day==29&&isleap)){
    			alert(year+"년 2월은" + day+ "일이 없습니다.");
    			return false;
    		}
    	}
    	
    }

    function genderCheck(obj){
    	var obt= document.getElementById("gender");	
    	if(obj==1){
    		obt.value='남';
    	}else if(obj==2){
    		obt.value='여';
    	}
     
    }
    
    function mailAdd() {
		var obj = document.joinFrm;
		
		obj.email.value= obj.email1.value+ '@'+ obj.email3.value;
		/* if (obj.email2.value!="") {
			obj.email.value = obj.email1.value + '@' + obj.email2.value;
		} */
	}
    
     function mailCheck(){
    	var obj =document.joinFrm;
    	obj.email2.value=obj.email3.value;
    	
    	
    } 
    function zipCheck(){
    	window.open("address.jsp", "address",
		"left=800,top=400,width=400,height=400");
    }
    function addresssum() {
		var obj = document.joinFrm;
		obj.addr.value = obj.zip.value + '/'
				+ obj.addr1.value + ' ' + obj.addr.value + '#'
				+ obj.addr3.value;
		 
	}
     
    function passCheck(){
    	var obj = document.joinFrm;
    	if(obj.pw1.value==obj.pw2.value){
    		alert('패스워드가 일치합니다.');
    		obj.pw.value=obj.pw1.value;
    	}
    }
    function nameCheck() {
		 
		var obj1 = document.getElementById("name1");
    	var obj2 = document.getElementById("name2");
    	var name = document.getElementById("name");
    	name.value= obj1.value+obj2.value;
    	if (!(name.value && name.value.length >= 2 && name.value.length <= 8)) {
			alert('Name 2~8');
			return false;
			if (name.value && name.value.length != -1) {
				name.value = name.value.substring(0, 7);
				return true;
			}
		}
		if (name.value && name.value.length == 1) {
			name.value = '';
			return false;
		}  
    	 
	}
    
	function id_check(o) {

		var regId = /^[A-Za-z0-9]{8,12}$/;

		if(!regId.test(o.value)) {

			alert('영문과 숫자 8~12자 이내로 입력하세요.');

			 

			return false;

		}

		return true;

	}

	function email_check(o) {

		var regEmail = /\w{3,}[@][\w\-]{2,}([.]([\w\-]{2,})){2,3}$/;

		if(!regEmail.test(o.value)) {

			alert('올바른 이메일 주소를 입력하세요.');

			o.focus();

			return false;

		}

		return true;

	}
	function tel_check() {
         
		 var obj = document.joinFrm
		
		var regTel = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-[0-9]{3,4}-[0-9]{4}$/;

		if(!regTel.test(obj.phone.value)) {

			alert('올바른 전화번호를 입력하세요.');
            
            obj.phone.value='';
			return false;

		}

		return true;

	}

     
    function idCheck(){
      	var obj = document.joinFrm;
     
    	var regId = /^[A-Za-z0-9]{6,12}$/;
  
    	 
    	if(!regId.test(obj.id.value)){
 		   alert('id를 6~12사이에서 영문과 숫자를 모두 써주세요.');
 		    return false;
 		    obj.id.value='';
 		    
 	   }
    	return true;
    	 
    	 
    }
    
    function apply(){
    	 
    	var obj = document.joinFrm;
        if(obj.name.value!=""&&obj.birth.value!=""&&obj.gender.value!=""&&obj.phone.value!=""&&obj.addr.value!=""&&obj.id.value!=""&&obj.pw.value!=""){
        	
    	obj.submit();
        }else{
        	alert('입력사항을 모두 입력해주세요');
        }
    	
    	
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
	                       <form action="/web/joinMember.do?cmd=joinMember" method="post" name="joinFrm">
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
									<li><input type="text"  required="required" id="day" name="day" value="" onblur="birthCheck()"></li><br>
									<input type="hidden" id="birth" name="birth" value=""/> 
									<br>
									<br>
								  <div>19901005형태로 써주세요</div>
								</ul>
								<ul class="join_mw">
									<li>성별<span>*</span></li>
									<input type="radio" name="gender1" value="m" onclick="genderCheck('1')"  />&nbsp; 남자
									<input type="radio" name="gender1"   value="w" onclick="genderCheck('2')"/>&nbsp; 여자
								        <input type="hidden" id="gender" name="gender" value="">
								</ul>

								<ul>
									<li>이메일주소</li>
									<li><input type="text" id="email1" required="required" name="email1" onblur="mailAdd()" ></li>
									<li><input type="hidden" id="email2" readonly="readonly" required="required" name="email2"></li>
									<li><select name="email3" id="email3" required="required" onclick="mailAdd()" onblur="mailAdd()">
											<option selected="selected" value="empty">선택하세요</option>
											<option value="naver.com">naver.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="nate.com">nate.com</option>
											<option value="daum.net">daum.net</option>
									</select></li>
									
									<li><input type="hidden" id="email" required="required" name="email"  readonly="readonly" value="" /></li>
									
								</ul>
								<ul>
									<li>휴대폰 번호<span>*</span></li>
									<!-- 여기에 안내문 . '-' 없이 입력해주세요.  -->
									<li><input type="text" id="phone"  name="phone" required="required" placeholder="000-0000-0000" onblur="tel_check()"></li>
								</ul>
							</div>

							<div class="join_r">
								<ul class="join_loca">
									<li>우편주소<span>*</span></li>
									<li>
									<input type="text" id="zip1" name="zip1" required="required">-&nbsp;&nbsp;
									<input type="text" id="zip2" name="zip2" required="required">&nbsp;
									<input type="hidden" id="zip" name="zip" value="">
									<input class="lo_button" type="button" value="우편번호확인" onclick="zipCheck()"></li>
									
									<li class="input_wh"><input type="text" id="addr1"name="addr1"  ></li>
									<li class="input_wh"><input type="text" id="addr2" name="addr2" placeholder="상세주소를 입력해주세요." onblur="addresssum()">
									<input type="hidden" id="addr" name="addr" value="">
									<input type="hidden" id="addr3" name="addr3" value=""></li>
								</ul>
								<ul class="join_id">
									<li>회원아이디<span>*</span></li>
									<li><input type="text" id="id" name="id" onblur="idCheck()">
									</li>
									<li id="resultIdCheck">영문&숫자 조합(6~12자리)</li>
								</ul>
									 <ul>
                           <li>비밀번호<span>*</span></li>
                           <li><input type="password" id="pw1" name="pw1" value="" required="required"></li>
							<span id="span1" style="display: none;">
							<font id="message1" color="blue" size="2"> 사용 가능합니다.</font>
							</span>
							</td>
                        </ul>
                        <ul>
                           <li>비밀번호 확인<span>*</span></li>
                           <li><input type="password" id="pw2" name="pw2" value="" onkeyup="passConfirmCheck(event)" onfocus="checkPass()" onblur="passCheck()" placeholder="8~20자리"></li>
                              <span id="span2" style="display: none;"><font id="message2" color="RED" size="2">비밀번호가 일치하지 않습니다.</font></span></td>
                              
                           <input type="hidden" id="pw" name="pw" value="" > 
                        </ul>
                        </form>
								<ul class="agree">
									<!--   <li><input type="checkbox">개인정보 제3자 제공에 동의합니다(선택사항)</li>   -->
									<li class="ag_button"><input type="button" id="apply" name="apply" value="확인" onclick="apply()"/></li>
								</ul>
							</div>
						
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