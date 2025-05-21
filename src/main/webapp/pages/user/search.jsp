<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.EBook.model.Book" %>
<%@ include file="../../all_component/allCss.jsp" %>
<%@ include file="Navbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Pcss/search.css">
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4">Search Results for: '<%= request.getAttribute("searchQuery") %>'</h2>

    <div class="row">
        <%
            @SuppressWarnings("unchecked")
            List<Book> results = (List<Book>) request.getAttribute("results");
            if (results != null && !results.isEmpty()) {
                for (Book b : results) {
        %>
        <div class="col-md-3 mb-4">
            <div class="card h-100 shadow-sm rounded">
                <%
                if (b.getPhoto() != null && !b.getPhoto().isEmpty()) {
                %>
                <img src="<%= request.getContextPath() + "/book/" + b.getPhoto() %>"
                    class="card-img-top" style="height: 250px; object-fit: cover;" alt="Book Image">
                <%
                } else {
                %>
                <img src="<%= request.getContextPath() %>/book_img/default.png"
                    class="card-img-top" style="height: 250px; object-fit: cover;" alt="Default Image">
                <%
                }
                %>

                <div class="card-body d-flex flex-column">
                    <h5 class="card-title"><%= b.getTitle() %></h5>
                    <p class="card-text mb-1"><strong>Author:</strong> <%= b.getAuthor() %></p>
                    <p class="card-text mb-1"><strong>Price:</strong> ₹<%= b.getPrice() %></p>
                    <p class="card-text mb-1"><strong>Category:</strong> <%= b.getCategory() %></p>
                    <p class="card-text mb-3"><strong>Rating:</strong> <%= b.getRating() %>/5</p>

                    <form action="<%= request.getContextPath() %>/user/add-to-cart" method="post" class="mt-auto">
                        <input type="hidden" name="bookId" value="<%= b.getBookId() %>">
                        <button type="submit" class="btn btn-primary w-100">Add to Cart</button>
                    </form>
                </div>
            </div>
        </div>
        <%
                }
            } else {
        %>
        <div class="col-12">
            <p class="text-danger">No matching books found.</p>
        </div>
        <%
            }
        %>
    </div>
</div>

<%@ include file="../../all_component/footer.jsp" %>
</body>
</html>
