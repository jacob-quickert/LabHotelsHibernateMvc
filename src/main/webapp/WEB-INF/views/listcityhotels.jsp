<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>List of Hotels in a City</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/cerulean/bootstrap.min.css" />
<!-- Custom CSS goes below Bootstrap CSS -->
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<div class="container">
		
		<div class="card mb-3">
  			<h3 class="card-header">Hotels in ${city }</h3>
  			<div class="card-body">
  				<ul class="list-group list-group-flush">
  				<c:forEach var="hotel" items="${listHotels}" >
  
    			<li class="list-group-item">
    			<h5 class="card-title">${hotel.name}</h5>
    			<h6 class="card-subtitle text-muted">${hotel.pricePerNight}</h6>
    			</li>
    			
    			</c:forEach>
    			</ul>
  			</div>
  		</div>
			
				
   
    <a href="/"><button class="btn btn-primary btn-lg">New Search</button></a>
     </div>
</body>
</html>