<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: All Books</title>
<%@include file="../allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<h3 class="text-center">Hello Admin</h3>
	<table class="table table-striped">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Title</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Category</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>history</td>
				<td><a href="#" class="btn btn-sm btn-primary"> Edit </a>
				<a href="#" class="btn btn-sm btn-danger"> Delete </a>
				</td>

			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
				<td>history</td>
				<td><a href="#" class="btn btn-sm btn-primary"> Edit </a>
				<a href="#" class="btn btn-sm btn-danger"> Delete </a>
				</td>

			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
				<td>history</td>
				<td><a href="#" class="btn btn-sm btn-primary"> Edit </a>
				<a href="#" class="btn btn-sm btn-danger"> Delete </a>
				</td>

			</tr>

		</tbody>
	</table>



<%@include file="footer.jsp" %>>
</body>
</html>