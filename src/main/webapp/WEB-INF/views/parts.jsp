<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container">
	<section>
		<table class="table table-striped">
			<thead class="thead-inverse">
				<tr>
					<th>#</th>
					<th>Name</th>
					<th>model No</th>
					<th>Quantity</th>
					<th>Description</th>
					<th>Category</th>
					<th>Category</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="myIndex" value="1" />
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
								<span class="glyphicon glyphicon-info-sign fa-2x" style="font-size:2em;"></span>
						</a> 
						</td>
					</tr>
					<c:set var="myIndex" value="${myIndex + 1}" />
				</c:forEach>
			</tbody>
		</table>
	</section>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>