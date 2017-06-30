<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
/* 	$(function() {
		  $("input#search").click(function(){
			  $.getJSON(
						"https://www.flickr.com/services/feeds/photos_public.gne?tags="+$("input#data").val()+"&tagmode=any&format=json&jsoncallback=?",
						function(v) {
                             //$("body").text(v);                
						     /* $(v.items).each(function(i,dom){
						    	//$("div#dv span").append(dom.title); 
						    	 alert(this['title']+' '+this.title+' '+d.title+' '+$(d).attr("title")+" "+d['title']);
						    	
						     }); */
						  /*   $("span").remove();
                             $.each(v.items,function(i,dom){
                            	$("div#dv").append("<span><img src="+dom.media.m+" width=100 height=100></span>");
                             });		    	 
						     
						     
						});

			  
		  });
		
				
	});
	
 */	

	$(function() {
	   $('input[name="search"]').click(function() {      
	      $.getJSON('https://www.flickr.com/services/feeds/photos_public.gne?tags='+$('input#data').val()+'&tagmode=any&format=json&jsoncallback=?',
	      function(json) {
	         
	         //$("body").text(vv);
	         /* $(vv.items).each(function(i,dom){
	         $("div span").append(dom.title); 
	         }); */
	         
	         //alert(vv['modified']);   
	         /*$(vv.items).each(function(i,d){
	            alert(this['title']+' '+this.title+' '+d.title+' '+$(d).attr("title")+" "+d['title']);
	         }); */
	         
	         //$("div").remove(); 
	         /*  $.each(vv.items,function(i,dom){
	             $("div").append("<span><img src="+dom.media.m+" width=300 height=300></span>");
	          }); */
	         
	         var sb = "";
	         sb += 'TITLE : ' + json.title + '<br />';
	         sb += 'LINK : ' + json.link + '<br />';
	         sb += 'DESCRIPTION : ' + json.description + '<br />';
	         sb += 'MODIFIED : ' + json.modified + '<br />';
	         sb += 'GENERATOR : ' + json.generator + '<hr />';
	         sb += '<table border="1">';
	         
	            sb += '<tr>';
	            sb += '<th>TITLE</th>';
	            sb += '<th>LINK</th>';
	            sb += '<th>MEDIA</th>';
	            sb += '<th>DATE_TAKEN</th>';
	            sb += '<th>DESCRIPTION</th>';
	            sb += '<th>PUBLISHED</th>';
	            sb += '<th>AUTHOR</th>';
	            sb += '<th>AUTHOR_ID</th>';
	            sb += '<th>TAGS</th>';
	            sb += '</tr>';
	            sb += '<tr>';
	         for (var i = 0; i < json.items.length; i++) {            
	            sb += '<th>' + json.items[i].title + '</td>';
	            sb += '<td>' + json.items[i].link + '</td>';
	            sb += '<td><img src="' + json.items[i].media['m'] + '" /></td>';
	            sb += '<td>' + json.items[i].date_taken + '</td>';
	            sb += '<td>' + json.items[i].description + '</td>';
	            sb += '<td>' + json.items[i].publicshed + '</td>';
	            sb += '<td>' + json.items[i].author + '</td>';
	            sb += '<td>' + json.items[i].author_id + '</td>';
	            sb += '<td>';
	            tags = json.items[i].tags.split(' ');
	            for (var j = 0; j < tags.length; j++) {
	               var str= tags[j].toString();
	               var flag = str.length > 0;
	               if(flag) {
	                  sb += '<button>';
	                  sb += '#' + str;
	                  sb += '</button>';
	               }
	            }
	            sb += '</td>';
	            sb += '</tr>';
	         }
	         sb += '</table>';
	         sb += '<hr />';
	         
	         $('div#dv').html(sb);
	      });
	   });
	});
</script>
</head>
<body>
 <input type="text" name="data" id="data"><input type="button" id="search" name="search" value="검색"> 
 <div id="dv"> <span></span></div>

</body>
</html>