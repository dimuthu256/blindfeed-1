<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">
    <title>BlindFeed</title>
    <!-- Bootstrap core CSS -->
    <link href='<c:url value="/css/bootstrap.css"></c:url>' rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href='<c:url value="/css/navbar-fixed-top.css"></c:url>' rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#btn1").click(function(){
   location.href="http://localhost:8080/blindfeed/validaccept.jsp";
  });
});
</script>
    <script>
$(document).ready(function(){
  $("#btn2").click(function(){
   location.href="http://localhost:8080/blindfeed/validreject.jsp";
  });
});
</script>

<script>
function myFunction() {
    alert("Thank You for your contribution");
}
</script>

    
  </head>
  <body>
    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><b>BlindFeed</b></a>
          </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li ><a href="userindex">නිවහන</a></li>
            <li><a href="record">දායකවන්න </a></li>
            <li class="active"><a href="#">නිරවද්‍යතාව තහවුරු කරන්න </a></li>
            <li><a href="userabout">විස්තර </a></li>
            <li><a href="usercontact">අපව සම්බන්ධ කර ගන්න</a></li>
            <li><a href="userhelp">උදව්</a></li>
          </ul>
          <form class="navbar-form navbar-right" role="form">
             <a id="user" class="btn btn-success" href="#" role="button">Your Logged as ${user}</a>
             <a id="logout" class="btn btn-success" href="logout" role="button">logout</a>
          </form>
          <ul class="nav navbar-nav navbar-right"> 
            <li class="active"></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="jumbotron">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="row clearfix">
      <div class="col-md-6 column">
        <h1>නිරවද්‍යතාව තහවුරු  කිරීම </h1>
        
        
        <table border="1">
		<!-- 
		PersonList is the object which contain available persons in the database
		its displayed iterately. using JSTL fname,lname,age is attribute of model class
		 -->
	
		
			<tr>
			<td>${PList.para_text}</td>
			<%-- <td>${PList.location}</td> --%>
			</tr>
			
		
	
	</table>
	
	</div>
	<br>
	<div class="col-md-6 column">
        <h4>Preview</h4>
    <br> <!--        
         <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="700" height="100"
    codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab">
    <param name="movie"  value="resources/singlemp3player.swf?file=resources/sound.mp3&backColor=990000&frontColor=ddddff&repeatPlay=true&songVolume=30" />
    <param name="wmode" value="transparent" />
    <embed wmode="transparent" width="400" height="30" src="resources/singlemp3player.swf?file=resources/sound.mp3&backColor=990000&frontColor=ddddff&repeatPlay=true&songVolume=30"
    type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
</object> -->

		<div>
			 <audio controls>
			
<source src="${loc_path}">
</audio> 
<%-- <<audio controls>
  
  <source src="${loc_path}" type="audio/mpeg">
Your browser does not support the audio element.
</audio> 
 --%>

		</div>

<br>
<button id="btn1" >අනුමත කරන්න </button>
<button id="btn2">ප්‍රතික්ශේප කරන්න </button>
<!-- <button type="button" onclick="alert('You have accepted the audio clip,,,,,,, thank you for your contribution,,,!')">Accept</button>
<button type="button" onclick="alert('You reject the audio clip,,,,,,, thank you for your contribution,,,!')">Reject</button> -->




        
      </div>
      
      </div>
      
      <div class="jumbotron">
        <center><p class="text-muted">Deadlock product - BlindFeed</p></center>
      </div>
    </div> <!-- /container -->
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src='<c:url value="/js/bootstrap.min.js"></c:url>'></script>
  </body>

</html>