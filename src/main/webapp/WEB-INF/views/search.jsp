<%@page import="org.springframework.ui.Model"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>

<%

	String name=(String)request.getAttribute("uid");

	System.out.println(name+"outside");
if(name.equals("")){
	name=(String)session.getAttribute("name");
	if(name==null){
	System.out.println(name+"inside");
	response.sendRedirect("login");
	}
}
else{
   session.setAttribute( "name", name );
}
   
%>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="<c:url value="/resources/scripts/jScript.js" />" ></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
    	var logourl = "<c:url value="/resources/images/logo.png" />";
    </script>
</head>
<fmt:bundle basename="environment">
<body style="background-image: url('<c:url value="/resources/images/" /><fmt:message key="env.flag_image"/>')"></fmt:bundle>
    <header style="height: 100%;">
      
        <div class="row">
            <div class="col-sm-3"><img style="display:none" id="logo2" height="35" src="<c:url value="/resources/images/logo2.jpg" />" alt="logo" /></div>
            <div class="col-sm-6" id="searchContainer" style="padding-top: 18%;">
            	<div style="padding-bottom:20px;" id="logo1"><img src="<c:url value="/resources/images/logo2.jpg" />" alt=""></div>
           <f:form modelAttribute="pers" method="post" >
                <div id="searchBox" class="form-group"><input placeholder="Search" type="text" class="searchbar form-control" name="unique_id" id="unique_id" required/>
                <button type="submit" data-toggle="tooltip" data-placement="bottom" title="Search" id="searchBtn" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button></div>
            </f:form>
            </div>
            <div class="col-sm-3">
                <div>
                    <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><%=session.getAttribute("name") %>                       <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                        <li><a href="<c:url value="/login" />">Sign Out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main style="display: none;">
        <div id="displayBox">
            <div>
                <div class="tabWork" record="">
                    <div class="tabsHolder">
                        <ul class="tabsContainer nav navbar-nav">
                            <li set="0" data="0" meth="POST" url="<c:url value="/search" />"><a><span class="glyphicon glyphicon-user"></span> Person Detail</a></li>
                            <li set="1" data="0" meth="GET" url="<c:url value="/crime" />"><a>Crimal Record</a></li>
                            <li set="2" data="0" meth="GET" url="<c:url value="/credit" />"><a><span class="glyphicon glyphicon-usd"></span> Credit Record</a></li>
                        </ul>
                    </div>
                    <div class="frams">
                        
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <ul class="nav navbar-nav">
            <li><a href="">Developed By <b>Team DevOps</b></a></li>
            <li><a>About Us</a></li>
        </ul>
    </footer>
    <p id="form-data">
        <i id="data-0">{"temp":"temp1"}</i>
        <i id="data-1">{"temp":"temp2"}</i>
        <i id="data-2">{"temp":"temp3"}</i>
    </p>
</body>
</html>