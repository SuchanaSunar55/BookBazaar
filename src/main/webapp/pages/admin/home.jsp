<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Home</title>
<%@include file="../allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: blue;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-plus fa-4x text-primary"></i><br>
							<h4>Add Books</h4>
						</div>
				</a>
			</div>
		</div>
		<div class="col-md-3">
			<a href="all_books.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-book-open fa-4x text-success"></i> <br>
						<h4>All Books</h4>

					</div>
				</div>
			</a>
		</div>
		<div class="col-md-3">
			<a href="orders.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-box-open fa-4x text-warning"></i><br>
						<h4>Orders</h4>

					</div>
				</div>
			</a>
		</div>
		<div class="col-md-3">
			<a href="logout.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-arrow-right-from-bracket fa-4x text-danger"></i><br>
						<h4>Logout</h4>

					</div>
				</div>
			</a>
		</div>
	</div>

	</div>
</body>
</html>