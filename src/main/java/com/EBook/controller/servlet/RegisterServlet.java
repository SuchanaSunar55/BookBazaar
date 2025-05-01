package com.EBook.controller.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.EBook.controller.dao.UserDAOImpl;
import com.EBook.controller.controller.database.DBConnect;
import com.EBook.model.User;
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String User_name = req.getParameter("User_name");
            String Email = req.getParameter("Email");
            String Phone = req.getParameter("Phone");
            String Password = req.getParameter("Password");
            String check = req.getParameter("check");

            // Create a new User object
            User us = new User();
            us.setUser_name(User_name);
            us.setEmail(Email);
            us.setPhone(Phone);
            us.setPassword(Password);

            HttpSession session = req.getSession();

            // Check if the user has agreed to terms and conditions
            if (check != null) {
                UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
                boolean f = dao.userRegister(us);

                if (f) {
                    session.setAttribute("SuccessMessage", "User registered successfully");
                    resp.sendRedirect("/EBook/pages/login.jsp"); // Redirect to login page after successful registration
                } else {
                    session.setAttribute("FailedMessage", "Something went wrong on the server");
                    resp.sendRedirect("/EBook/pages/register.jsp");
                }
            } else {
                session.setAttribute("FailedMessage", "Please check terms and conditions");
                resp.sendRedirect("/EBook/pages/register.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace(); // Log error
            HttpSession session = req.getSession();
            session.setAttribute("FailedMessage", "An error occurred during registration, please try again later.");
            resp.sendRedirect("/EBook/pages/register.jsp");
        }
    }
}
