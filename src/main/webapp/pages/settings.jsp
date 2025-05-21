<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="allCss.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Settings</title>
<style>
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
</style>
</head>
<body style="background-color: #f3f3f3;">
	<div class="wrapper">
		<%@include file="/all_component/navbar.jsp" %>

		<div class="content">
			<div class="container mt-5 pb-5">
				<h3 class="text-center">Account Settings</h3>
				<div class="row justify-content-center mt-4">
					<div class="col-md-6">
						<div class="list-group">
							<a href="updateProfile.jsp" class="list-group-item list-group-item-action">
								<i class="fa-solid fa-user"></i> Update Profile
							</a>
							<a href="changePassword.jsp" class="list-group-item list-group-item-action">
								<i class="fa-solid fa-lock"></i> Change Password
							</a>
							<a href="manageAddress.jsp" class="list-group-item list-group-item-action">
								<i class="fa-solid fa-location-dot"></i> Manage Address
							</a>
							<a href="deleteAccount.jsp" class="list-group-item list-group-item-action text-danger">
								<i class="fa-solid fa-trash"></i> Delete Account
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<%@include file="/all_component/footer.jsp" %>
	</div>
</body>
</html>
