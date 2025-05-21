package com.EBook.controller.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.EBook.controller.dao.UserDAOImpl;
import com.EBook.controller.controller.database.DBConnect;
import com.EBook.model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
            HttpSession session = req.getSession();

            String email = req.getParameter("Email");
            String password = req.getParameter("Password");

            if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
                User admin = new User();
                admin.setUser_name("Admin"); // Optional: Set admin name
                session.setAttribute("userobj", admin);
                resp.sendRedirect(req.getContextPath() + "/pages/admin/home.jsp");

            } else {
                User user = dao.login(email, password);
                if (user != null) {
                    session.setAttribute("userobj", user);
                    resp.sendRedirect(req.getContextPath() + "/user/home");
                } else {
                    session.setAttribute("failedMsg", "Invalid Email or Password");
                    resp.sendRedirect(req.getContextPath() + "/pages/login.jsp");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect(req.getContextPath() + "/pages/error.jsp");
        }
    }
}
