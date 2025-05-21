<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.EBook.model.Cart" %>
<%@ page import="com.EBook.model.User" %>
<!DOCTYPE html>
<%@ include file="../../all_component/allCss.jsp" %>
<%@ include file="Navbar.jsp" %>

<html>
<head>
    <title>Your Cart</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Pcss/home.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body style="background-color: #f3f3f3">
<div class="container mt-5">
    <h2>Your Shopping Cart</h2>

    <%
        User user = (User) session.getAttribute("userobj");
        if (user == null) {
    %>
        <p class="text-danger">Please <a href="<%=request.getContextPath()%>/pages/login.jsp">login</a> first to view your cart.</p>
    <%
        } else {
            List<Cart> cartItems = (List<Cart>) request.getAttribute("cartItems");
            if (cartItems == null || cartItems.isEmpty()) {
    %>
        <div class="text-center mt-5">
    <h4>Your cart is currently empty 🛒</h4>
    <a href="<%= request.getContextPath() %>/user/home" class="btn btn-outline-primary mt-3">Browse Books</a>
</div>

    <%
            } else {
    %>
        <table class="table table-bordered">
            <thead class="thead-light">
                <tr>
                    <th>Book Name</th>
                    <th>Author</th>
                    <th>Price (₹)</th>
                    <th>Quantity</th>
                    <th>Total Price (₹)</th>
                </tr>
            </thead>
            <tbody>
                <%
                    double grandTotal = 0.0;
                    for (Cart item : cartItems) {
                        grandTotal += item.getTotalPrice();
                %>
                <tr>
                    <td><%= item.getBookName() %></td>
                    <td><%= item.getAuthor() %></td>
                    <td><%= item.getPrice() %></td>
                    <td>1</td> <!-- Replace '1' with actual quantity if added in model -->
                    <td><%= item.getTotalPrice() %></td>
                </tr>
                <%
                    }
                %>
                <tr>
                    <td colspan="4" class="text-right font-weight-bold">Grand Total</td>
                    <td class="font-weight-bold"><%= grandTotal %></td>
                </tr>
            </tbody>
        </table>
    <%
            }
        }
    %>
</div>
</body>
</html>
