<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<table>
	<tr>
		<th>Criminal ID</th><th>Crime Date</th><th>Place</th><th>Report</th>
	</tr>
	
	<c:forEach var="cr" items="${crim}" >
	<tr>
		<td><c:out value="${cr.getCriminalId() }" /></td><td><c:out value="${cr.getDate() }" /></td><td><c:out value="${cr.getPlace() }" /></td><td><c:out value="${cr.getReport() }" /></td>
	</tr>
	</c:forEach>	
	
</table>