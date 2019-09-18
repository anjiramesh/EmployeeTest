<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Register and Display</title>
<style type="text/css">
.bg{
color:red;
}
</style>
</head>
<body>
	<form:form action="save" method="post" modelAttribute="employee">
		<pre>
		<h3>Employee Name:</h3>
		<form:input path="name" />
		<h3>Email:</h3>
		<form:input path="email" />
		<h3>Salary</h3>
		<form:input path="salary" />
		<input type="submit" value="Save">
		</pre>

		<h1>Employees Data</h1>
		<table border="1">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Salary</th>
			</tr>
			<c:forEach items="${list}" var="ob">
				<tr>
					<td><c:out value="${ob.name}"></c:out></td>
					<td><c:out value="${ob.email}"></c:out></td>
					<td><c:out value="${ob.salary}"></c:out></td>
					</tr>
			</c:forEach>
		</table>
	</form:form>
	<a href="liste">View Employee based On Salary</a>
</body>
</html>