package com.EBook.controller.servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.EBook.model.User;
import com.EBook.controller.controller.database.DBConnect;

@WebServlet("/admin/all_users")
public class AllUsersServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<User> userList = new ArrayList<>();

        try (Connection conn = DBConnect.getConn();
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM User");
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                User user = new User();
                user.setUser_ID(rs.getInt("User_ID"));
                user.setUser_name(rs.getString("User_name"));
                user.setEmail(rs.getString("Email"));
                user.setPhone(rs.getString("Phone"));
                user.setAddress(rs.getString("Address"));
                user.setCity(rs.getString("City"));
                user.setPostal_code(rs.getString("Postal_code"));
                user.setCountry(rs.getString("Country"));
                user.setStatus(rs.getString("Status"));
                user.setRole(rs.getString("role"));
                userList.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("userList", userList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/admin/all_users.jsp");
        dispatcher.forward(request, response);
    }
}
