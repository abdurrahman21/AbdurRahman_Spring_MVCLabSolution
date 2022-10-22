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

		<title>Student Form</title>
	</head>
	<body>
		<div class="container">

			<h3>Student Form</h3>
			<hr>
		
			<form action="/StudentRegistration/students/save" method="POST">
				<input type="hidden" name="id" value="${student.studentId}" />
				<div class="form-group">
					<label>Name : </label>
					<input type="text" name="name" value="${student.name}"
						class="form-control mb-4 col-4" placeholder="Name">
				</div>
				<div class="form-group">
					<label>Department : </label>
					<input type="text" name="department" value="${student.department}"
						class="form-control mb-4 col-4" placeholder="Department">
				</div>
				<div class="form-group">
					<label>Country : </label>
					<input type="text" name="country" value="${student.country}"
						class="form-control mb-4 col-4" placeholder="Country">
				</div>
	
				<button type="submit" class="btn btn-info col-2">Save</button>
	
			</form>
			<hr>
			<a href="/StudentRegistration/students/list">Back to Student List page</a>
	
		</div>
	</body>
</html>