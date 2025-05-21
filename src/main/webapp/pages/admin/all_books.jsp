<%@ page import="java.util.*, com.EBook.model.Book"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>All Books</title>
<%@include file="../allCss.jsp"%>
<link rel="stylesheet" href="../../style.css" />
</head>
<body>
	<%@include file="../../all_component/navbar.jsp"%>

	<div class="container-fluid mt-4">
		<div class="row justify-content-center">
			<div class="col-md-12">
				<div class="card shadow-sm">
					<div class="card-body">
						<h2 class="text-center mb-3">All Books</h2>

						<c:if test="${empty bookList}">
							<p class="text-center text-muted">No books available.</p>
						</c:if>

						<c:if test="${not empty bookList}">
							<p class="text-center">Books Found: ${bookList.size()}</p>

							<div class="table-responsive">
								<table
									class="table table-bordered table-hover table-striped text-center">
									<thead class="table-dark">
										<tr>
											<th>ID</th>
											<th>Title</th>
											<th>Author</th>
											<th>ISBN</th>
											<th>Price</th>
											<th>Stock</th>
											<th>Category</th>
											<th>Status</th>
											<th>Action</th>
											<!-- New column -->
										</tr>
									</thead>
									<tbody>
										<c:forEach var="book" items="${bookList}">
											<tr>
												<td>${book.bookId}</td>
												<td>${book.title}</td>
												<td>${book.author}</td>
												<td>${book.isbn}</td>
												<td>$${book.price}</td>
												<td>${book.stockQuantity}</td>
												<td>${book.category}</td>
												<td><span class="badge bg-success">${book.status}</span>
												</td>
												<td><a
													href="${pageContext.request.contextPath}/pages/admin/update.jsp?id=${book.bookId}"
													class="btn btn-sm btn-warning">Update</a> <a
													href="${pageContext.request.contextPath}/pages/admin/delete.jsp?id=${book.bookId}"
													class="btn btn-sm btn-danger"
													onclick="return confirm('Are you sure you want to delete this book?');">Delete</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>

								</table>
							</div>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../../all_component/footer.jsp" />
</body>
</html>
