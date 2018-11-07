<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<title>Project Manager</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" >
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	
</head>

<body>
	
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<div class="container">
	
		<div class="row">
		
			<form class="col-md-8 col-md-offset-2">
			
				<div class="form-group">
					<label for="project-name"> Name</label>
					<input type="text" id="project-name" class="form-control" name="name"/>
				</div>
				
				<div class="form-group">
					<label for="project-name"> Sponsor</label>
					<input type="text" id="project-name" class="form-control" name="sponsor"/>
				</div>
				
				<div class="form-group">
					<label for="project-name"> Authorized Funds</label>
					<input type="text" id="project-name" class="form-control" name="authorized_funds"/>
				</div>
				
				<div class="form-group">
					<label for="project-name"> Authorized Hours</label>
					<input type="text" id="project-name" class="form-control" name="authorized_hours"/>
				</div>
				
				<div class="form-group">
					<label for="project-name"> Description </label>
					<input type="text" id="project-name" class="form-control" name="description"/>
				</div>
				
				<button type="submit" class="btn btn-default">Submit</button>
				
			</form>
		
		</div>
	
	</div>

</body>

</html>