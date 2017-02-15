<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<html>
<head>
	<title></title>

  <link rel="stylesheet" href="css/index.css">

</head>
<body>
<div class="wholecontainer">
  <header>
    <nav>
      <ul class="navbar">
        <li >UserName</li>
        
          <li class="navitem"><img src="images/notification.png" alt=bell></li>
        <li class="navitem"><img src="images/userDefault.png" class=thumbnail alt=profile></li>
        <li class="navitem"><img src="images/logout.jpg" class=thumbnail alt=profile></li>
        
      </ul>
    </nav>
  </header>

  <div class="container">

    <img class="googlelogo" src="images/logo.png" alt=" logo" style="height:180px;width:100px">


    <f:form modelAttribute="pers" method="post" >
      <f:input type="text" class="searchbar"  path="unique_id"/>
      <input type="submit" value="Search"/>
    </f:form>
    <div>
      <button class="button" type="submit"> Crime Search</button>
      <button class="button" type="submit">Credit Search</button>
    </div>
  </div>
  <footer class="footer">
    <div class="leftfooter">
      <li class="listitem"><a href="">Advertising</a></li>
      <li class="listitem"><a href="">Busniess</a></li>
      <li class="listitem"><a href="">About</a></li>
    </div>
    <div class="rightfooter">
      <li class="listitem"><a href="">Privacy</a></li>
      <li class="listitem"><a href="">Terms</a></li>
      <li class="listitem"><a href="">Settings</a></li>
    </div>
  </footer>

</div>

</body>
</html>