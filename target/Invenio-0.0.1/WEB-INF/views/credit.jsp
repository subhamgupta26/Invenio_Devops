<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<table>
	<tr>
		<th>Credit ID</th><th>Account No.</th><th>Balance</th><th>Bank Name</th>
	</tr>
	
	<c:forEach var="cr" items="${cred}" >
	<tr>
		<td><c:out value="${cr.getCreditId() }" /></td><td><c:out value="${cr.getAccountNo() }" /></td><td><c:out value="${cr.getBalance() }" /></td><td><c:out value="${cr.getBankName() }" /></td>
	</tr>
	</c:forEach>	
	
</table>