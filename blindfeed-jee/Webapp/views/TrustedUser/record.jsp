<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<html>
<head>

	  <link href='<c:url value="/css/navbar-fixed-top.css"></c:url>' rel="stylesheet">
	  <link href='<c:url value="/css/bootstrap.css"></c:url>' rel="stylesheet">
	  <script src='<c:url value="/js/jquery.min.js"></c:url>'> </script>
	  <script src='<c:url value="/js/jRecorder.js"></c:url>'> </script>
  
		<title>පටිගත කිරීම</title>  

		<style>
		li {display:inline; margin-right:10px;}
		</style>

<script>
function myFunction() {
    alert("Thank You for your contribution");
}
</script>

</head>
<body> 
   <script>

    $.jRecorder({ 
        host : 'http://localhost:8080/blindfeed/record?filename=hello' ,  //replace with your server path please
        callback_started_recording:     function(){callback_started(); },
        callback_stopped_recording:     function(){callback_stopped(); },
        callback_activityLevel:         function(level){callback_activityLevel(level); },
        callback_activityTime:        function(time){   callback_activityTime(time); },
        callback_finished_sending: function(){ callback_finished_sending();},
        swf_path : '<c:url value="/resources/AudioRecorderCS4-1.0.swf"></c:url>'
     }
   );
    
   </script>
	<div  style="position: relative; top: -70px;">
		<div class="navbar navbar-default">
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
            <li><a href="userindex">නිවහන</a></li>
            <li class="active"><a href="#">දායකත්වය</a></li>
            <li><a href="validation">නිරවද්‍යතාව තහවුරු  කිරීම </a></li>
            <li><a href="userabout">විස්තර</a></li>
            <li><a href="usercontact">අපව අමතන්න</a></li>
            <li><a href="userhelp">උදව්</a></li>
          </ul>
          <form class="navbar-form navbar-right">
             <a id="user" class="btn btn-success" href="#">ඔබ  ${user} ලෙස ඇතුළුවී ඇත</a>
             <a id="logout" class="btn btn-success" href="logout">පිටවන්න</a>
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
        <h1>දායකත්වය</h1>
        
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">ජේදය කියවන්න</h3>
                    </div>
                    <div class="panel-body">
                       <p style="font-size: 15px;">
                        
                           
                        	${paragraph.paragraphText}
                        </p>
                        
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">පටිගත කරවනය</h3>
                    </div>
                    <div class="panel-body">
                    
                    <div class="well-sm" style="background-color: #eeeeee;border:1px solid #cccccc">
		  ගතවන කාලය: <span id="time">00:00</span>  
		</div>
		
		
		<div >
		  කියවීමේ මට්ටම: <span class="well-sm" id="level"></span>
		</div>  
	
		<div id="levelbase" style="width:200px;height:20px;background-color:#ffff00">
		  <div id="levelbar" style="height:19px; width:2px;background-color:red"></div>  
		</div>
	
		<div>
		  තත්වය: <span id="status"></span>
		</div> 
	
                        <h4 class="text-info">Record Player</h4>
                        <button class="glyphicon glyphicon-play" id="record">Start  </button>
                        <button class="glyphicon glyphicon-stop" id="stop">Stop  </button>
                        <button class="glyphicon glyphicon-folder-open" id="send">Send </button>

                    </div>
                </div>
            </div>
        </div>
        
      </div>
      <div class="container">
        <p class="text-muted">මෙය  deadlock හි නිර්මාණයකි</p>
      </div>
    </div> <!-- /container -->
    
		</div>

	
		
		<script type="text/javascript">
                  $('#record').click(function(){
                      $.jRecorder.record(150);
                  });
               
                  $('#stop').click(function(){     
                     $.jRecorder.stop();
                  });
               
                   $('#send').click(function(){
                     $.jRecorder.sendData();     
                  });
                  
                  function callback_finished()
                  {
                      $('#status').html('පටිගත කිරීම අවසානයි');                  
                  }
                  
                  function callback_started()
                  {      
                      $('#status').html('පටිගත කිරීම අරම්බවිය');                   
                  }

                  function callback_error(code)
                  {
                      $('#status').html('Error, code:' + code);
                  }
                                    
                  function callback_stopped()
                  {
                      $('#status').html('පටිගත කිරීම නැවත් වීම  පිළිගන්න');
                  }

                  function callback_finished_recording()
                  {                    
                      $('#status').html('පටිගත කරන සිදුවීම අසවනයි');                                       
                  }
                  
                  function callback_finished_sending()
                  {                   
                      $('#status').html('ගොනුව සුරක්ෂිත කරන්න');                                           
                  }
                  
                  function callback_activityLevel(level)
                  {                    
                    $('#level').html(level);
                    
                    if(level == -1)
                    {
                      $('#levelbar').css("width",  "2px");
                    }
                    else
                    {
                      $('#levelbar').css("width", (level * 2)+ "px");
                    }                                       
                  }
                  
                  function callback_activityTime(time)
                  { 
                   //$('.flrecorder').css("width", "1px"); 
                   //$('.flrecorder').css("height", "1px"); 
                    $('#time').html(time);         
                  }
        </script>
</body>
</html>


 
		
		
    