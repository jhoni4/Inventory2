<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Main CSS -->
<link href="${jstlCss}" rel="stylesheet" />

<div id="wrapper">
	<div id="header">
		<h2>Department Manager</h2>
	</div>
	<div class="container">
		<div class="alert alert-info" role="danger">
		</div>
		<%-- <a href="<spring:url value="/employee/addEmployee/" />"
			class="btn btn-info">Add New Department</a> --%>


		<table class="table table-striped">
			<thead class="thead-inverse">
				<tr>
					<th>#</th>
					<th>Name</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="myIndex" value="1" />
				<c:forEach items="${departmentList}" var="department">
					<tr>
						<th>${myIndex}</th>
						<td>${department.name}</td>
						<td></td>
					</tr>
					<c:set var="myIndex" value="${myIndex + 1}" />
				</c:forEach>
			</tbody>
		</table>

	</div>

</div>


<%@include file="/WEB-INF/views/template/footer.jsp"%>