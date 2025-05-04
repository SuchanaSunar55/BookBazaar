/*
 * package com.EBook.controller.servlet;
 * 
 * import java.io.IOException; import javax.servlet.*; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.*;
 * 
 * @WebServlet("/admin/login") public class AdminLoginServlet extends
 * HttpServlet { protected void doPost(HttpServletRequest request,
 * HttpServletResponse response) throws ServletException, IOException {
 * 
 * String email = request.getParameter("email"); String password =
 * request.getParameter("password");
 * 
 * // Check for hardcoded admin credentials if ("admin@gmail.com".equals(email)
 * && "admin".equals(password)) { HttpSession session = request.getSession();
 * session.setAttribute("adminName", "Admin"); // Set session attribute
 * response.sendRedirect("profile.jsp"); // Redirect to /admin/profile (or
 * configure accordingly) } else { request.setAttribute("errorMsg",
 * "Invalid credentials"); RequestDispatcher rd =
 * request.getRequestDispatcher("login.jsp"); rd.forward(request, response); } }
 * }
 */