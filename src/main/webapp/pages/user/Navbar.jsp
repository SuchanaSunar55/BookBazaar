<div class="container-fluid" style="height: 10px; background-color: #431D8A"></div>

<div class="container-fluid p-3 bg-light">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3><i class="fa-solid fa-book-open-reader"></i> E-Book</h3>
        </div>
        <div class="col-md-6">
            <form class="form-inline my-2 my-lg-0" action="${pageContext.request.contextPath}/user/search" method="get">
                <input class="form-control mr-sm-2" type="search" name="query" placeholder="Search" aria-label="Search">
                <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
        <div class="col-md-3 text-right">
            <a href="${pageContext.request.contextPath}/pages/login.jsp" class="btn btn-success">Login</a>
            <a href="${pageContext.request.contextPath}/pages/register.jsp" class="btn btn-primary ml-2">Register</a>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #431D8A">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/pages/index.jsp"><i class="fa-solid fa-house"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/pages/index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
        </ul>

        <div class="form-inline my-2 my-lg-0">
        
            <a href="${pageContext.request.contextPath}/cart" class="btn btn-warning mr-2">
                <i class="fa-solid fa-cart-shopping"></i> Cart
            </a>
            
            <a href="${pageContext.request.contextPath}/pages/user/profile.jsp" class="btn btn-light my-2 my-sm-0 mr-2">
                <i class="fa-solid fa-user"></i> My Profile
            </a>

            <a href="${pageContext.request.contextPath}/pages/settings.jsp" class="btn btn-light my-2 my-sm-0 mr-2">
                <i class="fa-solid fa-gear"></i> Setting
            </a>

            <a href="${pageContext.request.contextPath}/pages/aboutus.jsp" class="btn btn-light my-2 my-sm-0 mr-2">
                <i class="fa-solid fa-users"></i> About Us
            </a>

            <a href="${pageContext.request.contextPath}/pages/contactus.jsp" class="btn btn-light my-2 my-sm-0">
                <i class="fa-solid fa-envelope"></i> Contact Us
            </a>
        </div>
    </div>
</nav>
