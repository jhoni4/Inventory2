<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="alert alert-info" role="alert">
		<h1>Part Detail View</h1>
</div>
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<p class="lead">Here is the detail information of the part!</p>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-5"></div>

				<div class="col-md-5">
					<p>
						<strong>Name of part</strong> :${part.partName}
					</p>
					<p>
						<strong>Description of part</strong> :${part.description}
					</p>
					<p>
						<strong>Model number</strong> : ${part.modelNumber}
					</p>
					<p>
						<strong>Quantity</strong> : ${part.quantity}
					</p>
					<br>

				</div>
			</div>
		</div>
			<a href="<spring:url value="/part" />"><h2><span class="glyphicon glyphicon-backward"></span></h2></a>
	</div>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>