<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="alert alert-info" role="alert">
		<h1>Employee Detail View</h1>
</div>
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<p class="lead">Here is the detail information of the Employee!</p>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-5"></div>

				<div class="col-md-5">
					<p>
						<strong>First Name of Employee</strong> :${employee.firstName}
					</p>
					<p>
						<strong>Last Name of Employee</strong> :${employee.lastName}
					</p>
					<p>
						<strong>Department of Employee</strong> :${employee.department.name}
					</p>
					<p>
						<strong>Employee Number</strong> :${employee.employeeNumber}
					</p>

					<br>

				</div>
			</div>
		</div>
			<a href="<spring:url value="/employee" />"><h2><span class="glyphicon glyphicon-backward"></span></h2></a>
	</div>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>