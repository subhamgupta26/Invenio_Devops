<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%= session.getAttribute( "name" ) %>
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
					<li>UserName</li>

					<li class="navitem"><img src="images/notification.png"
						alt=bell></li>
					<li class="navitem"><img src="images/userDefault.png"
						class=thumbnail alt=profile></li>
					<li class="navitem"><img src="images/logout.jpg"
						class=thumbnail alt=profile></li>

				</ul>
			</nav>
		</header>

		<div class="container">

			<img class="googlelogo" src="images/logo.png" alt=" logo"
				style="height: 180px; width: 100px"> ${pers2 }
			<div>
				<a
					href="http://localhost:8080/Invenio/crime?id=${pers2.getUnique_id() }">Crime
					Search</a> <a
					href="http://localhost:8080/Invenio/credit?id=${pers2.getUnique_id() }">Credit
					Search</a>

			</div>
		</div>
		credit Record=${cred }
		
		crime Record=${crim }

	</div>

</body>
</html>