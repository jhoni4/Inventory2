<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Main CSS -->
<link href="${jstlCss}" rel="stylesheet" />

<div id="wrapper">
	<div id="header">
		<h2>Employee Relationship Manager</h2>
	</div>
	<div class="container">
		<div class="alert alert-danger" role="alert">
			<strong>Oh snap!</strong> Employee page again.
		</div>
		<a href="<spring:url value="/employee/addEmployee/" />"
			class="btn btn-info">Add New employee</a>


		<table class="table table-striped">
			<thead class="thead-inverse">
				<tr>
					<th>#</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Employee Number</th>
					<th>Department</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="myIndex" value="1" />
				<c:forEach items="${employeeList}" var="employee">
					<tr>
						<th>${myIndex}</th>
						<td>${employee.firstName}</td>
						<td>${employee.lastName}</td>
						<td>${employee.employeeNumber}</td>
						<td>${employee.department.name}</td>
						<td></td>
					</tr>
					<c:set var="myIndex" value="${myIndex + 1}" />
				</c:forEach>
			</tbody>
		</table>

	</div>

</div>


<%@include file="/WEB-INF/views/template/footer.jsp"%>