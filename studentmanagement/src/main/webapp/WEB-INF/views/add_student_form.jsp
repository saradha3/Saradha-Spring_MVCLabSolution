<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Fill the student details</h1>

				<form action="handle-student" method="post">
					<div class="form-group">
						<label for="name" class="form-label">Name</label>
						 <input type="text" class="form-control"
							id="name" name="name" aria-describedby="emailHelp">
					</div>
					<div class="form-group">
						<label for="department" class="form-label">Department</label>
						 <input type="text" class="form-control"
							id="department" name="department" aria-describedby="emailHelp">
					</div>
					<div class="form-group">
						<label for="country" class="form-label">Country</label>
						 <input type="text" class="form-control"
							id="country" name="country" aria-describedby="emailHelp">
					</div>
				
					<a href="${pageContext.request.contextPath }/" class="mt-5 btn btn-outline-danger">Back to list</a>
					<button type="submit" class="mt-5 btn btn-primary">Add</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>