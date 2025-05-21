<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/all_component/allCss.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
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
		<%@include file="/all_component/navbar.jsp"%>

		<div class="content">
			<div class="container mt-5 pb-5">
				<h3 class="text-center mb-4">Change Your Password</h3>
				<div class="row justify-content-center">
					<div class="col-md-6">

						<%-- Display message if present --%>
						<%
						String msg = request.getParameter("msg");
						if (msg != null) {
						%>
						<div class="alert alert-info text-center"><%=msg%></div>
						<%
						}
						%>

						<form
							action="<%=request.getContextPath()%>/ChangePasswordServlet"
							method="post">
							<div class="form-group">
								<label for="oldPassword">Old Password</label> <input
									type="password" id="oldPassword" name="oldPassword"
									class="form-control" required>
							</div>
							<div class="form-group mt-3">
								<label for="newPassword">New Password</label> <input
									type="password" id="newPassword" name="newPassword"
									class="form-control" required>
							</div>
							<div class="form-group mt-3">
								<label for="confirmPassword">Confirm New Password</label> <input
									type="password" id="confirmPassword" name="confirmPassword"
									class="form-control" required>
							</div>
							<button type="submit" class="btn btn-primary mt-4 w-100">Change
								Password</button>
						</form>


					</div>
				</div>
			</div>
		</div>

		<%@include file="/all_component/footer.jsp"%>
	</div>

</body>
</html>
