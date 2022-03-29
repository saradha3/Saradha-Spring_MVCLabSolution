<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12 mt-3">
				<h1 class="text-center">Welcome to Student Management System Application</h1>
				<table class="table table-dark table-hover mt-5">
					<thead>
						<tr>
							
							<th scope="col">Student ID</th>
							<th scope="col">Name</th>
							<th scope="col">Department</th>
							<th scope="col">Country</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${students }" var="stu">
						<tr>
							<td>${stu.id }</td>
							<td>${stu.name }</td>
							<td>${stu.department }</td>
							<td>${stu.country }</td>
							<td>
								<a href="update/${stu.id }">Update</a> |
								<a href="delete/${stu.id }">Delete</a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				
				<div class="container text-center">
					<a href="add-student" class="btn btn-outline-success">Add Student</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>