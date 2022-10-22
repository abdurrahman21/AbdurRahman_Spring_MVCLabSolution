<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			crossorigin="anonymous">

		<title>Print Student List</title>
	</head>
	<body>
		<div class="container">

			<h3>Print Student List</h3>
			<hr>
			<table class="table table-bordered table-striped">
				<thead class="thead-light">
					<tr>
						<th>Student Id</th>
						<th>Name</th>
						<th>Department</th>
						<th>Country</th>
					</tr>
				</thead>	
				<tbody>
					<c:forEach items="${Students}" var="student">
						<tr>
							<td><c:out value="${student.studentId}" /></td>
							<td><c:out value="${student.name}" /></td>
							<td><c:out value="${student.department}" /></td>
							<td><c:out value="${student.country}" /></td>
						</tr>
					</c:forEach>
	
				</tbody>
			</table>
			<hr>
			<a href="/StudentRegistration/students/list">Back to Student List page</a>
		</div>
	</body>
</html>