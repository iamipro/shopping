<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="../css/contents.css" rel="stylesheet" type="text/css" /> -->
<!-- <link href="../css/default.css" rel="stylesheet" type="text/css" /> -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<link href="/web/reply/reply.css" rel="stylesheet" />


</head>
<body>

   <div id="wrap">
      <!-- header -->
      <jsp:include page="../cart/topGnb.jsp"></jsp:include>
      <!--// header -->

      <div id="sub_container">
         <div id="contentsWrap" class="sub_con5">
            <div class="board_form">
               <div class="con_title">
                  <p>게시판 상세보기</p>
               </div>
               <div class="contents">
                  <div class="btnSet clfix mgb15">
                     <span class="fr"> <span class="button"><a href="#">물품구매</a></span>
                        <span class="button"> <a
                           href="cartAdd.action?pk=${bean.pk}">장바구니</a></span> <span
                        class="button"><a href="productShopping.action">목록</a></span>
                     </span>
                  </div>
                  <table class="bbsList">
                     <colgroup>
                        <col width="400" />
                        <col width="100" />
                        <col width="" />
                     </colgroup>
                     <tr>
                        <th scope="col" class="fir">이미지</th>
                        <th scope="col">글번호</th>
                        <td>${bean ne null ? bean.pk : ''}</td>
                     </tr>
                     <tr>

                        <td class="fir" rowspan="7"><c:choose>
                              <c:when test="${bean ne null}">
                                 <img src="/web/upload/${bean.fileName}" width="400"
                                    height="400" />
                              </c:when>
                              <c:otherwise>
                                 <img src="http://via.placeholder.com/400x400" width="400"
                                    height="400" />
                              </c:otherwise>
                           </c:choose></td>
                        <th scope="col">아이디</th>
                        <td>${bean ne null ? bean.id : ''}</td>
                     </tr>
                     <tr>
                        <th scope="col">상품이름</th>
                        <td>${bean ne null ? bean.productName : ''}</td>
                     </tr>
                     <tr>
                        <th scope="col">가격</th>
                        <td>${bean ne null ? bean.productPrice : ''}</td>
                     </tr>
                     <tr>
                        <th scope="col">원산지</th>
                        <td>${bean ne null ? bean.productOrigin : ''}</td>
                     </tr>
                     <tr>
                        <th scope="col">카테고리</th>
                        <td>${bean ne null ? bean.productCategory : ''}</td>
                     </tr>
                     <tr>
                        <th scope="col">등록일</th>
                        <td>${bean ne null ? bean.regdate : ''}</td>
                     </tr>
                  </table>

               </div>
            </div>
         </div>
      </div>





            <!-- 덧글 div-->
<!--             
            <div class="cmt_comm">
               <form action="#">
                  <fieldset class="fld_cmt">
                     <legend class="screen_out">댓글 작성</legend>
                     <textarea class="tf_cmt" cols="115" rows="5" title="한줄 토크를 달아주세요">한줄 토크를 달아주세요! (300자)</textarea>
                     <button type="submit" class="btn_cmt">등록</button>
                     <p class="info_append">
                        <span class="screen_out">입력된 바이트 수 : </span>
                        <span class="txt_byte">55</span> / 300자 <span class="txt_bar">|</span>
                        <a href="#none">댓글 운영원칙</a>
                     </p>
                  </fieldset>
               </form>
               <strong class="screen_out" style="float: left;">전체 댓글</strong>
               <div class="list_cmt">
                  <div class="cmt_head"></div>
                  <div class="cmt_body">
                     <span class="info_append" style="float: left;"> <span
                        class="txt_name">글쓴이</span> <span class="txt_bar">|</span>
                        <span class="txt_time">2013.01.01 14:22</span>
                     </span> </br>
                     <p class="txt_desc" align="left">댓글 내용이 나오는 곳...댓글댓글 내용이 나오는 곳...댓글 내용이 나오는 곳...댓글 내용이 나오는 곳...</p>
                  </div>
                  <div class="cmt_foot">
                     <a href="#none">답글</a><span class="txt_bar">|</span>
                     <a href="#none">수정</a><span class="txt_bar">|</span>
                     <a href="#none">삭제</a><span class="txt_bar">|</span>
                     <a href="#none">신고</a>
                  </div>
               </div>
            </div>
 -->
            <!--덧글 div 끝 -->








      <div class="container">
