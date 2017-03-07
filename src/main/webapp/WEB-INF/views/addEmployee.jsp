<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Main CSS -->
<link href="${jstlCss}" rel="stylesheet" />



<div class="wrapper">
	<div id="header">
		<h2>Employee Relationship Manager</h2>
	</div>
	<div class="container">
		<h3>Add New Employee</h3>
		<form:form class="form-horizontal"
			action="/Nissan/employee/addEmployee" commandName="employee"
			method="POST">

			<table class="form-group">
				<tbody class="form-group">
					<tr class="form-group">
						<td class="col-md-3 control-label"><label>First name:</label></td>
						<td><form:input type="text" path="firstName" class="form-Control col-md-7" placeholder="John" /></td>
					</tr>
					<tr></tr>
					<tr class="form-group">
						<td class="col-md-3 control-label"><label>Last name:</label></td>
						<td><form:input path="lastName" class="form-Control col-md-7" placeholder="Doa" /></td>
					</tr>
					<tr></tr>
					<tr class="form-group">
						<td class="col-md-3 control-label"><label>Employee Number:</label></td>
						<td><form:input path="employeeNumber" class="form-Control col-md-7" placeholder="#1234" /></td>
					</tr>
					<tr></tr>
					<tr class="form-group">
						<td class="col-md-3 control-label"><label>Employee Email:</label></td>
						<td><form:input path="employeeEmail" class="form-Control col-md-7" placeholder="jo@gmail.com" /></td>
					</tr>
					<tr></tr>
					<tr class="form-group">
						<td class="col-md-3 control-label"> <label for="phone">Phone</label></td>
						<td><form:input path="employeePhone" id="phone" class="form-Control col-md-7"  placeholder="5555555" /></td>
					</tr>
					<tr></tr>
					<tr class="form-group">
						<td class="col-md-3 control-label"> <label for="username">Username</label></td>
						<td><form:input path="Username" id="username" class="form-Control col-md-7" /></td>
					</tr>
					<tr></tr>
					<tr class="form-group">
						<td class="col-md-3 control-label"><label for="password">Password</label></td>
						<td><form:password path="password" id="password" class="form-Control" /></td>
					</tr>
					<tr></tr>
					<tr class="form-group">
						<td class="col-md-2 control-label"><label>Department:</label></td>
						<td><form:select type="text" path="department.name"
								id="department" class="form-Control">
								<form:options items="${employee.departmentOption}" />
							</form:select></td>
					</tr>
					<tr></tr>
					<tr>
						<td class="col-md-2 control-label"><label></label></td>
						<td><input type="submit" value="submit"
							class="btn btn-primary" /></td>
					</tr>

				</tbody>
			</table>

		</form:form>
	</div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>