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

		<title>Student Registration</title>
	</head>
	<body>
		<div class="container">

			<h3>Student Registration</h3>
			<hr>

			<div class="row ">
				<form class="form-inline px-2">
					<a href="/StudentRegistration/students/studentForm?id=${0}"
						class="btn btn-primary btn-sm mb-3"> Add Student </a>
				</form>
				<form class="form-inline px-2">
					<a href="/StudentRegistration/students/print"
						class="btn btn-primary btn-sm mb-3"> print </a>
				</form>
			</div>

			<table class="table table-bordered table-striped">
				<thead class="thead-dark">
					<tr>
						<th>Student Id</th>
						<th>Name</th>
						<th>Department</th>
						<th>Country</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${students}" var="student">
						<tr>
							<td><c:out value="${student.studentId}" /></td>
							<td><c:out value="${student.name}" /></td>
							<td><c:out value="${student.department}" /></td>
							<td><c:out value="${student.country}" /></td>
							<td>
								<a href="/StudentRegistration/students/studentForm?id=${student.studentId}"
									class="btn btn-info btn-sm"> Update </a> 
								<a href="/StudentRegistration/students/delete?id=${student.studentId}"
									class="btn btn-danger btn-sm"
									onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false">
									Delete </a>
							</td>
	
						</tr>
					</c:forEach>
	
				</tbody>
			</table>
		</div>
	</body>
</html>