<div class="col-xs-12 panel panel-default">
   <div class="panel"></div>
   <form action="/web/replyInsert.do?cmd=replyInsert" name="replyFrm#" method="post" class="form-horizontal">
      <input type="hidden" name="id" id="replyId" value="${id}" />
      <input type="hidden" name="infoPk" value="${bean.pk}" />
      <div class="form-group">
         <div class="col-xs-9 col-sm-10 col-md-11">
            <textarea class="form-control" rows="3" placeholder="한줄 토크를 달아주세요! (300자)" id="reply" name="replyContents"></textarea>
         </div>
         <!-- <button class="btn btn-default" type="submit">Button</button> -->
         <input type="button" class="col-xs-3 col-sm-2 col-md-1 btn btn-success btn-lg" name="replyBtn" id="" value="댓글" />
         <p class="col-xs-3 col-sm-2 col-md-1 text-right" style="padding-left:10px;" id="sw">
            <label class="text-danger" id="tAreaLengthShow">0</label>
            <label class="text-default">/ 300</label>
         </p>
      </div>
   </form>
</div>
<div class="list-group">
   <c:forEach var="e" items="${reply}" varStatus="cnt">            
      <!-- Result Replay object -->
      <c:choose>
         <c:when test="${e.no eq e.pnum}">
            <div class=" comment-first " name="${e.pnum}">
         </c:when>
         <c:otherwise>
            <div class=" comment-second " name="${e.pnum}">
         </c:otherwise>
      </c:choose>
         <a href="javascript:(function() {})()" class="media list-group-item col-xs-12" name="${e.pnum}">
         
            <c:choose>
               <c:when test="${e.no eq e.pnum}">
                     <div class="col-xs-0"></div>
               </c:when>
               <c:otherwise>
                     <div class="col-xs-1"></div>
               </c:otherwise>
            </c:choose>
         
                  <!-- <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-thumbs-up"></span> Like</a> -->
                  
            <span class="badge">${e.reply}</span>
            <div class="media-left">
               <img src="/web/img/img_avatar${(e.name eq ' - ' ? 5 : (cnt.count%4) + 1)}.png" class="media-object" width="50px">
            </div>
            <div class="media-body list-group-item-heading">
               <h4 class="media-heading text-left">
                  ${e.name} 
                  <small><i class=" list-group-item-text">Posted on ${e.regdate}</i></small>
                  <!-- ONLY ONE DEPTH -->
                  <c:if test="${e.no eq e.pnum}">
                     <span class="btn btn-xs btn-info none" id="${e.no}">답글</span>
                  </c:if>
                  <span class="btn btn-xs btn-danger" id="" onclick="del(${id eq e.id}, ${e.no}, ${bean.pk})">삭제</span>
                  <span class="btn btn-xs btn-default" onclick="toggleLikeBtn(this)"><span class="glyphicon glyphicon-thumbs-up"></span> Like</span>
                  249 Likes
               </h4>
               <p class="text-left">${e.contents}</p>
            </div>
         </a>
         <c:choose>
            <c:when test="${e.no eq e.pnum}">
                <div class="col-xs-12 panel panel-default reply-hey reply-hey-${e.no}" class="comment-the-reply-toggle">
            </c:when>
            <c:otherwise>
               <div class="col-xs-1"></div>
               <div class="col-xs-11 panel panel-default reply-hey reply-hey-${e.no}" class="comment-the-reply-toggle">
            </c:otherwise>
         </c:choose>
            <div class="panel"></div>
            <form action="/web/replyInsert.do?cmd=replyInsert" name="replyFrm#${e.no}" method="post" class="form-horizontal">
               <input type="hidden" name="job" value="reply"/>
               <input type="hidden" name="id" id="replyId${e.no}" value="${id}" />
               <input type="hidden" name="infoPk" value="${bean.pk}" />
               <input type="hidden" name="ref"  value="${e.ref}"/>
               <input type="hidden" name="pnum" value="${e.no}"/>
               <div class="form-group">
                  <div class="col-xs-9 col-sm-10 col-md-11">
                     <textarea class="form-control" rows="3" placeholder="한줄 토크를 달아주세요! (300자)" id="reply${e.no}" name="replyContents"></textarea>
                  </div>
                  <!-- <button class="btn btn-default" type="submit">Button</button> -->
                  <input type="button" class="col-xs-3 col-sm-2 col-md-1 btn btn-success btn-lg" name="replyBtn" id="${e.no}" value="댓글" />
                  <p class="col-xs-3 col-sm-2 col-md-1 text-right" style="padding-left:10px;" id="sw">
                     <label class="text-danger" id="tAreaLengthShow${e.no}">0</label>
                     <label class="text-default">/ 300</label>
                  </p>
               </div>
            </form>
         </div>
      </div>
   </c:forEach>
</div>
      </div>




      <!--Footer-->
      <jsp:include page="../cart/footer.jsp"></jsp:include>
      <!--END Footer-->
   </div>
