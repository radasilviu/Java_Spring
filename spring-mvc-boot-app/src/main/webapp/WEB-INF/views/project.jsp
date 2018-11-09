<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		
		<div class="row">
				
				<div class="form-group">
					<label for="name"> Name</label>
					<span>${project.name}</span>
				</div>
				
				<div class="form-group">
					<label for="type"> Type</label>
					<span>${project.type}</span>
				</div>
				
				<div class="form-group">
					<label for="sponsor"> Sponsor</label>
					<span>${project.sponsor}</span>
				</div>
				
				<div class="form-group">
					<label for="funds"> Authorized Funds</label>
					<span>${project.autorizedFunds}</span>
				</div>
				
				<div class="form-group">
					<label for="hours"> Authorized Hours</label>
					<span>${project.autorizedHours}</span>
				</div>
				
				<div class="form-group">
					<label for="description"> Description</label>
					<span>${project.description}</span>
				</div>
				
				<div class="form-group">
					<label for="special"> Special</label>
					<span>${project.special}</span>
				</div>
				
		</div>
		
	</div>
	
</body>

</html>