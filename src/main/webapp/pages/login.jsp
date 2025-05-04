<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook: Login</title>
<%@ include file="../all_component/allCss.jsp"%>
</head>
<body style="background-color: #F0F6D5;">
	<%@ include file="../all_component/navbar.jsp"%>

	<div class="container">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="text-center mb-4">Login Form</h4>


						<!-- Error Message Display -->
						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>



						<!-- Login Form -->
						<form action="${pageContext.request.contextPath}/login" method="post">

							<div class="form-group mb-3">
								<label for="Email">Email address</label> <input type="email"
									class="form-control" id="Email" name="Email" required>
							</div>

							<div class="form-group mb-4">
								<label for="Password">Password</label> <input type="password"
									class="form-control" id="Password" name="Password" required>
							</div>

							<div class="d-grid">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>

							<div class="text-center mt-3">
								<a href="register.jsp">Create Account</a>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