</div>













   <!-- <script type="text/javascript" src="../script/jquery-1.7.2.js"></script> -->
   <!-- <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script> -->
   <script src="//code.jquery.com/jquery.min.js"></script>
   <script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
   $("textarea").keyup(function(e){
      var areaLength = $(this).val().length;
      var tAreaLengthShow = $("#tAreaLengthShow" + $(this).attr("id").substring("reply".length));
      
      tAreaLengthShow.html(areaLength);
      
      if(areaLength == 0 || areaLength > 300){
         tAreaLengthShow.attr("class", "text-danger");
      }else{
         tAreaLengthShow.attr("class", "text-info");
      }
   });
   
   $("input[name='replyBtn']").click(function() {
      var frmName = "replyFrm#"+$(this).attr("id");      
      var no = $(this).attr("id");      
//      alert($("form[name='"+frmName+"']").replyContents);
//      alert($("#reply"+no).val());
//      console.log($("#replyId"+no).val());
//      if(!$("replyFrm#"+$(this).attr("id")).id.value) {
      if($("#replyId"+no).val().length == 0) {
         alert("로그인 하세요!");
         location.href = "/web/cart/adminLogin.jsp";
      } else if($("#reply"+no).val().length == 0) {
         alert("입력하세요!");
      } else if($("#reply"+no).val().length > 300) {
         alert("300자 이하!!");
      } else {
         $("form[name='"+frmName+"']").submit();
      }
   });
});


$(document).ready(function(){
   
   //덧글 
   $(".comment-first").css("height", "10px");
   $(".comment-first .list-group-item").click(function(dom) {
      $(".comment-first .list-group-item").each(function(){
         $(".comment-first > .list-group-item").attr("class", $(".comment-first > .list-group-item").attr("class").replace(" active", ""));
      });
      $(".comment-second > .list-group-item").each(function(){
         $(".comment-second > .list-group-item").attr("class", $(".comment-second > .list-group-item").attr("class").replace(" active", ""));
      });
      $(".comment-third > .list-group-item").each(function(){
         $(".comment-third > .list-group-item").attr("class", $(".comment-third > .list-group-item").attr("class").replace(" active", ""));
      });
      $(this).attr("class", $(this).attr("class") + " active");
      
      var groupNum = $(this).attr("name");
      $(".comment-second").each(function() {
         if($(this).attr("name") == groupNum) {
            $(this).show(100);
         } else {
            $(".comment-third").hide();
            $(this).hide();
         }
      });
      
   });

   //대 덧글
   $(".comment-second").hide();
   $(".comment-second").css("height", "10px");
   $(".comment-second > .list-group-item").click(function(dom) {
      $(".comment-second > .list-group-item").each(function(){
         $(".comment-second > .list-group-item").attr("class", $(".comment-second > .list-group-item").attr("class").replace(" active", ""));
      });
      $(".comment-third > .list-group-item").each(function(){
         $(".comment-third > .list-group-item").attr("class", $(".comment-third > .list-group-item").attr("class").replace(" active", ""));
      });
      $(this).attr("class", $(this).attr("class") + " active");

      var groupNum = $(this).attr("name");
      $(".comment-third").each(function() {
         if( $(this).attr("name") == groupNum) {
            $(this).show(100);
         }
      });
   });

   //대 대 덧글
   $(".comment-third").css("display", "none");
   $(".comment-third").css("height", "10px");
   /* 
   $(".comment-third > .list-group-item").click(function(dom) {
      $(".comment-third").each(function(){
         $(".comment-third > .list-group-item").attr("class", $(".comment-third > .list-group-item").attr("class").replace(" active", ""));
      });
      $(this).attr("class", $(this).attr("class") + " active");
   });
    */

   $(".reply-hey").hide();
   $("span.none").click(function(){
      $(".reply-hey").hide();
      $(".reply-hey-"+this.id).toggle();
   });
});

function del(authOk, no, infoPk) {
   if(authOk) {
      location.href='/web/replyInsert.do?cmd=replyInsert&job=del&no='+no+'&infoPk='+infoPk;
   } else {
      alert("허가되지 않은 유저 이십니다.");      
   }
}

function toggleLikeBtn(o) {
   var cName = o.children[0].className;
   var headLength = "glyphicon glyphicon-thumbs-".length;
   switch(cName.substring(headLength)) {
   case "up":
      o.children[0].className = cName.substring(0, headLength) + "down"
      o.innerHTML = o.innerHTML.replace("Like", "Unlike");
      o.className = o.className.replace("btn-default", "btn-primary");
      break;
   case "down":
      o.children[0].className = cName.substring(0, headLength) + "up"
      o.innerHTML = o.innerHTML.replace("Unlike", "Like");
      o.className = o.className.replace("btn-primary", "btn-default");
      break;
   }
}
</script>


</dy>
</html>









