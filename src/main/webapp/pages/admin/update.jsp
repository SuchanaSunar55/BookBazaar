<%@ page import="java.sql.*, com.EBook.controller.controller.database.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    int bookId = Integer.parseInt(request.getParameter("id"));
    Connection conn = DBConnect.getConn();
    PreparedStatement ps = conn.prepareStatement("SELECT * FROM Book WHERE Book_ID=?");
    ps.setInt(1, bookId);
    ResultSet rs = ps.executeQuery();
    rs.next();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Book</title>
    <%@include file="../allCss.jsp"%>
</head>
<body>
    <%@include file="../../all_component/navbar.jsp"%>
    <div class="container mt-5">
        <h3 class="mb-4">Update Book</h3>
        <form action="<%=request.getContextPath()%>/UpdateBookServlet" method="post">
            <input type="hidden" name="bookId" value="<%= rs.getInt("Book_ID") %>">

            <div class="mb-3">
                <label>Title</label>
                <input type="text" name="title" class="form-control" value="<%= rs.getString("Title") %>" required>
            </div>

            <div class="mb-3">
                <label>Author</label>
                <input type="text" name="author" class="form-control" value="<%= rs.getString("Author") %>" required>
            </div>

            <div class="mb-3">
                <label>ISBN</label>
                <input type="text" name="isbn" class="form-control" value="<%= rs.getString("ISBN") %>" required>
            </div>

            <div class="mb-3">
                <label>Price</label>
                <input type="number" step="0.01" name="price" class="form-control" value="<%= rs.getDouble("Price") %>" required>
            </div>

            <div class="mb-3">
                <label>Stock</label>
                <input type="number" name="stock" class="form-control" value="<%= rs.getInt("Stock_quantity") %>" required>
            </div>

            <div class="mb-3">
                <label>Category</label>
                <input type="text" name="category" class="form-control" value="<%= rs.getString("Category") %>" required>
            </div>

            <div class="mb-3">
                <label>Status</label>
                <select name="status" class="form-control" required>
                    <option value="Available" <%= rs.getString("Status").equals("Available") ? "selected" : "" %>>Available</option>
                    <option value="Unavailable" <%= rs.getString("Status").equals("Unavailable") ? "selected" : "" %>>Unavailable</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Update Book</button>
        </form>
    </div>
    <%@include file="../../all_component/footer.jsp"%>
</body>
</html>
