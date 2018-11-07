<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" >
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	
<nav class="navbar navbar-default">
	<div class="container-fluid">

		<div class="navbar-header">
			<a class="navbar-brand" href="#"> Project Management</a>
		</div>
	
		
		<ul class="nav navbar-nav">
		
			<li> <a href="<spring:url value="/home/" />">Home</a></li>
			
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
				Projects <span class="caret"></span></a>
			
				<ul class="dropdown-menu" role="menu">
					<li><a href="<spring:url value ="/project/add"/>">Add</a></li>
					<li><a href="<spring:url value ="/project/find"/>">Find</a></li>
				</ul>
			</li>
			
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
				Resources <span class="caret"></span></a>
			
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">Add</a></li>
					<li><a href="#">Find</a></li>
				</ul>
			</li>
		</ul>

	</div>

</nav>