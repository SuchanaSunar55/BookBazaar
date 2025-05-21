<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add Books</title>
<%@include file="../allCss.jsp"%>
</head>
<body style="background-color: #F0F6D5;">

	<%@include file="../../all_component/navbar.jsp"%>
	<div class="container mt-4">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center mb-4">Add Books</h4>
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						

						<form action="${pageContext.request.contextPath}/add_books"
							method="post" enctype="multipart/form-data">

							<div class="row">
								<div class="form-group col-md-6">
									<label for="title">Title*</label> <input type="text"
										name="title" class="form-control" id="title">
								</div>
								<div class="form-group col-md-6">
									<label for="author">Author*</label> <input type="text"
										name="author" class="form-control" id="author">
								</div>
								<div class="form-group col-md-6">
									<label for="isbn">ISBN*</label> <input type="text" name="isbn"
										class="form-control" id="isbn">
								</div>
								<div class="form-group col-md-6">
									<label for="publisher">Publisher*</label> <input type="text"
										name="publisher" class="form-control" id="publisher">
								</div>
								<div class="form-group col-md-6">
									<label for="publishedDate">Published Date*</label> <input
										type="date" name="publishedDate" class="form-control"
										id="publishedDate">
								</div>
								<div class="form-group col-md-6">
									<label for="price">Price*</label> <input type="number"
										step="0.01" name="price" class="form-control" id="price">
								</div>
								<div class="form-group col-md-6">
									<label for="stockQuantity">Stock Quantity*</label> <input
										type="number" name="stockQuantity" class="form-control"
										id="stockQuantity">
								</div>
								<div class="form-group col-md-6">
									<label for="language">Language*</label> <input type="text"
										name="language" class="form-control" id="language">
								</div>
								<div class="form-group col-md-6">
									<label for="pages">Pages*</label> <input type="number"
										name="pages" class="form-control" id="pages">
								</div>
								<div class="form-group col-md-6">
									<label for="bookDescription">Book Description*</label> <input
										type="text" name="bookDescription" class="form-control"
										id="bookDescription">
								</div>
								<div class="form-group col-md-6">
									<label for="rating">Rating*</label> <input type="number"
										step="0.1" name="rating" class="form-control" id="rating">
								</div>
								<div class="form-group col-md-6">
									<label for="status">Status*</label> <input type="text"
										name="status" class="form-control" id="status">
								</div>
								<div class="form-group col-md-6">
									<label for="category">Category*</label> <input type="text"
										name="category" class="form-control" id="category">
								</div>
								<div class="form-group col-md-6">
									<label for="bimg">Upload Photo</label> <input type="file"
										name="photo" class="form-control-file" id="bimg">
								</div>
							</div>
							<div class="text-center mt-4">
								<button type="submit" class="btn btn-primary">Add Book</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../../all_component/footer.jsp"%>
</body>
</html>
