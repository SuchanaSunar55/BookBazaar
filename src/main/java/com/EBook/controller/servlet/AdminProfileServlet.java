package com.EBook.controller.servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/admin/profile")
public class AdminProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		/*
		 * // Check if there's an active session HttpSession session =
		 * request.getSession(false);
		 * 
		 * // If not logged in, redirect to login page if (session == null ||
		 * session.getAttribute("adminName") == null) { // Optional: save target URL to
		 * return after login response.sendRedirect(request.getContextPath() +
		 * "/pages/login.jsp?redirect=admin/profile"); return; }
		 */
        // User is logged in, forward to the profile JSP page
        request.getRequestDispatcher("/pages/admin/profile.jsp").forward(request, response);
    }
}
