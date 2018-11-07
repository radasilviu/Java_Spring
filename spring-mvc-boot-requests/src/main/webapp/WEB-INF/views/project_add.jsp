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
		
			<form action="<spring:url value="/project/add"/>" method="post" class="col-md-8 col-md-offset-2">
			
				<div class="form-group">
					<label for="project-name"> Name</label>
					<input type="text" id="project-name" class="form-control" name="name"/>
				</div>
				
				<div class="form-group">
					<label for="project-type"> Type</label>
						<select name="type" class="selectpicker">
							<option></option>
							<option value="single"> Single Year</option>
							<option value="multi"> Multi-Year</option>					
						</select>
					<input type="text" id="project-name" class="form-control" name="name"/>
				</div>
				
				<div class="form-group">
					<label for="sponsor"> Sponsor</label>
					<input type="text" id="sponsor" class="form-control" name="sponsor"/>
				</div>
				
				<div class="form-group">
					<label for="funds"> Authorized Funds</label>
					<input type="text" id="funds" class="form-control" name="authorized_funds"/>
				</div>
				
				<div class="form-group">
					<label for="hours"> Authorized Hours</label>
					<input type="text" id="hours" class="form-control" name="authorized_hours"/>
				</div>
				
				<div class="form-group">
					<label for="project-name"> Description </label>
					<textarea class="form-controll" rows="3"></textarea>
				</div>
				
				
				<div class="form-group">
					<label for="special"> Special </label>
					<input id="special" name="special" type="checkbox"/>
				</div>
				
				
				<button type="submit" class="btn btn-default">Submit</button>
				
			</form>
		
		</div>
	
	</div>

</body>

</html>