<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/cerulean/bootstrap.min.css" />
<!-- Custom CSS goes below Bootstrap CSS -->
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="card border-primary mb-3" style="max-width: 20rem;">
			<h1 class="card-header">Hotel Search</h1>
			<div class="card-body">
			<form action="/hotels" method="post">
				<label><h5 class="card-subtitle text-muted">City</h5></label><br> 
				<select name="city" class="form-control form-control-lg">
					<c:forEach var="city" items="${listCities}">
						<option value="${city}">${city}</option>
					</c:forEach>
				</select> 
				<br />
				<button type="submit" class="btn btn-primary btn-lg">Go!</button>
				
			</form>
			
			</div>
		</div>
	</div>
</body>
</html>

