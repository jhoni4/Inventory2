<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/superhero/bootstrap.min.css" rel="stylesheet" integrity="sha384-Xqcy5ttufkC3rBa8EdiAyA1VgOGrmel2Y+wxm4K3kI3fcjTWlDWrlnxyD6hOi3PF" crossorigin="anonymous">


<div class="container">
	<section>
		<a href="<spring:url value="/admin/part/addPart/" />" class="btn btn-info">Add New Part</a>
		
		<table class="table table-striped">
			<thead class="thead-inverse">
				<tr>
					<th>#</th>
					<th>Name</th>
					<th>model No</th>
					<th>Quantity</th>
					<th>Description</th>
					<th>Department</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="myIndex" value="1" />
					<%-- <c:url var="deleteLink" value="/part/deletePart">
						<c:param name="partId" value="${part.partId}"></c:param>
					</c:url> --%>
				<c:forEach items="${partsList}" var="part">
					<tr>
						<th>${myIndex}</th>
						<td>${part.partName}</td>
						<td>${part.modelNumber}</td>
						<td>${part.quantity}</td>
						<td>${part.description}</td>
						<td>${part.department}</td>
						<td><a
							href="<spring:url value="/part/viewPart/${part.partId}" />">
								<span class="glyphicon glyphicon-info-sign fa-5x" style="font-size:2em;"></span>
						</a>  &nbsp;
						<a href="<spring:url value="/admin/part/deletePart/${part.partId}" />" onclick="if (!(confirm('Are you sure you want to delete this part?'))) return false">
								<span class="glyphicon glyphicon-trash fa-3x" style="font-size:2em;"></span>
						</a> &nbsp;
						<a href="<spring:url value="/admin/part/editPart/${part.partId}" />">
								<span class="glyphicon glyphicon-edit fa-3x" style="font-size:2em;"></span>
						</a></td>
					</tr>
					<c:set var="myIndex" value="${myIndex + 1}" />
				</c:forEach>
			</tbody>
		</table>
	</section>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>