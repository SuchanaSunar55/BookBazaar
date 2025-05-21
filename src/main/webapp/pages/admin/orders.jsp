<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: All Orders</title>
<%@include file="../allCss.jsp"%>
</head>
<body>
	<%@include file="../../all_component/navbar.jsp"%>
	<h3 class="text-center">Hello Admin</h3>
	<table class="table table-striped">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">Order Id</th>
				<th scope="col">Customer Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Phone Number</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Payment Method</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>history</td>
				<td>@mdo</td>
				<td>history</td>
				<td>@mdo</td>
				<td>history</td>

			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
				<td>history</td>
				<td>@mdo</td>
				<td>history</td>
				<td>@mdo</td>
				<td>history</td>

			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
				<td>history</td>
				<td>@mdo</td>
				<td>history</td>
				<td>@mdo</td>
				<td>history</td>

			</tr>

		</tbody>
	</table>


<%@include file="../../all_component/footer.jsp" %>>

</body>
</html>