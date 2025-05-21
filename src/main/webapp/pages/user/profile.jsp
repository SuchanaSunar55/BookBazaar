<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../../all_component/allCss.jsp" %>
<%@ include file="../../all_component/navbar.jsp" %>

<html>
<head>
    <title>Your Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Pcss/profile.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Your Profile</h2>
        <c:choose>
            <c:when test="${not empty profile}">
                <table class="table table-bordered">
                    <tr><th>Name</th><td>${profile.user_name}</td></tr>
                    <tr><th>Email</th><td>${profile.email}</td></tr>
                    <tr><th>Phone</th><td>${profile.phone}</td></tr>
                    <tr><th>Address</th><td>${profile.address}</td></tr>
                    <tr><th>City</th><td>${profile.city}</td></tr>
                    <tr><th>Postal Code</th><td>${profile.postal_code}</td></tr>
                    <tr><th>Country</th><td>${profile.country}</td></tr>
                    <tr><th>Date of Birth</th><td>${profile.date_of_birth}</td></tr>
                    <tr><th>Registration Date</th><td>${profile.registration_date}</td></tr>
                    <tr><th>Status</th><td>${profile.status}</td></tr>
                    <tr><th>Role</th><td>${profile.role}</td></tr>
                </table>
            </c:when>
            <c:otherwise>
                <p class="text-danger">Profile not found. <a href="${pageContext.request.contextPath}/pages/login.jsp">Login again</a>.</p>
            </c:otherwise>
        </c:choose>
    </div>
    <%@ include file="../../all_component/footer.jsp" %>
</body>
</html>
