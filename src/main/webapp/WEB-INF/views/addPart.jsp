<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Main CSS -->
<link href="${jstlCss}" rel="stylesheet" />
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Add New Parts</h1>
		</div>
		<form:form class="cf" action="/Nissan/part/addPart" method="post"
			commandName="part">
			<div class="half left cf">
				<div class="form-group">
					<label for="name">Part Name:</label>
					<form:input type="text" path="name" id="name" class="form-Control"
						placeholder="Name" />
				</div>
				<div class="form-group">
					<label for=quantity>Quantity:</label>
					<form:input type="text" path="quantity" id="quantity"
						class="form-Control" placeholder="Quantity" />
				</div>
				<div class="form-group">
					<label for="modelNumber">Model:</label>
					<form:input type="text" path="modelNumber" id="modelNumber"
						class="form-Control" placeholder="Model" />
				</div>
			</div>
			<div class="half right cf">
				<div class="form-group">
					<label for="description">Description:</label>
					<form:textarea name="message" type="text" path="description"
						id="description" class="form-Control" placeholder="Description" />
				</div>
				<div class="form-group">
					<label for="department">Department:</label>
					<form:select type="text" path="department" id="department" class="form-Control">
						<form:options items="${part.departmentOption}"/>
					</form:select>
				</div>
			</div>
			<input type="submit" value="Submit" id="input_submit">
		</form:form>
	</div>

	<a href="/Nissan/part">Back</a>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp"%>