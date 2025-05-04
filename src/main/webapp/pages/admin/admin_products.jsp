<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.EBook.model.Book"%>
<%@ include file="navbar.jsp" %>
<html>
<head><title>Admin - Books</title></head>
<body>
<h2>Book List</h2>

<table border="1">
    <tr>
        <th>ID</th><th>Title</th><th>Author</th><th>Price</th><th>Stock</th><th>Status</th><th>Action</th>
    </tr>
<%
    List<Book> books = (List<Book>) request.getAttribute("books");
    if (books != null && !books.isEmpty()) {
        for (Book b : books) {
%>
    <tr>
        <td><%= b.getBookId() %></td>
        <td><%= b.getTitle() %></td>
        <td><%= b.getAuthor() %></td>
        <td><%= b.getPrice() %></td>
        <td><%= b.getStockQuantity() %></td>
        <td><%= b.getStatus() %></td>
        <td><a href="delete-book?id=<%= b.getBookId() %>">Delete</a></td>
    </tr>
<%
        }
    } else {
%>
    <tr><td colspan="7">No books found or an error occurred.</td></tr>
<%
    }
%>
</table>

<h3>Add New Book</h3>
<form method="post" action="products">
    ID: <input type="text" name="bookId"/><br/>
    Title: <input type="text" name="title"/><br/>
    Author: <input type="text" name="author"/><br/>
    ISBN: <input type="text" name="isbn"/><br/>
    Publisher: <input type="text" name="publisher"/><br/>
    Published Date: <input type="date" name="publishedDate"/><br/>
    Price: <input type="text" name="price"/><br/>
    Stock: <input type="text" name="stock"/><br/>
    Language: <input type="text" name="language"/><br/>
    Pages: <input type="text" name="pages"/><br/>
    Description: <textarea name="description"></textarea><br/>
    Rating: <input type="text" name="rating"/><br/>
    Status: <input type="text" name="status"/><br/>
    <input type="submit" value="Add Book"/>
</form>
</body>
</html>
