<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Invenio</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="<c:url value="/resources/css/indexStyle.css" />" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	   
    <!--[if lt IE 9]>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    <header>
        <div class="col-sm-6"><img src="<c:url value="/resources/images/logo2.jpg" />" alt=""></div>
        <div class="col-sm-6">
            <div>
                <a class="btn btn-success" href="<c:url value="/login" />">Login</a>
                <a class="btn btn-info" href="<c:url value="/register" />">Register</a>
            </div>
        </div>
    </header>
   <fmt:bundle basename="environment">
     <main>
      	<!-- Slider -->
      	
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
			  <div class="item active">
			    <img src="<c:url value="/resources/images/" /><fmt:message key="env.background_image1"/>" alt="Chania">
			  </div>
			
			  <div class="item">
			    <img src="<c:url value="/resources/images/" /><fmt:message key="env.background_image2"/>" alt="Chania">
			  </div>
			
			  <div class="item">
			    <img src="<c:url value="/resources/images/" /><fmt:message key="env.background_image3"/>" alt="Flower">
			  </div>
			
			  <div class="item">
			    <img src="<c:url value="/resources/images/" /><fmt:message key="env.background_image4"/>" alt="Flower">
			  </div>
			</div>
			
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			  <span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			  <span class="sr-only">Next</span>
			</a>
		</div>
      	
      	<!-- slider end -->
      	
      	<div id="wel-txt">Get <b>Records</b><br>of a <b>Person</b> with one<br><b>Search</b></div>
    </main>
    </fmt:bundle>
    <footer>
        <hr>
        <ul class="nav navbar-nav">
            <li><a href="">Developed By <b>Team DevOps</b></a></li>
            <li><a>About Us</a></li>
        </ul>
    </footer>
</body>
</html>