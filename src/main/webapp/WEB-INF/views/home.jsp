
<%@include file="/WEB-INF/views/template/header.jsp" %>

	 <div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>NISSAN HOME PAGE</h1>
					<p>All the parts</p>
				</div>
			</div>
		</section>
		<section>
		<div class="row">
			<div class="col-md-4">
				<a href="/Nissan/department/1">
					<img src="${pageContext.request.contextPath}/resources/css/images/wall.jpg" alt="image" class="img-rounded" height="100">
				</a>
			</div>
			<div class="col-md-4">
			<a href="/Nissan/department/2">
				<img src="${pageContext.request.contextPath}/resources/css/images/wall.jpg" alt="image" class="img-rounded" height="100">
			</a>
			</div>
			<div class="col-md-4">
			<a href="/Nissan/department/3">
				<img src="${pageContext.request.contextPath}/resources/css/images/wall.jpg" alt="image" class="img-rounded" height="100">
			</a>
			</div>
		</div>
		</section>
	</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %> 

    
