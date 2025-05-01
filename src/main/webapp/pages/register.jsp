<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook Register</title>
<%@ include file="../all_component/allCss.jsp"%>
</head>
<body style="background-color: #F0F6D5">
	<%@ include file="../all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Registration Form</h4>
						
						<!-- Error Message -->
						<c:if test="${not empty SuccessMessage}">
						<p class="text-center text-success">${SuccessMessage }</p>
						<c:remove var="SuccessMessage" scope="session"/>
						</c:if>
						
						<c:if test="${not empty FailedMessage}">
						<p class="text-center text-danger">${FailedMessage }</p>
						<c:remove var="FailedMessage"  scope="session"/>
						</c:if>
						
						<!-- Register Form -->
						<form action="/EBook/register" method="post">  <!--linking to register servlet -->
							<div class="form-group">
								<label>Enter Full Name</label> <input type="text"
									class="form-control" required name="User_name">
							</div>
							<div class="form-group">
								<label>Email address</label> <input type="email"
									class="form-control" required name="Email">
							</div>
							<div class="form-group">
								<label>Phone Number</label> <input type="text"
									class="form-control" required name="Phone">
							</div>
							<div class="form-group">
								<label>Password</label> <input type="password"
									class="form-control" required name="Password">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check">
								<label class="form-check-label">I agree to terms &
									conditions</label>
							</div>
							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary">Register</button>
							</div>
						</form>

						<!-- Show error/success if any -->
						<%
						String message = (String) request.getAttribute("msg");
						if (message != null) {
						%>
						<p class="text-danger text-center mt-2"><%=message%></p>
						<%
						}
						%>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
