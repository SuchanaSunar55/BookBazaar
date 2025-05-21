package com.EBook.controller.servlet;

import com.EBook.controller.dao.UserDAO;
import com.EBook.controller.dao.UserDAOImpl;
import com.EBook.controller.controller.database.DBConnect;
import com.EBook.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;

@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect(request.getContextPath() + "/pages/login.jsp");
            return;
        }

        User user = (User) session.getAttribute("user");
        int userId = user.getUser_ID();

        String oldPass = request.getParameter("oldPassword");
        String newPass = request.getParameter("newPassword");
        String confirmPass = request.getParameter("confirmPassword");

        if (!newPass.equals(confirmPass)) {
            response.sendRedirect(request.getContextPath() + "/pages/changePassword.jsp?msg=New+passwords+do+not+match");
            return;
        }

        try (Connection conn = DBConnect.getConn()) {
            UserDAO userDAO = new UserDAOImpl(conn);

            User userFromDB = userDAO.getUserById(userId);

            if (userFromDB == null || !userFromDB.getPassword().equals(oldPass)) {
                response.sendRedirect(request.getContextPath() + "/pages/changePassword.jsp?msg=Old+password+is+incorrect");
                return;
            }

            boolean updated = userDAO.updateUserPassword(userId, newPass);

            if (updated) {
                // update password in session
                user.setPassword(newPass);
                session.setAttribute("user", user);

                response.sendRedirect(request.getContextPath() + "/pages/changePassword.jsp?msg=Password+changed+successfully");
            } else {
                response.sendRedirect(request.getContextPath() + "/pages/changePassword.jsp?msg=Failed+to+change+password");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/pages/changePassword.jsp?msg=Something+went+wrong");
        }
    }
}
