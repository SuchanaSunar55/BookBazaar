package com.EBook.controller.servlet;

import com.EBook.controller.controller.database.DBConnect;
import com.EBook.controller.dao.UserDAOImpl;
import com.EBook.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/user/profile")
public class UserProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        User user = (User) session.getAttribute("userobj"); // Make sure this matches login attribute

        if (user != null) {
            try {
                UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
                User fullUser = dao.getUserById(user.getUser_ID());
                request.setAttribute("profile", fullUser);
                request.getRequestDispatcher("/pages/user/profile.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect(request.getContextPath() + "/pages/login.jsp");
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/pages/login.jsp");
        }
    }
}
