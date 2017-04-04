<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <!-- Main CSS -->
<link href="${jstlCss}" rel="stylesheet" /> --%>
<link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/superhero/bootstrap.min.css" rel="stylesheet" integrity="sha384-Xqcy5ttufkC3rBa8EdiAyA1VgOGrmel2Y+wxm4K3kI3fcjTWlDWrlnxyD6hOi3PF" crossorigin="anonymous">
<div class="alert alert-info" role="alert">
			<h1>Edit Employee</h1>
</div>
<div class="container-wrapper">
	<div class="container">
		<form:form class="form-horizontal" action="${pageContext.request.contextPath}/admin/employee/editEmployee" method="post" commandName="employee">
			<div class="container form-group">
			<form:hidden class="form-group" path="employeeId" value="${employee.employeeId}" />
			<form:hidden class="form-group" path="username" value="${employee.username}" />
			<form:hidden class="form-group" path="password" value="${employee.password}" />
				<div class="form-group">
					<label class="col-md-2 control-label" for="firstName">First Name:</label>
					<form:input type="text" path="firstName" id="firstName" class="form-Control col-md-7" value="${employee.firstName}" />
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="lastName">Last Name:</label>
					<form:input type="text" path="lastName" id="lastName" class="form-Control col-md-7" value="${employee.lastName}" />
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="employeeNumber">Employee Number:</label>
					<form:input type="text" path="employeeNumber" id="employeeNumber" class="form-Control col-md-7" value="${employee.employeeNumber}" />
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="employeePhone">Employee Phone:</label>
					<form:input type="text" path="employeePhone" id="employeePhone" class="form-Control col-md-7" value="${employee.employeePhone}" />
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="employeeEmail">Employee Email:</label>
					<form:input type="text" path="employeeEmail" id="employeeEmail" class="form-Control col-md-7" value="${employee.employeeEmail}" />
				</div>
				
				 <div class="form-group">
					<label class="col-md-2 control-label" for="department">Department:</label>
					<form:select type="text" path="department" id="department" class="form-Control col-md-3" value="${employee.departmet.name}" style="color:#092756; font-size:1.2em;" >
						<form:options items="${dept.deptOptions}"/>
					</form:select>
				</div>  
				<div class="form-group col-md-12">
				    <div class="col-sm-offset-2 col-sm-10">
						<input class="btn btn-info" type="submit" value="Submit" id="input_submit">
				    </div>
				</div>
			</div>
		</form:form>
		
	</div>
	<a href="<spring:url value="/admin/employee" />"><h2><span class="glyphicon glyphicon-backward"></span></h2></a>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>