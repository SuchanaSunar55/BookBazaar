<%@ page import="java.util.*, com.EBook.model.Book"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>All Books</title>
<%@include file="../allCss.jsp"%>
<link rel="stylesheet" href="../../style.css" />
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<h2>All Books</h2>

						<c:if test="${empty bookList}">
							<p>No books available.</p>
						</c:if>

						<c:if test="${not empty bookList}">
							<p>Books Found: ${bookList.size()}</p>
							<table border="1" cellpadding="5" cellspacing="0">
								<thead>
									<tr>
										<th>ID</th>
										<th>Title</th>
										<th>Author</th>
										<th>ISBN</th>
										<th>Price</th>
										<th>Stock</th>
										<th>Category</th>
										<th>Status</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="book" items="${bookList}">
										<tr>
											<td>${book.bookId}</td>
											<td>${book.title}</td>
											<td>${book.author}</td>
											<td>${book.isbn}</td>
											<td>${book.price}</td>
											<td>${book.stockQuantity}</td>
											<td>${book.category}</td>
											<td>${book.status}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:if>


					</div>
					</a>
				</div>
			</div>

			<jsp:include page="footer.jsp" />
</body>
</html>
