<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		
		<h2>Projects</h2>
			<table class="table table-hover">
				<tbody>
					<tr>
						<th>Name</th><th>Sponsor</th><th>Description</th>
					</tr>
					<c:forEach items="${projects}" var="project">
						<tr>
							<td>${project.name}</td><td>${project.sponsor}</td><td>${project.description}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		
		</div>
</body>

</html>