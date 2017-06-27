<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>

<html lang="en">

<head>

  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>jQuery UI Button - Default functionality</title>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

  <link rel="stylesheet" href="/resources/demos/style.css">

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  <script>

  $( function() {

    $( ".widget input[type=submit], .widget a, .widget button" ).button();

    $( "button, input, a" ).click( function( event ) {

      event.preventDefault();

    } );

  } );

  </script>

</head>

<body>

<div class="widget">

  <h1>Widget Buttons</h1>

  <button>A button element</button>

 

  <input type="submit" value="A submit button">

 

  <a href="#">An anchor</a>

</div>

<h1>CSS Buttons</h1>

<button class="ui-button ui-widget ui-corner-all">A button element</button>

 

<input class="ui-button ui-widget ui-corner-all" type="submit" value="A submit button">

 

<a class="ui-button ui-widget ui-corner-all" href="#">An anchor</a>

 

 

</body>

</html>

    