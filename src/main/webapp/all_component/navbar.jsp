<div class="container-fluid"
	style="height: 10px; background-color: #004d40"></div>

<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3>
				<i class="fa-solid fa-book-open-reader"></i>E-Book
			</h3>
		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
		<div class="col-md-3">
			<a href="${pageContext.request.contextPath}/pages/login.jsp"
				class="btn btn-success">Login</a> <a
				href="${pageContext.request.contextPath}/pages/register.jsp"
				class="btn btn-primary">Register</a>

		</div>

	</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom"
	style="background-color: #645EF6">
	<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="/EBook/pages/index.jsp">Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item" active><a class="nav-link" href="#"><i
					class="fa-solid fa-book"></i>Academics</a></li>
			<li class="nav-item" active><a class="nav-link" href="#"><i
					class="fa-solid fa-book"></i>Literature</a></li>
			<li class="nav-item" active><a class="nav-link disabled"
				href="#"><i class="fa-solid fa-book"></i>History</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">

			<button class="btn btn-light my-2 my-sm-0 " type="submit">
				<i class="fa-solid fa-gear"></i>Setting
			</button>
			<button class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fa-solid fa-phone"></i>Contact Us
			</button>
		</form>
	</div>
</nav>