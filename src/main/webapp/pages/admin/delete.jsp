<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Deleted</title>
    <%@ include file="../allCss.jsp" %>
</head>
<body>
    <%@ include file="../../all_component/navbar.jsp" %>

    <div class="container mt-5">
        <div class="alert alert-success text-center">
            <h4>Book deleted successfully!</h4>
            <a href="${pageContext.request.contextPath}/pages/admin/all_books.jsp" class="btn btn-primary mt-3">Go Back to Book List</a>
        </div>
    </div>
    <jsp:include page="../../all_component/footer.jsp" />
</body>
</html>
