<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="/web/css/default.css" />
<!-- <script src="../js/jquery-2.1.4.min.js" charset = "UTF-8"></script> -->
</head>
<!-- <script src="../js/myPage.js" charset="UTF-8"></script>
 -->
 <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<body>
   <div id="header">
      <div class="header_wrap">
         <div class="bg_black_login">
            <ul class="korea">
               <li><img src="../img/korea.jpg"></li>
               <li>대한민국</li>
            </ul>
            <ul class="login">
               <li>
                  <a href="/web/member/login.jsp" class="desc">로그인</a>
                      <input type="hidden" id="url" value="">
                      <!-- 액션명 받아오기 -->
                  <a href="/web/jsp/main.jsp" class="desc">님 로그아웃</a>
                </li>
               <li>|</li>
               <li>
                  <a href="/web/member/join.jsp" class="desc">회원가입</a>
                  <a href="/web/member/identity01.jsp" class="desc">마이페이지</a>
               </li>
            </ul>
         </div>

			<div class="header_gnb">
				<a href="/web/jsp/main.jsp"><p>
						<img alt="" src="/web/img/logo2.jpg">
					</p></a>
				<ul class="gnb_menu">
				
					<a href="/web/shoppingList.do?cmd=shoppingList">
	 		    	<li><i style="padding:7px; font-size: 17px; background-color: turquoise; border-radius: 50%; color:snow;"  class="fa fa-shopping-cart"></i></li>
					<li style="width:80px; margin-right:20px;">쇼핑</li>
					</a>
					<a href="/web/cart/cartList.jsp">
						<li><img src="/web/img/reserve.png" onmouseover="this.src='/web/img/reserve_on.png'" onmouseout="this.src='/web/img/reserve.png'"></li>
						<li style="width:80px; margin-right:20px;">장바구니</li>
					</a>

					<a href="/web/board/board.jsp">
					<li><img src="/web/img/sch.png" onmouseover="this.src='/web/img/sch_on.png'" onmouseout="this.src='/web/img/sch.png'"></li>
					<li style="width:80px; margin-right:20px;">게시판</li>
					</a>
					<!-- <i class="fa fa-list" style="padding:6px;font-size:16px;background-color:turquoise;border-radius:50%;color:snow;"></i> -->
					
				
				</ul>
			</div>
		</div>
	</div>
</body>
</html>