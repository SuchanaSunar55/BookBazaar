<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*"%>
<%--  <%
String adminName = (String) session.getAttribute("adminName");
if (adminName == null) {
	response.sendRedirect("../../login.jsp");
	return;
}
%> --%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Profile</title>
</head>
<%@include file="../allCss.jsp"%>
   <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
        }
 /*        .navbar {
            background-color: #333;
            padding: 15px;
            color: white;
            text-align: right;
        } */
        .navbar a {
            color: white;
            margin-left: 20px;
            text-decoration: none;
        }
        .profile-container {
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            box-shadow: 0px 0px 10px #ccc;
            border-radius: 10px;
        }
        h2 {
            color: #333;
            text-align: center;
        }
        .info {
            margin-top: 20px;
        }
        .info p {
            font-size: 18px;
            margin: 10px 0;
        }
    </style>
</head>
<body>
<%@include file="../../all_component/navbar.jsp"%>
<div class="wel text-center"><h1>Welcome!</h1>
</div>
<div class="profile-container">
    <h2>Admin Profile</h2>
    <div class="info">
        <p><strong>Name:</strong>  Admin</p>
        <p><strong>Email:</strong> admin@gmail.com</p>
        <p><strong>Role:</strong> ADMIN</p>
        <!-- Add more admin-specific details if needed -->
    </div>
</div>

</body>
</html>
