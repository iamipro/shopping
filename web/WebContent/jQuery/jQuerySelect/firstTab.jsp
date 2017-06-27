<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!doctype html>

<html lang="en">

<head>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>jQuery UI Tabs - Default functionality</title>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="/resources/demos/style.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
	$(function() {

		$("#tabs").tabs();
        $("p").click(function(){
        	$(this).hide(1000).show(1000);
        	
        });
	});
	
</script>

</head>

<body>



	<div id="tabs">

		<ul>

			<li><a href="#tabs-1">t1</a></li>

			<li><a href="#tabs-2">t2</a></li>

			<li><a href="#tabs-3">t3</a></li>

		</ul>

		<div id="tabs-1">

			<p>text1</p>

		</div>

		<div id="tabs-2">

			<p>text2</p>

		</div>

		<div id="tabs-3">

			<p>text3</p>

			<p>text3</p>

		</div>

	</div>





</body>

</html>

