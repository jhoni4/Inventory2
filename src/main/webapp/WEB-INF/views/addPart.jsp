<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <!-- Main CSS -->
<link href="${jstlCss}" rel="stylesheet" /> --%>
<link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/superhero/bootstrap.min.css" rel="stylesheet" integrity="sha384-Xqcy5ttufkC3rBa8EdiAyA1VgOGrmel2Y+wxm4K3kI3fcjTWlDWrlnxyD6hOi3PF" crossorigin="anonymous">
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Add New Parts</h1>
		</div>
		<form:form class="form-horizontal" action="${pageContext.request.contextPath}/admin/part/addPart" method="post" commandName="part">
			<div class="container form-group">
				<div class="form-group">
					<label class="col-md-2 control-label" for="partName">Part Name:</label>
					<form:input type="text" path="partName" id="partName" class="form-Control col-md-7" placeholder="partName" />
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for=quantity>Quantity:</label>
					<form:input type="text" path="quantity" id="quantity"
						class="form-Control col-md-7" placeholder="Quantity" />
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="modelNumber">Model:</label>
					<form:input type="text" path="modelNumber" id="modelNumber"
						class="form-Control col-md-7" placeholder="Model" />
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="description">Description:</label>
					<form:textarea name="message" type="text" path="description"
						id="description" class="form-Control col-md-7" placeholder="Description" />
				</div>
			
				 <div class="form-group">
					<label class="col-md-2 control-label" for="department">Department:</label>
					<form:select type="text" path="department.name" id="department" class="form-Control col-md-3" style="color: #000;">
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
	

	<a href="/Nissan/part"><h2><span class="glyphicon glyphicon-backward"></span></h2></a>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp"%>