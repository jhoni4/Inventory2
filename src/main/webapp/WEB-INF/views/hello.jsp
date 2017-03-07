<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<head>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">



<link rel="stylesheet" type="text/css"
	href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
	<h1>Hello, world!</h1>

	<nav class="navbar navbar-toggleable-md navbar-inverse bg-primary">
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<a class="navbar-brand" href="#">Navbar</a>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<div class="alert alert-success" role="alert">
		<strong>Well done!</strong> You successfully read this important alert
		message.
	</div>
	<div class="alert alert-info" role="alert">
		<strong>Heads up!</strong> This alert needs your attention, but it's
		not super important.
	</div>
	<div class="alert alert-warning" role="alert">
		<strong>Warning!</strong> Better check yourself, you're not looking
		too good.
	</div>
	<div class="alert alert-danger" role="alert">
		<strong>Oh snap!</strong> Change a few things up and try submitting
		again.
	</div>
	<div class="container">

		<div class="starter-template">
			<h1>Spring Boot Web JSP Example</h1>
			<h2>Message: ${message}</h2>
			
		</div>

	</div>
	<!-- /.container -->

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- jQuery first, then Tether, then Bootstrap JS. -->
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
		integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
		integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
		integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
		crossorigin="anonymous"></script>

</body>

</html>
<%-- <form:form action="/Nissan/employee/addEmployee" commandName="employee" method="POST">

		<table>
			<tbody>
				<tr class="form-group">
					<td><label>First name:</label></td>
					<td><form:input type="text"  path="firstName" class="form-Control" placeholder="John" /></td>
				</tr>

				<tr class="form-group">
					<td><label>Last name:</label></td>
					<td><form:input path="lastName" class="form-Control" placeholder="Doa" /></td>
				</tr>
				<tr class="form-group">
					<td><label>Department:</label></td>
					<td><form:select type="text" path="department" id="department" class="form-Control">
						<form:options items="${part.departmentOption}"/>
					</form:select></td>
				</tr>

				<tr class="form-group">
					<td><label>Employee Number:</label></td>
					<td><form:input path="employeeNumber" class="form-Control" placeholder="JU3ES2"  /></td>
				</tr>

				<tr>
					<td><label></label></td>
					<td><input type="submit" value="submit" class="btn btn-lg btn-primary" /></td>
				</tr>

			</tbody>
		</table>

	</form:form> --%>
	
	=================
<%-- <%@include file="/WEB-INF/views/template/header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Main CSS -->
<link href="${jstlCss}" rel="stylesheet" />



<div class="wrapper">
	<div id="header">
		<h2>Employee Relationship Manager</h2>
	</div>
	<div class="container">
		<h3>Add New Employee</h3>
		<form:form class="cf" action="/Nissan/employee/addEmploye"
			method="post" commandName="employee">
			<div class="half left cf">
				<div class="form-group">
					<label for="firstName">First Name:</label>
					<form:input type="text" path="firstName" id="firstName"
						class="form-Control" placeholder="First Name" />
				</div>
				<div class="form-group">
					<label for=lastName>Last Name:</label>
					<form:input type="text" path="lastName" id="lastName"
						class="form-Control" placeholder="Last Name" />
				</div>
				<div class="form-group">
					<label for="employeeNumber">Employee Number:</label>
					<form:input type="text" path="employeeNumber" id="employeeNumber"
						class="form-Control" placeholder="Employee Number" />
				</div>
			</div>
			<div class="half right cf">
				<div class="form-group">
					<label for="department">Department:</label>
					<form:select type="text" path="department" id="department"
						class="form-Control">
						<form:options items="${part.departmentOption}" />
					</form:select>
				</div>
			</div>
			<input type="submit" value="Submit" id="input_submit">
		</form:form>
	</div>ZZ
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%> --%>
