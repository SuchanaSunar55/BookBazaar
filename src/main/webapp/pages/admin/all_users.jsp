<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, com.EBook.model.User" %>
    
<!DOCTYPE html>
<html>
<head>
    <title>All Users</title>
    <%@include file="../allCss.jsp"%>
    <style>
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 10px; border: 1px solid #ccc; text-align: left; }
        th { background-color: #f9f9f9; }
    </style>
</head>
<body>
<%@include file="../../all_component/navbar.jsp" %>
    <h2>All Registered Users</h2>
    <table>
        <thead>
            <tr>
                <th>UserID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>City</th>
                <th>Country</th>
                <th>Status</th>
                <th>Role</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<User> userList = (List<User>) request.getAttribute("userList");
                if (userList != null && !userList.isEmpty()) {
                    for (User user : userList) {
            %>
                <tr>
                    <td><%= user.getUser_ID() %></td>
                    <td><%= user.getUser_name() %></td>
                    <td><%= user.getEmail() %></td>
                    <td><%= user.getPhone() %></td>
                    <td><%= user.getCity() %></td>
                    <td><%= user.getCountry() %></td>
                    <td><%= user.getStatus() %></td>
                    <td><%= user.getRole() %></td>
                </tr>
            <%
                    }
                } else {
            %>
                <tr><td colspan="8">No users found.</td></tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
<%@include file="../../all_component/footer.jsp"%>
</html>