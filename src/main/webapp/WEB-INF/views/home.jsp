<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Pomodoro Timer</title>
    <link href="/favicon-20120525-favicon.ico" rel="icon" type="image/x-icon" />
    <meta name="description" content="A lightweight Pomodoro timer build in pure HTML and JavaScript. It offers basic configuration of work, break, and rest length. Perfect for keeping track of your Pomodoros.">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" />

<title>Login Page</title>
</head>
<body tabindex="0">
	
	
	
	 <div id="container">
        <header>
            <h1>Pomodoro Timer</h1>
        </header>
        <div role="main">
            <div id="state"><span class="value">Stopped</span> <span class="info">(click or press ENTER to start/stop)</span></div>
           	<div id="reset"><span class="value"></span> <span class="info">(RESET)</span></div>
            <div id="timer">00:00</div>
            <div id="pomodoro-count">Pomodoro #<span class="value">0</span> <span class="info">(rest after every four pomodoros)</span></div>
            <fieldset>
                <legend>Options</legend>
                <div>
                    <label for="work"><span>Work:</span> <input id="work" type="number" class="spinner" min="25" max="50" value="25" step="5" autocomplete="true" /> minutes</label>
                </div>
                <div>
                    <label for="break"><span>Break:</span> <input id="break" type="number" class="spinner" min="5" max="15" value="5" step="1" autocomplete="true" /> minutes</label>
                </div>
                <div>
                    <label for="rest"><span>Rest:</span> <input id="rest" type="number" class="spinner" min="20" max="50" value="25" step="5" autocomplete="true" /> minutes</label>
                </div>
              
            </fieldset>
        </div>
        <footer>
            <p>A lightweight <a href="http://www.pomodorotechnique.com/">Pomodoro</a> timer by <a href="http://egilhansen.com/" title="Visit Egil Hansen's website">Egil Hansen</a>.<br /> Source code available at <a href="https://github.com/egil/pomodoro-timer">github.com</a>.</p>
        </footer>
    </div>
    <!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script> -->
    
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-ui.min.js" />"></script>
    
    <!-- scripts concatenated and minified via ant build script-->
   	<script type="text/javascript" src="<c:url value="/resources/js/plugins.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/script.js" />"></script>
	
	<script >
		$(".spinner").focus(function() {
		    $("#spin").blur();
		})
		$(".spinner").bind("keydown",function(event) {
		    event.preventDefault()
		});
	</script>
   
	
	
	
</body>
</html>
