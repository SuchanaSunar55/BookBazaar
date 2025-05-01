<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook:Index</title>
<%@include file="../all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/b.jpg");
	height: 50vh;
	weight: full;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover{
background-color:#D9E78F;
}

</style>
</head>
<body style="background-color:#F9F9DE">
	<%@include file="../all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-white">
			<i class="fa-solid fa-book-open-reader"></i> Welcome to E-Book
			Management System
		</h2>
	</div>
	
	<%@ page import="java.sql.Connection" %>
<%@ page import="com.EBook.controller.controller.database.DBConnect" %>
	
	<% Connection conn=DBConnect.getConn(); 
	out.println(conn);%>
	
<!-- Literature books starts -->
	<div class="container" >
		<h3 class="text-center">Literature</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/whitenight.png"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>White Night</p>
						<p>Fyodor Dostoevsky</p>
						<p>Categories:Literature</p>
						<div class="row">
						<a href="" class="btn btn-danger btn-sm "><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm">999<i class="fa-solid fa-dollar-sign"></i></a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/bb.jpg"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>Pride and Prejudice</p>
						<p>Jane Austen</p>
						<p>Categories:Literature</p>
						<div class="row">
						<a href="" class="btn btn-danger btn-sm "><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ">999</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/metamorphosis.jpg"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>Metamorphosis</p>
						<p>Franz Kafka</p>
						<p>Categories:Literature</p>
						<div class="row">
						<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ">999</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/tokillamockingbird.jpg"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>To Kill A Mockingbird</p>
						<p>Harper Lee</p>
						<p>Categories:Literature</p>
						<div class="row">
						<a href="" class="btn btn-danger btn-sm "><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm">999</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="text-center mt-2">
		<a href="" class="btn btn-danger btn-sm">View All</a>
		</div>
	</div>
<!-- Literature Books ends -->
<hr>
<!-- Academics Starts -->
		<div class="container" >
		<h3 class="text-center">Academics</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/biology.jpg"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>Biology</p>
						<p>Arvind K.Keshari </p>
						<p>Khaga Raj Ghimire</p>
						<p>Categories:Academics</p>
						<div class="row">
						<a href="" class="btn btn-danger btn-sm "><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ">999</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/physics.jpg"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>Physics</p>
						<p>Rajendra Pd Koirala</p>
						<p>Prajjwal Khanal</p>
						<p>Categories:Academics</p>
						<div class="row">
						<a href="" class="btn btn-danger btn-sm "><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm">999</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/speaking-js.jpg"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>Speaking JS</p>
						<p>Dr.Axel Rauschmayer</p>
						<p>Categories:Academics</p>
						<div class="row">
						<a href="" class="btn btn-danger btn-sm "><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ">999</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/python.png"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>Python</p>
						<p>Micha Gorelick</p>
						<p>Ian Ozsvald</p>
						<p>Categories:Academics</p>
						<div class="row">
						<a href="" class="btn btn-danger btn-sm "><i class="fa-solid fa-cart-plus"></i>Add to Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ">999</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="text-center mt-2">
		<a href="" class="btn btn-danger btn-sm">View All</a>
		</div>
	</div>
<!--Academics ends  -->
<hr>
<!--History starts  -->	
		<div class="container" >
		<h3 class="text-center">History</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ancientworld.jpg"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>Ancient World</p>
						<p>Susan Wise Bauer</p>
						<p>Categories:History</p>
						<div class="row">
						
						<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">999</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/worldhistory.jpg"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>World History</p>
						<p>USBORNE</p>
						<p>Categories:History</p>
						<div class="row">
						
						<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">999</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/nepalhistory.jpg"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>History Of Nepal</p>
						<p>Daniel Wright</p>
						<p>Categories:History</p>
						<div class="row">
						
						<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">999</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/PrithiviNS.jpg"
							style="width: 150px; height: 200px" class="img.thumblin">
						<p>Prithivi Narayan Shah</p>
						<p> Shree Prasad Upadhdya Ghimire</p>
						<p>Categories:History</p>
						<div class="row">
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-1">999</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="text-center mt-2">
		<a href="" class="btn btn-danger btn-sm">View All</a>
		</div>
	</div>
<!--Old Books ends  -->	
	<%@include file="../all_component/footer.jsp" %>
</body>
</html>