<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%-- <!-- Main CSS -->
<link href="${jstlCss}" rel="stylesheet" /> --%>
<link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/slate/bootstrap.min.css" rel="stylesheet" integrity="sha384-RpX8okQqCyUNG7PlOYNybyJXYTtGQH+7rIKiVvg1DLg6jahLEk47VvpUyS+E2/uJ" crossorigin="anonymous">
<div class="pannel">
            <h1>Register Customer</h1>
</div>
<div class="alert alert-danger" role="error">
	${emailMsg}
</div>
<div class="alert alert-danger" role="alert">
	${usernameMsg}
</div>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="employee">

	        <h3>Basic Info</h3>
	        
			<div class="form-group input-group col-lg-6">
			  <span class="input-group-addon" id="firstName">First name:</span>
			  <form:input type="text" path="firstName" class="form-control" placeholder="Username" aria-describedby="firstName"/>
			  <form:errors path="firstName" cssStyle="color: #ff0000"/>
			</div>
			<div class="form-group input-group col-lg-6">
			  <span class="input-group-addon" id="lastName">Last name:</span>
			  <form:input type="text" path="lastName" class="form-control" placeholder="lastName" aria-describedby="lastName"/>
			  <form:errors path="lastName" cssStyle="color: #ff0000"/>
			</div>
			<div class="form-group input-group col-lg-6">
			  <span class="input-group-addon" id="employeeNumber">Employee Number:</span>
			  <form:input type="text" path="employeeNumber" class="form-control" placeholder="employeeNumber" aria-describedby="employeeNumber"/>
			  <form:errors path="employeeNumber" cssStyle="color: #ff0000"/>
			</div>
			<div class="form-group input-group col-lg-6">
			  <span class="input-group-addon" id="employeePhone">Phone Number:</span>
			  <form:input type="text" path="employeePhone" class="form-control" placeholder="employeePhone" aria-describedby="employeePhone"/>
			  <form:errors path="employeePhone" cssStyle="color: #ff0000"/>
			</div>
			<div class="form-group input-group col-lg-6">
			  <span class="input-group-addon" id="employeeEmail">Employee Email:</span>
			  <form:input type="Email" path="employeeEmail" class="form-control" placeholder="employeeEmail" aria-describedby="employeeEmail"/>
			  <form:errors path="employeeEmail" cssStyle="color: #ff0000"/>
			</div>
			<div class="form-group input-group col-lg-6">
			  <span class="input-group-addon" id="username">Username</span>
			  <form:input type="text" path="username" class="form-control" placeholder="username" aria-describedby="username"/>
			  <form:errors path="username" cssStyle="color: #ff0000"/>
			</div>
			<div class="form-group input-group col-lg-6">
			  <span class="input-group-addon" id="password">Password</span>
			  <form:input type="password" path="password" class="form-control" placeholder="password" aria-describedby="password"/>
			  <form:errors path="password" cssStyle="color: #ff0000"/>
			</div>
			
	        <div class="form-group input-group">
	            <span class="input-group-addon" id="department">Department</span>
	            <form:select type="text" path="department.name" id="department" class="form-Control col-md-3" style="font-size:1.2em; color: #000;">
					<form:options items="${dept.deptOptions}" />
				</form:select>
	        </div>
	
			<div class="form-group input-group">
				<label></label>
				<input type="submit" value="submit" class="btn btn-success" />
			</div>

		</form:form>
	</div>
	<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/login"><h2><span class="glyphicon glyphicon-backward"></span></h2></a>
		</p>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>