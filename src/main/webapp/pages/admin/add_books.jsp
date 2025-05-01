<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add Books</title>
<%@include file="../allCss.jsp"%>
</head>
<body style="background-color:#F0F6D5;">

	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Books</h4>
						<form action="../AdminAddBookServlet" method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="title">Title*</label> <input type="text"
									name="Title" class="form-control" id="bookName"
									aria-describedby="bookNameHelp">
							</div>

							<div class="form-group">
								<label for="author">Author*</label> <input type="text"
									name="Author" class="form-control" id="author"
									aria-describedby="authorHelp">
							</div>

							<div class="form-group">
								<label for="price">Price*</label> <input type="number"
									name="price" class="form-control" id="price">
							</div>

							<div class="form-group">
								<label for="bookType">Book Categories</label> <select
									id="bookType" name="Category" class="form-control">
									<option selected disabled>--select--</option>
									<option value="literature">Literature</option>
									<option value="academics">Academics</option>
									<option value="history">History</option>
								</select>
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>


					<div class="addbutton  text-center"><button type="submit" class="btn btn-primary">Add Book</button></div>		
						</form>

					</div>
				</div>
			</div>
		</div>
		<%@include file="footer.jsp" %>>
</body>
</html>