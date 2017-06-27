<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="/web/css/contents.css" rel="stylesheet" type="text/css" /> -->
<link href="/web/css/default.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>




<script>
var cnt=0;
var pk=0;
$(document).ready(function(){
	
	$("a#search").click(function(){
     if($("select#query").val()=='empty'||$("input#data").val().length==0){
    	 alert('Search Data Empty');
    	 //alert($("select#query").attr)
    	 $("select#query").prop("selectedIndex",0);
    	 $("input#data").val('');
    	 $("input#data").focus();
    	 
     }else{
    	 $("form[name='sFrm']").submit();
     }
		
	});
	
	$("a").click(function(){
		//alert($(this).attr("id"));
		//alert(this.id);
		
		if($(this).attr("name")=='mod'){
		$("#hi").html("수정");	
		$("a#hi").attr("name","modify");	
		pk=this.id;
		$.ajax({url:'/web/productInfo.do?cmd=productInfo&pk='+this.id,
			    dataType:'JSON',
			    success:function(v){
			    	/* console.log(v); */
			    	$("input[name='productName']").val(v['productName']);
			    	$("input[name='productOrigin']").val(v.productOrigin);
			    	$("input[name='productPrice']").val(v['productPrice']);
			    	//$("input[name='productCategory']").val(v['productName']);
			    	$("select").val(v.productCategory);
			    	$("span#show").show(100); 
			    	//$("span#show img").attr("src","/web/upload/"+v.fileName);
			    	 $("span#show img").attr({src:'/web/upload/'+v.fileName,
			    		                     width:'50',
			    		                     height:'50'}); 
			    	 }
			    	
			    
		});//Ajax
      }//if
		$("a[name='modify']").click(function(){
			
			$("form[name='frm']").attr("action",$("form[name='frm']").attr("action")+"&job=mod&pk="+pk)
			$("form[name='frm']").submit();			
		});
       if($(this).attr("name")=='del'){
    	  
           location.href="deleteProduct.do?cmd=deleteProduct&pk="+this.id;
       }
      
	});
	
	 $("a#hi[name='insert']").click(function(){
		  $("input[class='inputText']").each(function(){
			 if($(this).val().length==0){
				 alert('['+$(this).attr("name")+']'+ "  Check");
				 cnt++;
				return false; 
			 } 
		  });
		  alert('insert');
		  if(cnt==0)$("form[name='frm']").submit();
	 });	
});
 
</script>
</head>
<body>
 
	<div id="wrap">
		<!-- header -->
 		<jsp:include page="/include/topGnb.jsp"></jsp:include> 
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">   
		            <div class="con_title" >
		               <p>상품등록/보기/수정</p>   
		            </div>
			
			
			  
				<div class="contents">
					<div class="btnSet clfix mgb15">
						<span class="fr"> <span class="button"><a href="adminlist.do?cmd=adminlist">목록</a></span>
						</span>
					</div>
                <form action="adminlist.do?cmd=adminlist" method="post" name="sFrm" >
					<table class="bbsWrite mgb35">
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
					<div class="clfix">
						<div class="tbWrapLt">
							<table class="bbsList">
								<colgroup>
									<col width="30" />
									<col width="100" />
									<col width="100" />
									<col width="100" />
									<col width="100" />
								</colgroup>
								<thead>								
								
									<tr>
										<th scope="col">NO.</th>
										<th scope="col">상품명</th>
										<th scope="col">모델</th>
										<th scope="col">가격</th>
										<th scope="col">상태</th>
										
									</tr>
								</thead>

   								<tbody>
	                                <c:forEach var="i" items="${adminList}" varStatus="ct" >		
									<tr>
										<td>${ct.count }</td>
										<td>${i.productName}</td>
										<td><img src="/web/upload/${i.fileName}" width="50" height="50"></img></td>
										<td>${i.productPrice} </td>
					
										<td>
										<span class="buttonFuc"><a href="#" id="${i.pk}" name="mod">수정</a></span><span
											class="buttonFuc"><a href="#" id="${i.pk}" name="del">삭제</a></span>
										</td>
									</tr>
									</c:forEach>					
								</tbody>
							</table>
						</div>

						<div class="tbWrapRt">
							<ul class="tabA clfix mgb15">
								<li class="over"><a href="#info1" id="reg">01. 상품등록</a></li>
							</ul> 
 		              	<form action="/web/productInsert.do?cmd=productInsert" name="frm" method="post" enctype="multipart/form-data">
							<div id="info1" class="tbWrapCnt" style="display: block;">
								<table class="bbsWrite mgb10">
									<caption></caption>
									<colgroup>
										<col width="95" />
										<col />
									</colgroup>
									<tbody>
										<tr>
											<th>상품명</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productName" class="inputText"
												size="50" id="product" /></td>
										</tr>
										<tr>
											<th>원산지</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productOrigin" class="inputText"
												size="50" id="origin"  /></td>
										</tr>
										<tr>
											<th>상품가격</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productPrice" class="inputText"
												size="50" id="price" /></td>
										</tr>
										<tr>
											<th>카테고리</th>
											<td>
											<select style="width: 200px;" name="productCategory" id="category" class="inputText">
												<option selected="selected">선택하세요</option>
												<option value="cloth">의류/잡화</option>
												<option value="electronic">전자제품</option>
												<option value="furniture">가구</option>
												<option value="cosmetic">화장품/향수</option>
												<option value="foods">식품/주류</option>
												<option value="car">차량용품</option>													
												<option value="others">기타</option>													
											</select>
											</td>
										</tr>
										<tr>
											<th>상품이미지1</th>
											<td class="alignM"><input type="file" name="fileName" id="fileName" size="10" /> <span id="show" style="display:none;">
												   <img src="" id="img" name="img"></img>  
												</span>
												 </td>
										</tr>
									</tbody>
								</table>
							</div>
							</form>
						</div>

						<p class="agr">
							<span class="button" id="sm"><a href="#" id="hi" name="insert">저장</a></span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
  
      <jsp:include page="/include/footer.jsp"></jsp:include>
  	
   	</div>
	
</body>
</html>