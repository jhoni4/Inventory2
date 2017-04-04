<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Main CSS -->
<link href="${jstlCss}" rel="stylesheet" />
<div class="alert alert-info" role="success">
		<h2>Employee List page</h2>
</div>
<div id="wrapper">
	<div id="header">
	</div>
	<div class="container">
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
						<td><a
							href="<spring:url value="/employee/viewEmployee/${employee.employeeId}" />">
								<span class="glyphicon glyphicon-info-sign fa-2x" style="font-size:2em;"></span>
						</a>
						</td> 
					</tr>
					<c:set var="myIndex" value="${myIndex + 1}" />
				</c:forEach>
			</tbody>
		</table>

	</div>

</div>


<%@include file="/WEB-INF/views/template/footer.jsp"%>