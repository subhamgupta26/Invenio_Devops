<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Signup / Registration form using Material Design - Demo by W3lessons</title>
  <!-- CORE CSS-->
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">

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
</style>
  
</head>

<body class="white">


  <div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel">
      <f:form modelAttribute="pes22" class="login-form" method="POST">
         <div class="row">
          <div class="input-field col s12 center">
            <img src="images/logo.png" alt="" class="responsive-img valign profile-image-login">
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i>
             <f:input type="text" path="username"/>
            
            <label for="username" class="center-align">Username</label>
          </div>
        </div>
 
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <f:input path="password" type="password" class="validate"/>
           
            <label for="password">Password</label>
          </div>
        </div>
     
        <div class="row">
          <div class="input-field col s12">
               <div class="center">
          <button type="submit" class="btn waves-effect waves-light" style="align:right">Register</md-button>
            </div>
          </div>
          <div class="input-field col s12">
            <p class="margin center medium-small sign-up">Already have an account? <a href="login.html">Login</a></p>
          </div>
        </div>
       </f:form>
    </div>
  </div>


  

  <!-- ================================================
    Scripts
    ================================================ -->

  <!-- jQuery Library -->
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!--materialize js-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>



 
</body>

</html>