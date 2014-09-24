<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <li><a href="index.jsp">නිවහන</a></li>
            <li><a href="about.jsp">විස්තර</a></li>
            <li><a href="contact.jsp">අපගැන</a></li>
            <li class="active"><a href="#">උදව්</a></li>
            
          </ul>
          <form action="login1" class="navbar-form navbar-right" role="form" method="post" commandName="login_user">
            <div class="form-group">
              <input type="text" placeholder="Email" name="EMail" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" name="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">ඇතුළු වන්න</button>
             <a class="btn btn-success" href="regi" role="button">එක් වන්න අලුතෙන්</a>
          </form>
          <ul class="nav navbar-nav navbar-right"> 
            <li class="active"></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>උදව් </h1>
        <p>දෘශ්‍යාබාධිත  පුද්ගලයින්ගේ සුබසිද්ධිය සදහා කරගෙන යනු ලබන ව්‍යාපෘතියට ඔබ සාදරයෙන් පිළිගනිමු.මිලියන 250ක් වු ඔවුන්ගේ හුදකලා 
 ජීවිතවලට අර්ථයක් එක් කිරීමට ඔබට ද දැන් අප සමග එක් විය හැක.<br>

 1)ඔබ අප ව්‍යාපෘතිය සමග සාමාජිකත්වය ලබාගෙන නොමැති නම් "එක්වන්න අලුතෙන් " බොත්තම  ඔබා අප ව්‍යාපෘතියේ සාමාජිකත්වය ලබාගන්න.
සාමාජිකත්වය ලබාගත් පසු "දායකත්ව" බොත්තම මගින් දායකත්ව පිටුවට යොමු විය හැක.<br>
 2) දායකත්ව පිටුවේදී ඔබ විසින් තෝරාගනු ලැබූ භාෂාවට අදාල පොතක පරිඡ්චෙදයකින් කොටසක් පෙන්වනු ඇත.එම කොටස ඔබගේ පරිගණකයේ මයික්‍රෆෝනය බාවිතයෙන් කියවීම 
මගින් දායකත්වය සැපයීමආරම්භ කල හැක.එහිදී කරුණාකර පහත කරුණුවලට  ඔබගේ අවධානය යොමු කරන්න.<br>
	1.පළමුව ඔබට අදාල කොටස හොදින් කියවා අවබෝධයක් ලබාගන්න.<br>
	2.පටිගත කිරීමට හැකිතාක් නිහඩ පරිසරයක් තෝරාගන්න.<br>
	3.හැකිතාක් හැගීම් බර ලෙස කියවීම කරන්න<br>
3) ඔබට අදාල කොටස කියවීමෙන් අනතුරුව හඩ පටයට ඔබටම සවන් දිය හැකි අතර ශ්‍රවණය කිරීමට සුදුසු තත්වයේ තිබේනම් පමණක් උඩුගත කිරීමට කාරුණික වන්න.<br>
4) උඩුගත කිරීමට "යවන්න " බොතම භාවිත කරන්න.<br>
5) ඔබ පටිගත කිරීම්  10කට වඩා දායකත්වය ලබා දී ඇත්නම් ඔබට විශ්වාසවන්ත සාමාජිකත්වය ලබාගැනීමට ඉල්ලුම් කල හැකිය.<br>
6) විශ්වාසවන්ත සාමාජිකයකු වූ පසු ඔබට අන් අයගේ පටිගත කිරීම් වල නිරවද්‍ය භාවය තහවුරු කිරීමට ඔබගේ දායකත්වය ලබාදිය හැක .</p>
        
      </div>
      <div class="container">
        <center><p class="text-muted">මෙය deadlock හි නිර්මාණයකි</p></center>
      </div>
    </div> <!-- /container -->
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src='<c:url value="/js/bootstrap.min.js"></c:url>'></script>
  </body>
</html>