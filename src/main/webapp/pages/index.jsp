<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BookBazaar | Home</title>
<%@include file="../all_component/allCss.jsp"%>
<style>
body {
	background-color: #f3f3f3;
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

.intro-box {
	background-color: white;
	border-radius: 12px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	padding: 30px;
	text-align: center;
	margin-top: 40px;
}

.intro-box h2 {
	font-weight: bold;
}

.intro-box p {
	font-size: 1.1rem;
	color: #555;
}

.content {
	flex: 1;
}
</style>
</head>
<body>
	<%@include file="../all_component/navbar.jsp"%>

	<div class="content">
		<div class="container">
			<div class="intro-box">
				<h2>
					<i class="fa-solid fa-book-open-reader"></i> Welcome to BookBazaar
				</h2>
				<p>At BookBazaar, we believe books are more than just stories —
					they're gateways to knowledge, imagination, and growth. Browse our
					wide range of titles, find your next favorite read, and enjoy a
					seamless shopping experience.</p>
				<p>Start exploring our collections today!</p>
				<div class="card h-100 shadow-sm rounded">
					<p>Please Login OR Register to Start!!</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container mt-5">
		<h3 class="text-center mb-4">Why Choose BookBazaar?</h3>
		<div class="row text-center">
			<div class="col-md-4 mb-4">
				<i class="fa-solid fa-book fa-2x mb-2"></i>
				<h5>Vast Collection</h5>
				<p>Explore a wide range of titles from fiction to self-help and
					everything in between.</p>
			</div>
			<div class="col-md-4 mb-4">
				<i class="fa-solid fa-truck-fast fa-2x mb-2"></i>
				<h5>Fast Delivery</h5>
				<p>Quick and safe delivery to your doorstep with real-time order
					tracking.</p>
			</div>
			<div class="col-md-4 mb-4">
				<i class="fa-solid fa-star fa-2x mb-2"></i>
				<h5>Trusted by Readers</h5>
				<p>Join thousands of satisfied readers who trust BookBazaar for
					their reading needs.</p>
			</div>
		</div>
	</div>

	<%@include file="../all_component/footer.jsp"%>
</body>
</html>
