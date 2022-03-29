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
				<h1 class="text-center mb-3">Update student details</h1>

				<form action="${pageContext.request.contextPath }/handle-student" method="post">
				
				<input type="hidden" value="${student.id}" name="id" />
				
					<div class="form-group">
						<label for="name" class="form-label">Name</label>
						 <input type="text" class="form-control"
							id="name" name="name" value="${student.name }" aria-describedby="emailHelp">
					</div>
					<div class="form-group">
						<label for="department" class="form-label">Department</label>
						 <input type="text" class="form-control"
							id="department" name="department" value="${student.department }" aria-describedby="emailHelp">
					</div>
					<div class="form-group">
						<label for="country" class="form-label">Country</label>
						 <input type="text" class="form-control"
							id="country" name="country" value="${student.country }" aria-describedby="emailHelp">
					</div>
				
					<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back to list</a>
					<button type="submit" class="btn btn-primary">Update</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>