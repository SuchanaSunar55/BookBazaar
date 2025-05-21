<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Home</title>
<%@include file="../allCss.jsp"%>

<style type="text/css">
    html, body {
        height: 100%;
        margin: 0;
    }

    .wrapper {
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    .content {
        flex: 1;
    }

    a {
        text-decoration: none;
        color: black;
    }

    a:hover {
        text-decoration: none;
        color: blue;
    }

    /* Responsive Card Text Sizing */
    .card-body i {
        font-size: 3rem;
    }

    .card-body h4 {
        font-size: 1.2rem;
    }

    /* Custom media query for small screens */
    @media (max-width: 768px) {
        .row.p-5 {
            padding: 1rem !important;
        }

        .card-body i {
            font-size: 2.5rem;
        }

        .card-body h4 {
            font-size: 1rem;
        }

        .col-md-3 {
            margin-bottom: 1rem;
        }
    }
</style>
</head>
<body style="background-color: #f3f3f3;">
    <div class="wrapper">
        <%@include file="../../all_component/navbar.jsp"%>

        <div class="container content">
            <div class="row p-5 justify-content-center">

                <div class="col-md-3 col-sm-6 col-12 mb-4">
                    <a href="add_books.jsp">
                        <div class="card h-100">
                            <div class="card-body text-center">
                                <i class="fa-solid fa-plus fa-4x text-primary"></i><br>
                                <h4>Add Books</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3 col-sm-6 col-12 mb-4">
                    <a href="<%=request.getContextPath() %>/admin/all-books">
                        <div class="card h-100">
                            <div class="card-body text-center">
                                <i class="fa-solid fa-book-open fa-4x text-success"></i><br>
                                <h4>All Books</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3 col-sm-6 col-12 mb-4">
                    <a href="orders.jsp">
                        <div class="card h-100">
                            <div class="card-body text-center">
                                <i class="fa-solid fa-box-open fa-4x text-warning"></i><br>
                                <h4>Orders</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3 col-sm-6 col-12 mb-4">
                    <a href="<%=request.getContextPath() %>/admin/all_users">
                        <div class="card h-100">
                            <div class="card-body text-center">
                                <i class="fa-solid fa-user fa-4x text-warning"></i><br>
                                <h4>All Users</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3 col-sm-6 col-12 mb-4">
                    <a href="../index.jsp">
                        <div class="card h-100">
                            <div class="card-body text-center">
                                <i class="fa-solid fa-arrow-right-from-bracket fa-4x text-danger"></i><br>
                                <h4>Logout</h4>
                            </div>
                        </div>
                    </a>
                </div>

            </div>
        </div>

        <%@include file="../../all_component/footer.jsp" %>
    </div>
</body>
</html>
