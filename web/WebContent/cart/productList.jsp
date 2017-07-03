
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fx" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<!--  관리자페이지 구현 X  -->

<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="../css/contents.css" rel="stylesheet" type="text/css" /> -->
<link href="../css/default.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="../js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="../js/design.js">

</script>
<script src="../script/jquery-1.7.2.js"></script>
<script >


   $(function(){
	 //$("div#wrap").slideUp(1000).slideDown(1000);
	$("#sv").click(function(){
		$("table#stable").show(1000).slidUp(1000);
	});
	 
 });  

$(document).ready(function(){
	 
	$("a#search").click(function(){
	 if($("select#query").val()=='empty'||$("input#data").val().length==0){
		 alert('SearchData Check');
		 $("select#query").prop("selectedIndex",0);
		 $("input#data").val('');
		 $("input#data").focus();
	 }else{
		 $("form[name='pFrm']").submit();
	 }	
			
		
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
		               <p>상품목록</p>   
		            </div>
	
				<div class="contents">
					<div class="btnSet clfix mgb15">
						<span class="fr"><span class="button"><a href="#" id="sv">SearchView</a></span>
						</span>
					</div>
                 <form action="/web/shoppingList.do?cmd=shoppingList" method="post" name="pFrm">
					<table class="bbsWrite mgb35"  id="stable" style="display: none;">
						<caption></caption>
						<colgroup>
							<col width="95" />
							<col width="395" />
							<col width="95" />
							<col />
						</colgroup>
						<tbody>
						<tr>
								<th>검색어</th>
								<td><select style="width: 200px;" id="query" name="query">
										<option selected="selected" value="empty">선택하세요</option>
										<option value="productName">상품명</option>
										<option value="productOrigin">원산지</option>
										<option value="productCategory">품목</option>
								</select>				 <input type="text" id="data" name="data" style="border:1px solid #ddd; height:20px;"  size="30" />
									<span class="button"><a href="#" id="search">검색</a></span></td>
					                  				
							</tr>
						</tbody>
					</table>
					</form>
							<table class="bbsList">
								<colgroup>
									<col width="80" />
									<col width="170" />
									<col width="170" />
									<col width="170" />
									<col width="170" />
									<col width="170" />
									<col width="170" />
									<col width="170" />
								</colgroup>
								<thead>								
								
									<tr>
										<th scope="col">NO.</th>																				
										<th scope="col">상품명</th>
										<th scope="col">이미지</th>
										<th scope="col">원산지</th>
										<th scope="col">가격</th>
										<th scope="col">종류</th>
										<th scope="col">날짜</th>
										<th scope="col">판매자</th>									
										
									</tr>
								</thead>

								<tbody>
							      
									<tr>
										
						          <c:forEach var="i" items="${shoppingList}" varStatus="cnt" >			
										<td>${cnt.count}</td>
										<td><a href="productInfoClient.do?cmd=productInfoClient&job=info&pk=${i.pk}&id=${id}">${i.productName}</a>
										 
										 </td>
										<td>
										<img src="/web/upload/${i.fileName}" width="50" height="50"></img></td>
										<td>${i.productOrigin}</td>
										<td>${i.productPrice} </td>
										<td>
										<c:choose>
									
							               <c:when test="${i.productCategory eq 'cloth'}">의류/잡화</c:when>
										   <c:when test="${i.productCategory eq 'electronic'}">전자제품 </c:when>
										   <c:when test="${i.productCategory eq 'furniture'}">가구</c:when>
										   <c:when test="${i.productCategory eq 'cosmetic'}">화장품/향수 </c:when>
										   <c:when test="${i.productCategory eq 'foods'}">식품/주류 </c:when>
										   <c:when test="${i.productCategory eq 'car'}">차량용품</c:when>
										   <c:when test="${i.productCategory eq 'others'}">기타</c:when>
										  
										</c:choose>
									 
										
										</td>
										<td>${i.regdate}</td>
										<td>${i.seller}</td>										
									</tr>
									</c:forEach>
								</tbody>
							</table>
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