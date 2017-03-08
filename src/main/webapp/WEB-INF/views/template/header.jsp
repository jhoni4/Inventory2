<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<head>

<!-- Bootstrap CSS -->
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous"> -->
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
 <!-- Bootstrap core CSS -->
<c:url value="/resources/css/main.css" var="jstlCss" />
<c:url value="/resources/css/bootstrap.min.css" var="bootCss" />
<link href="${jstlCss}" rel="stylesheet" /> 
<link href="${bootCss}" rel="stylesheet" /> 
    

  

  
</head>
<body>
 <!-- Fixed navbar -->
    <nav class="navbar navbar-toggleable-md navbar-inverse bg-info">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/Nissan">NISSAN</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active">
					<a href="/Nissan">Home <span class="sr-only">(current)</span></a>
				</li>
				<li><a href="/Nissan/part">PartsList</a></li>
				<li><a href="/Nissan/employee">Employee</a></li>
            <li class="dropdown">
              <a href="/Nissan/department/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Departments <span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="Departments">
						<li><a href="/Nissan/department/1">Exterior</a></li>
						<li><a href="/Nissan/department/2">Interior</a></li>
						<li><a href="/Nissan/department/3">Body</a></li>
					</ul>
            </li>
          </ul>
          <form class="navbar-form navbar-right">
				<input class="form-control mr-sm-2" type="text" placeholder="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		  </form>
		  <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/Nissan/part" />">Part List</a></li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                            </c:if>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name  == null}">
	                        <li><a href="<c:url value="/login" />">Login</a></li>
	                        <li><a href="<c:url value="/register" />">Register</a></li>
                        </c:if>
                    </ul>
        </div>
      </div>
    </nav>
    
	<div class="alert alert-info" role="alert">
		<strong>Well done!</strong> You successfully read this important alert
		message.
	</div>


