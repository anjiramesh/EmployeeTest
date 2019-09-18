<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<div class="container">
		<div class="card">
			<div class="card-header bg-info text-white">
				<h2>Employee Register and Display!!</h2>
			</div>
			<div class="card-body">
				<form:form cssClass="form " action="insert" method="post"
					modelAttribute="employee">
					<div class="row">
						<div class="col-3"></div>
						<div class="col-2">
							<label for="name">name </label>
						</div>
						<div class="row">
							<div class="col-5"></div>
							<div class="col-6">
								<form:errors path="name" cssClass="text-danger" />
							</div>
						</div>
						<div class="col-3"></div>
						<div class="col-2">
							<label for="salary">salary </label>
						</div>
						<div class="row">
							<div class="col-5"></div>
							<div class="col-6">
								<form:errors path="salary" cssClass="text-danger" />
							</div>
						</div>


						<div class="row">
							<div class="col-3"></div>
							<div class="col-2">
								<label for="email">email </label>
							</div>
							<div class="row">
								<div class="col-5"></div>
								<div class="col-6">
									<form:errors path="email" cssClass="text-danger" />
								</div>
							</div>


							<div class="row">
								<div class="col-5"></div>
								<div class="col-2">
									<input type="submit" value="Submit" class="btn btn-primary">
								</div>
							</div>
				</form:form>
			</div>
			<h5>
				<a href="liste" class="btn btn-info">View Data Here</a>
			</h5>
			<%-- <c:if test="${message !=null}">
				<div class="card-footer">${message}</div>
			</c:if> --%>
		</div>
	</div>
	<br>

</body>
</html>