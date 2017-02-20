<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% session.invalidate(); %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Login</title>
  <!-- CORE CSS-->
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">
   <link rel="stylesheet" href="<c:url value="/resources/css/normalize.css" />" />
	  <link rel="stylesheet" href="<c:url value="/resources/css/demo.css" />" />
		
<style type="text/css">

html,
body {
    height: 100%;
}
html {
    display: table;
    margin: auto;
}
body {
    display: table-cell;
    vertical-align: middle;
}
.margin {
  margin: 0 !important;
}
  #login-page{
  width:400px;
    height: 100%;
  }
  #demo-canvas {
  	position: absolute;
  	left: 0px;
  	top: 0px;
  }
  .alert-box{
  text-align: center;
  color: red;
  }
</style>
  
</head>

<body class="white" style="background-image: url('<c:url value="/resources/images/acb.jpg" />')">

	<div class="container demo-1">
			<div class="content">
	
	<div id="large-header" class="large-header">
		<canvas id="demo-canvas">
		</canvas>
	
	
  <div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel">
      <f:form modelAttribute="pes" class="login-form" method="POST">
      
	
        
        <div class="row">
          <div class="input-field col s12 center">
            <img src="<c:url value="/resources/images/logo.png" />" alt="" class="responsive-img valign profile-image-login">
          </div>
        </div>
        
              <%
	boolean val=(Boolean)request.getAttribute("status");
if(!val){
	%>
	 <p class="alert-box">Invalid Username or Password</p>
<% 
}

%>
        
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i>
            <f:input class="validate" type="email" path="username" name="username"/>
            <label for="email" class="center-align">Email</label>
          </div>
        </div>
        
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <f:input path="password" type="password"/>
            <label for="password">Password</label>
          </div>
        </div>
        <br>
        
        
        <div class="row">
          <div class="input-field col s12">
            <button type="submit" id="login" class="btn waves-effect waves-light col s12">Login</button>
            <!--  <a href="login.html" class="btn waves-effect waves-light col s12">Login</a>-->
          </div>
        </div>
        <br>
        
      </f:form>
      
 		 </div> </div></div>
 	
     
    </div>
  </div>


  


  <!-- ================================================
    Scripts
    ================================================ -->

  <!-- jQuery Library -->
 <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!--materialize js-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>
  <script src="<c:url value="/resources/scripts/TweenLite.min.js" />"></script>
           <script src="<c:url value="/resources/scripts/EasePack.min.js" />"></script>
           <script src="<c:url value="/resources/scripts/demo-1.js" />"></script>


</body>

</html>