<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<head>

<%-- <link href="<c:url value="/resources/css/loginStyle.css" />"
	rel="stylesheet"> --%>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

  <div class="login">
	<h1>Login</h1>
	<c:if test="${not empty msg}">
		<div class="msg">${msg}</div>
	</c:if>
    <form action="<c:url value="/j_spring_security_check" />" method="post">
    	<c:if test="${not empty error}">
			<div class="error" style="color: #fff;">${error}</div>
		</c:if>
    	<input class="form-control" type="text" name="username" placeholder="Username" required="required" />
        <input class="form-control" type="password" name="password" placeholder="Password" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
</div>
  

<%@include file="/WEB-INF/views/template/footer.jsp"%>
