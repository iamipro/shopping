<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>������</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="../css/contents.css" rel="stylesheet" type="text/css" /> -->
<link href="../css/default.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link href="/web/css/contents.css" rel="stylesheet" type="text/css" />
<link href="/web/reply/reply.css" rel="stylesheet" />

<script type="text/javascript">
	$(document).ready(function() {
		$("a[href='#none']").click(function(){
			$("form#"+this.id).toggle();
			
		});
		
		$("button").click(function(){
			//alert(this.type);
			$("form[id='frm"+$(this).attr("id")+"']").submit();
			//alert($(this).attr("id"));
		});
		$("textarea").click(function(){
			$(this).html('');
			$(this).keyup(function(e){
				if($(this).val().length>300){
					$("span#sw").css("color","red");
					$("span#sw").html( 300-($(this).val().length));
				}else{
				$("span#sw").html( ($(this).val().length));
				}
			});
		});

	});
</script>
</head>
<body>
 ${id}
	<div id="wrap">
		<!-- header -->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">
					<div class="con_title">
						<p>�Խ��� �󼼺���</p>
					</div>
					<div class="contents">
						<div class="btnSet clfix mgb15">
							<span class="fr"> <span class="button"><a href="#">��ǰ����</a></span>
							 
							  <%
							  
							   if(request.getAttribute("id")!=null){
								   String id= (String)request.getAttribute("id");
								   System.out.println(id);
							  %>
							 
								<span class="button"> <a href="cartAdd.do?cmd=cartAdd&pk=${bean.pk}&id=<%=id%>">��ٱ���</a></span>
							     <%
							   }
							     %>
							 
								<span class="button"><a href="/web/shoppingList.do?cmd=shoppingList">���</a></span>
							</span>
						</div>
						<table class="bbsList">
							<colgroup>
								<col width="400" />
								<col width="100" />
								<col width="" />
							</colgroup>
							<tr>
								<th scope="col" class="fir">�̹���</th>
								<th scope="col">�۹�ȣ</th>
								<td>${bean.pk }</td>
							</tr>
							<tr>
								<td class="fir" rowspan="7"><img src="/web/upload/${bean.fileName}" width="400" height="400" /></td>
								<th scope="col">���̵�</th>
								<td>${bean.id }</td>
							</tr>
							<tr>
								<th scope="col">��ǰ�̸�</th>
								<td>${bean.productName }</td>
							</tr>
							<tr>
								<th scope="col">����</th>
								<td>${bean.productPrice }</td>
							</tr>
							<tr>
								<th scope="col">������</th>
								<td>${bean.productOrigin}</td>
							</tr>
							<tr>
								<th scope="col">ī�װ�</th>
								<td>${bean.productCategory }</td>
							</tr>
							<tr>
								<th scope="col">�����</th>
								<td>${bean.regdate}</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- ���� div-->
				<div class="cmt_comm">
				   <div id="so">
					<form id="frmnewBtn" action="/web/replyInsert.do?cmd=replyInsert" method="post">					
						<fieldset class="fld_cmt">
							<legend class="screen_out">��� �ۼ�</legend>
							<input  type="hidden" name="id" value="java"/>
							<input  type="hidden" name="infoPk" value="${bean.pk}"/>
							<textarea name="contents" class="tf_cmt" cols="115" rows="5" title="���� ��ũ�� �޾��ּ���">���� ��ũ�� �޾��ּ���! (300��)</textarea>
							<button type="button" class="btn_cmt" id="newBtn">���</button>
							<p class="info_append">
								<span class="screen_out">�Էµ� ����Ʈ �� : </span>
								<span class="txt_byte" id="sw">0</span> / 300�� <span class="txt_bar">|</span>
								<a href="#none">��� ���Ģ</a>
							</p>
						</fieldset>
					</form>
					</div>
					<strong class="screen_out" style="float: left;">��ü ���</strong>
					
					 <c:forEach var="i" items="${reply}">
					 <c:choose>
					   <c:when test="${i.no eq i.pnum}">
					   
					   <div class="list_cmt">
					
					   </c:when>
					   
					   <c:otherwise>
					<div class="list_cmt" style="margin-left:150px;">
					   
					   </c:otherwise>
					 
					 </c:choose>
					 
					
						<div class="cmt_head">���</div>						
						<div class="cmt_body">						  
							<span class="info_append" style="float: left;"> <span
								class="txt_name">�۾���${i.id}</span> <span class="txt_bar">|</span>
								<span class="txt_time">${i.regdate }</span>
							</span> </br>
							<p class="txt_desc" align="left">${i.contents}</p>
						</div>
						<div class="cmt_foot">
							<a href="#none" id="frm${i.no}">���</a><span class="txt_bar">|</span>
							<a href="#none">����</a><span class="txt_bar">|</span>
							<a href="#none">����</a><span class="txt_bar">|</span>
							<a href="#none">�Ű�</a>
						</div>						
						
					</div>
					<form id="frm${i.no}" style="display: none;" action="/web/replyInsert.do?cmd=replyInsert" method="post">					
						<fieldset class="fld_cmt">
							<legend class="screen_out">��� �ۼ�</legend>
							<input  type="text" name="job" value="reply"/>
							<input  type="text" name="ref" value="${i.ref}"/>
							<input  type="text" name="pnum"value="${i.no}"/>							 
							<input  type="hidden" name="id" value="java"/>
							<input  type="hidden" name="infoPk" value="${bean.pk}"/>
							<textarea name="contents" class="tf_cmt" cols="115" rows="5" title="���� ��ũ�� �޾��ּ���">���� ��ũ�� �޾��ּ���! (300��)</textarea>
							<button type="button" class="btn_cmt" id="${i.no}">���</button>
							<p class="info_append">
								<span class="screen_out">�Էµ� ����Ʈ �� : </span>
								<span class="txt_byte" id="sw">0</span> / 300�� <span class="txt_bar">|</span>
								<a href="#none">��� ���Ģ</a>
							</p>
						</fieldset>
					</form>
					</c:forEach>                       
				</div>

				<!--���� div �� -->

			</div>
		</div>
	</div>
	</div>



	<!--Footer-->
	<jsp:include page="../include/footer.jsp"></jsp:include>
	<!--END Footer-->
	</div>
</body>
</html>






