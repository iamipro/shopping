/*function clockFunction(){
	var div=document.getElementById("dv");
	var now = new Date();
	div.innerHTML= now.getFullYear()+"/"+(now.getMonth()+1)+"/"+now.getDate()+"/"+now.getHours()+"/"+now.getMinutes()+"/"+now.getSeconds()+"/"+now.getMilliseconds();
	setTimeout("clockFunction()",100);
	
}*/

function clockFunction(){
	var div=document.getElementById("dv");
	var now=new Date();
	div.innerHTML=now.getFullYear()+"/"+(now.getMonth()+1)+"/"+now.getDate()+"/"+now.getHours()+"/"+now.getMinutes()+"/"+now.getSeconds()+"/"+now.getMilliseconds();
	setTimeout("clockFunction()",100);
}