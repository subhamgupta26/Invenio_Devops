<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%= session.getAttribute( "name" ) %>
<table>
	<tr>
		
	</tr>
</table>
				${pers2 }
			<div>
				<a
					href="http://localhost:8080/Invenio/crime?id=${pers2.getUnique_id() }">Crime
					Search</a> <a
					href="http://localhost:8080/Invenio/credit?id=${pers2.getUnique_id() }">Credit
					Search</789320000213a>

			</div>
		</div>
		credit Record=${cred }
		
		crime Record=${crim }

	</div>

</body>
</html>