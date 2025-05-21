<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page import="java.util.List"%>
<%@ page import="com.EBook.model.Book"%>
<%@ page import="com.EBook.model.User"%>
<%@ include file="../../all_component/allCss.jsp"%>
<%@ include file="Navbar.jsp"%>

<html>
<head>
<title>User Home</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Pcss/home.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>
</head>
<body style="background-color: #f3f3f3">
	<div class="container mt-5">
		<%
		User user = (User) session.getAttribute("userobj");
		if (user != null) {
		%>
		<h2>
			Welcome,
			<%=user.getUser_name()%>!
		</h2>
		<p>
			Email:
			<%=user.getEmail()%></p>

		<h3 class="mt-4 mb-4">Available Books</h3>
		<div class="row">
			<%
			List<Book> bookList = (List<Book>) request.getAttribute("books");
			if (bookList != null && !bookList.isEmpty()) {
				for (Book book : bookList) {
			%>
			<div class="col-md-3 mb-4">
				<div class="card h-100 shadow-sm rounded">
					<%
					if (book.getPhoto() != null && !book.getPhoto().isEmpty()) {
					%>
					<img
						src="<%=request.getContextPath() + "/book/" + book.getPhoto()%>"
						class="card-img-top" style="height: 250px; object-fit: cover;"
						alt="Book Image">
					<%
					} else {
					%>
					<img src="<%=request.getContextPath()%>/book/default.png"
						class="card-img-top" style="height: 250px; object-fit: cover;"
						alt="Default Image">
					<%
					}
					%>

					<div class="card-body d-flex flex-column">
						<h5 class="card-title"><%=book.getTitle()%></h5>
						<p class="card-text mb-1">
							<strong>Author:</strong>
							<%=book.getAuthor()%></p>
						<p class="card-text mb-1">
							<strong>Price:</strong> ₹<%=book.getPrice()%></p>
						<p class="card-text mb-1">
							<strong>Category:</strong>
							<%=book.getCategory()%></p>
						<p class="card-text mb-3">
							<strong>Rating:</strong>
							<%=book.getRating()%>/5
						</p>

						<form action="<%=request.getContextPath()%>/add-to-cart"
							method="post" class="mt-auto">
							<input type="hidden" name="bookId"
								value="<%=book.getBookId()%>">
							<button type="submit" class="btn btn-primary w-100">Add
								to Cart</button>
						</form>

					</div>
				</div>
			</div>
			<%
			}
			} else {
			%>
			<div class="col-12">
				<p class="text-muted">No books available at the moment.</p>
			</div>
			<%
			}
			%>
		</div>
		<%
		} else {
		%>
		<p class="text-danger">
			Session expired. <a
				href="<%=request.getContextPath()%>/pages/login.jsp">Login again</a>.
		</p>
		<%
		}
		%>
	</div>

	<%@ include file="../../all_component/footer.jsp"%>

	<!-- <!-- Toast HTML -->
<!-- 	<div aria-live="polite" aria-atomic="true"
		class="d-flex justify-content-center align-items-center"
		style="position: fixed; top: 1rem; right: 1rem; z-index: 9999;">
		<div class="toast bg-white shadow" id="cartToast" data-delay="3000"
			style="min-width: 250px; opacity: 1;">
			<div class="toast-header">
				<strong class="mr-auto text-success">Cart</strong>
				<button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
			</div>
			<div class="toast-body" id="cartToastBody">Book added to cart!
			</div>
		</div>
	</div> -->


	<%-- <!-- Scripts -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

	<script>
    function addToCart(event, bookId) {
        event.preventDefault();

        fetch('<%=request.getContextPath()%>/add-to-cart', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: `bookId=${bookId}`
        })
        .then(response => response.text())
        .then(message => {
            document.getElementById('cartToastBody').innerText = message;
            $('#cartToast').toast('show');
        })
        .catch(error => {
            document.getElementById('cartToastBody').innerText = "❌ Something went wrong.";
            $('#cartToast').toast('show');
            console.error(error);
        });
    }
    </script> --%>
</body>
</html>
