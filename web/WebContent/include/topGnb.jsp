<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="/web/css/default.css" />
<script src="../js/jquery-2.1.4.min.js" charset = "UTF-8"></script>
</head>
<script src="../js/myPage.js" charset="UTF-8"></script>

<body>
   <div id="header">
      <div class="header_wrap">
         <div class="bg_black_login">
            <ul class="korea">
               <li><img src="/web/img/korea.jpg"></li>
               <li>대한민국</li>
            </ul>
            <ul class="login">
               <li>
               
                 <%
                 if(session.getAttribute("admin")!=null){
                 
                 %>
                  <a href="/web/member/login.jsp" class="desc">관리자님 환영합니다.</a>
                  <%
                 }
                  %>
                     <%
                 if(session.getAttribute("user")!=null){
                 String name=(String)session.getAttribute("id");
                 %>
                  <a href="/web/member/login.jsp" class="desc"><%=name%>님 환영합니다.</a>
                  <%
                 }
                  %>
                      <input type="hidden" id="url" value="">
                      <!-- 액션명 받아오기 -->
                  <a href="/web/member/login.jsp" class="desc"> 로그인</a>
                  <a href="/web/logout.jsp" class="desc"> 로그아웃</a>
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
				    
				    <%
				  
				    if(session.getAttribute("admin")!=null){
				    %>
				    
					<a href="/web/adminlist.do?cmd=adminlist">
	 		    	<li><i style="padding:7px; font-size: 17px; background-color: turquoise; border-radius: 50%; color:snow;"  class="fa fa-product-hunt"></i></li>
					<li style="width:80px; margin-right:20px;">상품등록</li>
					</a>
				  <%
				 

				    }
				  %>
					
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
				</ul>
			</div>
		</div>
	</div>
</body>
</html>